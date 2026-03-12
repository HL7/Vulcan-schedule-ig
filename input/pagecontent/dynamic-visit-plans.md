#### Dynamic Visit Schedules



##### Multiple Designs Per Protocol

Within the current implementation, it is possible to accommodate one or more schedules through use of the multiple entries in the `ResearchStudy.protocol` attribute based on the  `ResearchStudy` resource

An illustration is shown here:

```
Instance: SampleMultiDesignStudy
InstanceOf: ResearchStudy
Usage: #example
* title = "Sample Multi Design Study"
* protocol[+] = Reference(PlanDefinition/StudyDesignA)
* protocol[+] = Reference(PlanDefinition/StudyDesignB)

Instance: StudyDesignA
InstanceOf: StudyProtocolSoa
Usage: #example
* status = #active
* title = "Study Design A"

Instance: StudyDesignB
InstanceOf: StudyProtocolSoa
Usage: #example
* status = #active
* title = "Study Design B"

```
Alternatively, a single study plan with conditional elements to represent all the points at which a multi-design protocol changes can be used.  The designer will need to determine whether there needs to be separate protocol plan element, or whether a multi-design study should just be included within a single plan and use dynamic features to switch on and off parts of the study designs. 

For an example of a [master protocol](https://www.sciencedirect.com/science/article/pii/S2451865420300521), the existing `ResearchStudy.partOf` predicate can be used for the sub-studies as part of master protocol, this allows for differentiation of eligibility criteria, lifecycle, etc.

##### Transitions

The modality of transitions are needed to represent a prospective plan for a ResearchSubject participating in a Clinical Trial; it supports planning and decision making. Generally, patients follow a protocol proscribed path through encounters and activities. We have previously described how activities within an encounter can be orchestrated; but this document is intended to summarise approaches for intra-encounter activities.

The designs should incorporate these directives in such a way that an application could interpret them to make decisions about the transitions; and thereby create the required resources (eg Encounter, Appointment, ServiceRequest). The challenge we have is that in CTMS systems, that are built around common conceptual understandings of how clinical trials work, the functions to drive these transitions are out of the box, whereas finding a common representation using FHIR resources may be challenging.

We have chosen to use the extensions proposed by [Richardson A, Genyn P
Clinical Trial Schedule of Activities Specification Using Fast Healthcare Interoperability Resources Definitional Resources: Mixed Methods Study JMIR Med Inform 2025;13:e71430](https://medinform.jmir.org/2025/1/e71430/PDF) - henceforth referred to as MMS. The authors have kindly agreed for their work to be utilised as part of the IG, with the qualification that full recognition for the work shall remain theirs alone.

If we take a simple example; the progression of a patient in a study design - the following example provides an illustration

<img src="dynamic-visit-schedule-simple-example.png" alt="Dynamic Schedules - Simple Example" width="800px" style="float:none; margin: 0px 0px 0px 0px;" />

The following table represents a schedule of activities for this simple progression example:

|                        | **Visit N** | **Visit N+1** | **Early Termination** |
| ---------------------- | :---------: | :-----------: | :-------------------: |
| **Study Day**          |      0      |      48       |       Variable        |
| **Window**             |     ±3d     |      ±3d      |       As needed       |
| **Activities**         |             |               |                       |
| Informed Consent       |      ✓      |               |                       |
| Physical Exam          |      ✓      |       ✓       |           ✓           |
| Vital Signs            |      ✓      |       ✓       |           ✓           |
| Laboratory Tests       |      ✓      |       ✓       |           ✓           |
| Study Drug Admin       |      ✓      |               |                       |
| Adverse Events         |      ✓      |       ✓       |           ✓           |
| Concomitant Meds       |      ✓      |       ✓       |           ✓           |
| Discontinuation Reason |             |               |           ✓           |

This simple design illustrates:

- **Visit N**: Example: Baseline visit with treatment initiation
- **Visit N+1**: Follow-up visit 48 days later
- **Early Termination**: Can occur at any time if patient discontinues

Here is a representation of this simple structure using the implementation details based on MMS:

```fsh
Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type

Instance: dynamic-visit-schedule-simple-example
InstanceOf: PlanDefinition
Usage: #example
* meta.versionId = "0"
* meta.lastUpdated = "2025-11-09T15:13:31Z"
* identifier.system = "http://www.fhir4pharma.com/plandefinition"
* identifier.value = "5c2a9671-1d0d-4b02-8f09-0e30d77411b2"
* version = "V00"
* name = "dynamic-visit-schedule-simple-example"
* title = "dynamic-visit-schedule-simple-example"
* type = $plan-definition-type#clinical-protocol
* status = #active
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* description = "dynamic-visit-schedule-simple-example"
* action[0]
  * id = "ac4d0cb9-f2bd-49c1-8b28-42d5cd04b4fb"
  * title = "Visit N"
  * description = "Visit N"
  * definitionCanonical = "http://example.org/Encounter/Visit-N"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * extension.extension[0]
    * url = "soaTimePointType"
    * valueString = "Interaction"
  * extension.extension[+]
    * url = "soaPlannedTimePoint"
    * valueQuantity = 0 'd'
  * extension.extension[+]
    * url = "soaPlannedRange"
    * valueRange.low = 0 'd'
    * valueRange.high = 0 'd'
  * extension.extension[+]
    * url = "soaReferenceTimePoint"
    * valueString = "Visit N"
  * extension.extension[+]
    * url = "soaRangeFromTimePoint"
    * valueString = "Visit N"
  * extension.extension[+]
    * url = "soaPlannedDuration"
    * valueDuration = 24 'h'
  * extension.extension[+]
    * url = "soaRepeatAllowed"
    * valueBoolean = false
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action[+]
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[+]
        * url = "soaTargetId"
        * valueString = "c25995f4-be76-47fa-ae90-a46100f8cfb3" // Visit N+1
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 48 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 3 'd'
          * high = 3 'd'
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'toNormalProgression':true}"
  * action[+]
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[+]
        * url = "soaTargetId"
        * valueString = "349447c3-8ad4-4034-8c31-c3d96dcc5f9a" // Visit Early Termination
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 24 'h'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 'd'
          * high = 47 'd'
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'toEarlyTermination':true}"
* action[+]
  * id = "c25995f4-be76-47fa-ae90-a46100f8cfb3"
  * title = "Visit N+1"
  * description = "Visit N+1"
  * definitionCanonical = "http://example.org/Encounter/Visit-N+1"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 48 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 3 'd'
        * high = 3 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Visit N"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Visit N"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
* action[+]
  * id = "349447c3-8ad4-4034-8c31-c3d96dcc5f9a"
  * title = "Early Termination"
  * description = "Early Termination"
  * definitionCanonical = "http://example.org/Encounter/Early-Termination"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 24 'h'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 48 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Visit N"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Visit N"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
```
The extension `http://fhir4pharma.com/StructureDefinition/soaTransition` is key to defining the paths forward; 
1. each `PlanDefinition.action` is assigned a unique identifier using `id` (this should be a UUID/GUID so as to ensure internal referential integrity)
2. the `PlanDefinition.action` has a child `action` for each of the possible outcomes;
  1. the `targetId` represents the identifier of the target action
  2. the `soaTransitionType` value represents the type of transition (eg Start to Start = SS)
  3. the `soaRepeatAllowed` value defines whether it is possible to revisit this target    
  4. the `soaPlannedDuration` value specifies the duration at which this transition is expected to occur
3. The `condition` attribute on the `PlanDefinition.action.action` is used to specify the 'logic' controlling the transition, and it follows the existing semantics of the `action.condition`.  

In order to ensure that the transitions can be evaluable, for each action the evaluation of the `condition` should be a boolean, where true the transition should be allowed.  Any action without a condition is the default transition, and should be presented if no other actions are applicable.  A terminal activity will have no transitions available given all the conditions available.

The `condition` can be implemented using any of current languages (eg CQL, FHIRPath), but should also support feedback or input by a site coordinator.  An example of where `condition` can be inferred from the healthcare system include a reference to the Subject milestones (eg`ResearchSubject.status` or `ResearchSubject.subjectState`/`ResearchSubject.subjectMilestone`), as discussed in [dynamics](dynamics.html) - eg performing a particular activity is conditional on a patient having completed informed consent, perhaps for an experimental arm.

The execution of the plan needs to be able to be adapted to describe what transitions could occur and describe any conditions under which the transitions might occur; examples of the types of transitions that could need to be represented:
- Patient populations in different cohorts undergo different activities based on their cohort
- Normal per protocol transition from treatment encounter to encounter.
- Patient discontinuing study based on outcomes
- Patient lost to follow-up
- If the patient is a participant in an oncology study and the intervention is not showing therapeutic benefit (eg as ascertained by a Disease Response Assessment/RECIST) then the patient should transition to End of Treatment and Follow-up
- Sponsors may choose to close a study based on pre-defined characteristics detailed in the protocol (eg Six months after the last patient in)

So, what needs to be defined for a given encounter forward in patient progression based on what activities are planned to occur next based on the protocol; some are common such as the Early Termination path; based on outcomes from the study (eg Serious Adverse Event, Lost to Follow-up), others can be be more complicated.

##### Use Case 1 - Simple Linear design with Early Termination

The following table represents the Schedule of Activities for a simple path example:

|                        | **Screening** | **Treatment** |           |            | **End of Study** | **Follow-up** |
| ---------------------- | :-----------: | :-----------: | :-------: | :--------: | :--------------: | :-----------: |
| **Visit**              |  **Screen**   |   **Day 1**   | **Day 7** | **Day 15** |     **EOS**      |    **FU**     |
| **Study Day**          |   -14 to -1   |       1       |     7     |     15     |        21        |      +30      |
| **Window**             |               |               |    ±1d    |    ±2d     |       ±1d        |      ±7d      |
| **Activities**         |               |               |           |            |                  |               |
| Informed Consent       |       ✓       |               |           |            |                  |               |
| Eligibility Assessment |       ✓       |               |           |            |                  |               |
| Demographics           |       ✓       |               |           |            |                  |               |
| Medical History        |       ✓       |               |           |            |                  |               |
| Physical Exam          |       ✓       |       ✓       |     ✓     |     ✓      |        ✓         |       ✓       |
| Vital Signs            |       ✓       |       ✓       |     ✓     |     ✓      |        ✓         |       ✓       |
| **Laboratory Tests**   |               |               |           |            |                  |               |
| Hematology             |       ✓       |       ✓       |     ✓     |     ✓      |        ✓         |               |
| Chemistry Panel        |       ✓       |       ✓       |     ✓     |     ✓      |        ✓         |               |
| **Treatment**          |               |               |           |            |                  |               |
| Study Drug Admin       |               |       ✓       |           |            |                  |               |
| **Assessments**        |               |               |           |            |                  |               |
| Adverse Events         |       ✓       |       ✓       |     ✓     |     ✓      |        ✓         |       ✓       |
| Concomitant Meds       |       ✓       |       ✓       |     ✓     |     ✓      |        ✓         |       ✓       |
| Discontinuation Reason |               |               |           |            |        ✓         |               |
| Follow-up Assessment   |               |               |           |            |                  |       ✓       |

This design illustrates:

- **Sequential Treatment Visits**: Regular monitoring on Days 1, 7, and 15 post-treatment
- **Multiple Exit Points**: Patient can discontinue from any treatment visit to End of Study
- **Follow-up**: Structured follow-up after study completion
- **Early Termination Paths**: Flexibility to exit treatment phase at multiple timepoints

This can be visualised as shown here:

<img src="dynamic-visit-schedule-exit-example.png" alt="Dynamic Schedules - Linear Design" width="800px" style="float:none; margin: 0px 0px 0px 0px;" />

In each encounter there are two possible outcomes: 
* normal progression along the protocol defined path, or 
* following an early termination.  
These decisions can be automated (ie detection of the presence of SAE or patient withdrawal) or prompted and selected by the user.

Using the extensions as defined, the representation of the study plan can be seen [here](PlanDefinition-dynamic-visit-schedule-exit-example-PlanDefinition.html)


##### Use Case 2 - Branched multi-path study design

In this scenario, there is a design where the patients are randomised to one of two Arms; this example presents an asymmetric setup where the number of encounters differs for the two arms.

The following table represents the schedule of activities for this two-arm study design:

|                          | **Screening** | **Randomization** | **Treatment** |                       |           |            | **End of Study** |
| ------------------------ | :-----------: | :---------------: | :-----------: | :-------------------: | :-------: | :--------: | :--------------: |
| **Visit**                |  **Screen**   |   **Baseline**    |   **Day 1**   | **Day 2**<sup>1</sup> | **Day 7** | **Day 15** |     **EOS**      |
| **Study Day**            |   -14 to -1   |         0         |       1       |           2           |     7     |     15     |        21        |
| **Window**               |               |                   |      ±1d      |          ±1d          |    ±1d    |    ±2d     |       ±3d        |
| **Activities**           |               |                   |               |                       |           |            |                  |
| Informed Consent         |       ✓       |                   |               |                       |           |            |                  |
| Eligibility Assessment   |       ✓       |                   |               |                       |           |            |                  |
| Demographics             |       ✓       |                   |               |                       |           |            |                  |
| Medical History          |       ✓       |                   |               |                       |           |            |                  |
| Randomization            |               |         ✓         |               |                       |           |            |                  |
| Physical Exam            |       ✓       |         ✓         |       ✓       |     ✓<sup>1</sup>     |     ✓     |     ✓      |        ✓         |
| Vital Signs              |       ✓       |         ✓         |       ✓       |     ✓<sup>1</sup>     |     ✓     |     ✓      |        ✓         |
| **Laboratory Tests**     |               |                   |               |                       |           |            |                  |
| Hematology               |       ✓       |         ✓         |       ✓       |     ✓<sup>1</sup>     |     ✓     |     ✓      |        ✓         |
| Chemistry Panel          |       ✓       |         ✓         |       ✓       |     ✓<sup>1</sup>     |     ✓     |     ✓      |        ✓         |
| **Treatment**            |               |                   |               |                       |           |            |                  |
| Drug A Admin<sup>2</sup> |               |                   |       ✓       |           ✓           |           |            |                  |
| Drug B Admin<sup>3</sup> |               |                   |       ✓       |                       |           |            |                  |
| **Assessments**          |               |                   |               |                       |           |            |                  |
| Adverse Events           |       ✓       |         ✓         |       ✓       |     ✓<sup>1</sup>     |     ✓     |     ✓      |        ✓         |
| Concomitant Meds         |       ✓       |         ✓         |       ✓       |     ✓<sup>1</sup>     |     ✓     |     ✓      |        ✓         |
| Study Completion         |               |                   |               |                       |           |            |        ✓         |

<sup>1</sup> Arm A only  
<sup>2</sup> Arm A only - administered on Days 1 and 2  
<sup>3</sup> Arm B only - administered on Day 1 only

This two-arm design illustrates:

- **Common Pre-treatment**: Screening and randomization procedures are identical for both arms
- **Arm A**: More intensive monitoring with an additional Day 2 visit and Drug A administered on Days 1 and 2
- **Arm B**: Standard monitoring with visits on Days 1, 7, and 15, and Drug B administered on Day 1 only
- **Differential Visit Schedules**: Arm A has 4 treatment visits while Arm B has 3 treatment visits
- **Common Endpoint**: Both arms converge at End of Study on Day 21

This provides a visual representation of the encounters/transitions involved in the study design.

<img src="dynamic-visit-schedule-multiple-paths-example.png" alt="Dynamic Schedules - Multiple Paths" width="800px" style="float:none; margin: 0px 0px 0px 0px;" />


Note; the decision made for randomization should only need to be done once; once a patient is following the path for the assigned arm, the decision support system should preclude the other path (while retaining the common exit paths).  The design should support 'common' planned encounters that can be used both before and after randomization.  The nature of the FHIR resources and relationships between them should be able to be used to be most efficient.

The representation of this is shown [here](PlanDefinition-dynamic-visit-schedule-multiple-paths.html)

##### Use Case 3 - Treatment Cycles

One of the more complex scenarios we need to deal with are [treatment cycles](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/treatment-cycle); these are repeatable episodic sets of encounters, usually in oncology studies. The structure of cycles may change over the progression of the studies; different encounters or activities occur based on the protocol. The status of the patient is evaluated at the end of each cycle, usually against a standard criteria like RECIST. The progression of the disease is the key determinant to whether the patient will continue to stay in the study (alongside all other safety measures discussed).

Some examples of Oncology Cycles:

- 3-Week Cycle (e.g., 1-5-9 Schedule)
  - Treatment Period: A patient receives chemotherapy on days 1, 5, and 9.
  - Rest Period: Days 10 through 21 are a rest period.
  - Cycle Length: The entire period, from the start of treatment to the beginning of the next, lasts 21 days.
- 28-Day Cycle (e.g., Lonsurf®)
  - Treatment Period: The drug Trifluridine-tipiracil hydrochloride is taken as a tablet twice a day.
  - Rest Period: A 28-day period encompasses the full cycle of treatment.
- Weekly Treatment with a Rest Period
  - Treatment Period: A single dose of chemotherapy might be given once a week.
  - Rest Period: The remaining days of the week, or several weeks, are spent in rest.
  - Example: A week of daily chemotherapy followed by three weeks of no treatment constitutes one 4-week cycle.

The following illustrates an example oncology study design with repeating treatment cycles that have different visit patterns for even and odd cycles. The diagram shows cycles as distinct entities with clear transitions between cycles and within cycles:

|                         | **Screening** |          | **Cycle N (Odd)** |         |         | **Cycle N+1 (Even)** |        |         |         |         | **...** | **End of Treatment** | **Follow-up** |         |
| ----------------------- | :-----------: | :------: | :---------------: | :-----: | :-----: | :------------------: | :----: | :-----: | :-----: | :-----: | :-----: | :------------------: | :-----------: | :-----: |
| **Visit**               |  **Screen**   | **Rand** |      **D1**       | **D14** | **D28** |        **D1**        | **D7** | **D14** | **D21** | **D28** | **...** |       **EOT**        |    **FU1**    | **FU2** |
| **Study Day**           |   -28 to -1   |    0     |         1         |   14    |   28    |          29          |   35   |   42    |   49    |   56    |   ...   |         +30          |      +90      |  +180   |
| **Window**              |               |          |        ±2d        |   ±2d   |   ±2d   |         ±2d          |  ±2d   |   ±2d   |   ±2d   |   ±2d   |   ±2d   |         ±7d          |     ±14d      |  ±14d   |
| **Activities**          |               |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| Informed Consent        |       ✓       |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| Demographics            |       ✓       |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| Medical History         |       ✓       |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| Physical Exam           |       ✓       |    ✓     |         ✓         |    ✓    |    ✓    |          ✓           |        |    ✓    |    ✓    |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| Vital Signs<sup>1</sup> |       ✓       |    ✓     |         ✓         |    ✓    |    ✓    |          ✓           |   ✓    |    ✓    |    ✓    |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| Height/Weight           |       ✓       |          |                   |         |    ✓    |                      |        |         |         |    ✓    |    ✓    |          ✓           |               |         |
| Performance Status      |       ✓       |    ✓     |         ✓         |         |    ✓    |          ✓           |        |         |         |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| **Laboratory Tests**    |               |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| Hematology              |       ✓       |    ✓     |         ✓         |    ✓    |    ✓    |          ✓           |   ✓    |    ✓    |    ✓    |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| Chemistry Panel         |       ✓       |    ✓     |         ✓         |    ✓    |    ✓    |          ✓           |   ✓    |    ✓    |    ✓    |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| Liver Function          |       ✓       |    ✓     |         ✓         |    ✓    |    ✓    |          ✓           |   ✓    |    ✓    |    ✓    |    ✓    |    ✓    |          ✓           |       ✓       |         |
| Coagulation             |       ✓       |          |         ✓         |         |    ✓    |          ✓           |        |         |         |         |    ✓    |          ✓           |               |         |
| Biomarkers              |       ✓       |          |         ✓         |         |    ✓    |          ✓           |        |         |         |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| **Treatment**           |               |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| Study Drug Admin        |               |          |         ✓         |         |         |          ✓           |        |         |         |         |    ✓    |                      |               |         |
| Pre-medication          |               |          |         ✓         |         |         |          ✓           |        |         |         |         |    ✓    |                      |               |         |
| **Imaging**             |               |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| CT/MRI Scan             |       ✓       |          |                   |         |         |                      |        |         |         |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| Chest X-ray             |       ✓       |          |                   |         |         |                      |        |         |         |         |    ✓    |                      |               |    ✓    |
| Disease Response        |       ✓       |          |                   |         |         |                      |        |         |         |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| **Assessments**         |               |          |                   |         |         |                      |        |         |         |         |         |                      |               |         |
| Quality of Life         |       ✓       |          |         ✓         |         |    ✓    |                      |        |         |         |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| Adverse Events          |       ✓       |    ✓     |         ✓         |    ✓    |    ✓    |          ✓           |   ✓    |    ✓    |    ✓    |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |
| Concomitant Meds        |       ✓       |    ✓     |         ✓         |    ✓    |    ✓    |          ✓           |   ✓    |    ✓    |    ✓    |    ✓    |    ✓    |          ✓           |       ✓       |    ✓    |

In this design we pivot between odd-numbered cycles (Cycle 1, 3, 5) and even-numbered cycles (Cycle 2, 4, 6); we have assigned a disease response activity at the end of the even numbered cycles - these could be aligned to any of the usual grading schemes (eg RECIST), with the outcome of the assessment feeding into the decision over continuing in treatment cycles or transitioning to end of Treatment/follow up.

This can be illustrated graphically as follows:

<img src="dynamic-schedules-cycles-example.png" alt="Dynamic Schedules - Cycles" width="800px" style="float:none; margin: 0px 0px 0px 0px;" />


The representation of this is shown [here](PlanDefinition-dynamic-visit-schedules-cycles-scheduled-interactions.html).

##### Summary

Using the extensions we can represent the SoA as a Graph[ref fhir4pharma paper] - this is key to being able to provide decision support in a prospective manner for a user utilising a healthcare system to manage the execution of a clinical trial.  There are analogues to the implementation of Timelines in the CDISC [Unified Study Design Model (USDM)](https://www.cdisc.org/ddf); so transformations between representations of Study Designs should be mappable between the standards. [add example, maybe]

The complexity of the FHIR study plan will be concordant with the complexity of the study design.  The bias should always be towards implementation; working through an a

