#### Dynamic Visit Schedules

One of the factors influencing the move towards more complex study designs is the escalating cost of conducting clinical research. As drug development becomes more expensive, sponsors are increasingly motivated to maximize the scientific and commercial value from each study. This has led to a shift away from traditional, linear study designs towards more intricate protocols that can answer multiple questions simultaneously, evaluate several treatments, or study various patient populations within a single trial framework.

This drive for efficiency has given rise to adaptive designs and master protocols, such as [platform](https://en.wikipedia.org/wiki/Platform_trial), [basket](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/basket-trial), and [umbrella](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/umbrella-trial) trials. These modern approaches often incorporate conditional logic, where the study path for a participant can change based on interim results, biomarker status, or other criteria. Consequently, the schedule of activities is no longer a static table but a dynamic plan with branching pathways and conditional events. While these designs can accelerate drug development and reduce overall costs, they introduce significant complexity in defining, implementing, and managing the schedule of activities across different systems. Additionally, under the guise of [Adaptive Trial Design](https://bmcmedicine.biomedcentral.com/articles/10.1186/s12916-018-1017-7) the implementation of the study can change significantly for a patient.

The goal of the IG will be to be able to define **enough** semantics to represent the encounters, activities and transitions between them. The FHIR Workflow pattern is useful for defining the structural layout for the encounters and activities; defining how the workflow is applied requires the use of an application layer.


##### Transitions

The modality of transitions are needed to represent a prospective plan for a ResearchSubject participating in a Clinical Trial; it supports planning and decision making.  Generally, patients follow a protocol proscribed path through encounters and activities.  We have previously described how activities within an encounter can be orchestrated; but this document is intended to summarise approaches for intra-encounter activities.

If we take a simple example; the progression of a patient in a study design - the following example provides an illustration

```mermaid
graph LR;
  VisitN[Visit N]
  VisitNP[Visit N+1]
  VisitET[Early Termination]
  VisitN--Early Termination-->VisitET
  VisitN--Normal Progression-->VisitNP
```

The Patient will progress from one encounter to the next based on directives or conditions in the protocol; the conditions can be driven by endogenous (eg patient responses/data) or exogenous factors (eg randomization, sponsor decision).  

The designs should incorporate these directives in such a way that an application could interpret them to make decisions about the transitions; and thereby create the required resources (eg Encounter, Appointment, ServiceRequest).  The challenge we have is that in CTMS systems, that are built around common conceptual understandings of how clinical trials work, the functions to drive these transitions are out of the box, whereas finding a common representation using FHIR resources may be challenging.
    
Some scenarios to consider:
* Normal progression based on allocation to an arm
* Differentiated progression based on multiple arms in a study design
* Lost to follow-up, the patient no longer responds to or attends scheduled encounters
* In-study event, a Serious Adverse Event such as death leads to the patient discontinuing participation
* Sponsors may choose to close a study based on pre-defined characteristics detailed in the protocol (eg Six months after the last patient in)

Many of these activities can be intuited from the `ResearchSubject.status` attribute; so if there are suitable systems that can update that status then the plan should work.  As an example; in the case of patient being lost to follow-up the site coordinator could update the ResearchSubject.status to be 'withdrawn'.  That would lead to many of the study paths being closed down assuming progression is linked to the state being 'on-study', 'on-study-intervention' or similar.  This is reliant on site staff or automation being able to update the characteristic, however processes for this already exist so could be applied to the execution of study activities.  These are facile approaches, and will need to be refined (eg where there are multiple study periods, with the patient changing state between them).

An example for this shown here; we define the applicability of a planned encounter based on the current `ResearchSubject.status` 
```fsh
Instance: StudyVisit01
InstanceOf: SoAVisitPlan
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/ApplicableResearchSubjectStatus] = #screening

Instance: StudyVisit03Day1
InstanceOf: SoAVisitPlan
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/ApplicableResearchSubjectStatus] = #on-study

Instance: StudyVisitEoS
InstanceOf: SoAVisitPlan
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/ApplicableResearchSubjectStatus] = #withdrawn
```
This would need to be able to accommodate the different subject statuses and reflect the protocol (eg status of `#on-study`, `#on-study-intervention`, `#on-study-observation` may or may not be considered to be synonyms or not dependent on the study configuration) - the statuses should concur with the intent of the study design in the protocol and should reflect the state at the time of evaluation.  In later versions of FHIR, the patient status is much more granular; insofar as the record on the ResearchSubject has all the current and former states, and would need to be referenced for the applicable time period.

The execution of the plan needs to be able to be adapted to describe what transitions could occur and describe any conditions under which the transitions might occur; examples of the types of transitions that could need to be represented:
- Patients in different cohorts undergo different activities based on their cohort[insert diagram]
- If the patient is a participant in an oncology study and the intervention is not showing therapeutic benefit (as ascertained by Disease Response Assessment/RECIST) then the patient should transition to End of Treatment and Follow-up
- Normal per protocol transition from treatment encounter to encounter.

So, what needs to be defined for a given encounter forward in patient progression based on what activities are planned to occur next based on the protocol; some are common such as the Early Termination path; based on outcomes from the study (eg Serious Adverse Event, Lost to Follow-up), others can be be more complicated.

To account for this, we define the following extension for summarising the next encounters and the conditions under which the next encounter would occur.  For this we propose the following extension: [Exit](http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit) extension
The [Exit] extension has the following characteristics:
* an array with one item for each Exit
* each item will have:
  * a `destination` representing the next `SoAVisitPlan` (required)
  * one or more `condition` statements representing a evaluation that, if true, tells the scheduler to `$apply` the next encounter (optional)
    * if there are more than one `condition` statement, the evaluations should be `AND`ed together 
* an item without a `condition` represents the default next `SoAVisitPlan`
* there must be no more than one item that can apply at 

Note, the criteria should never lead to a decision where there are multiple subsequent encounters without a way of determining the next encounter.  In all cases, the unscheduled encounter should be available, with the expectation that the possible exits are returning to the protocol path or leaving the study.


First, we illustrate the use of the Exit to represent the paths in the following diagram (following a single schedule):

```mermaid
graph LR;
  StudyVisit01[Screening]
  StudyVisit03Day1[Treatment Day 1]
  StudyVisit04Day15[Last Day]
  StudyVisitEoS[End of Study]
  StudyVisitFollowUp[Follow Up]
  StudyVisit01-.->StudyVisit03Day1
  StudyVisit03Day1-.->StudyVisit04Day15
  StudyVisit04Day15-->StudyVisitEoS
  StudyVisitEoS-->StudyVisitFollowUp
  StudyVisit03Day1--Early Termination-->StudyVisitEoS
  StudyVisit03Day1--Early Termination-->StudyVisitEoS
```

```fsh
Instance: StudyVisit01
InstanceOf: SoAVisitPlan
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(StudyVisitEoS)
  * condition = "Patient Discontinuation" 
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(StudyVisit03Day1)

Instance: StudyVisit03Day1
InstanceOf: SoAVisitPlan
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(StudyVisitEoS)
  * condition = "Patient Discontinuation" 
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(StudyVisit04Day15)

Instance: StudyVisit04Day15
InstanceOf: SoAVisitPlan
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(StudyVisitEoS)

Instance: StudyVisitEoS
InstanceOf: SoAVisitPlan
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(StudyVisitFollowUp)

Instance: StudyVisitFollowUp
InstanceOf: SoAVisitPlan
Usage: #example
```

In the following example we represent the case where there are multiple paths depending on a classification

```mermaid
graph LR;
  Screening[Screening]
  Baseline[Randomization]
  TreatmentDay1ArmA["Day 1 (Arm A)"]
  TreatmentDay2ArmA["Day 2 (Arm A)"]
  TreatmentDay7ArmA["Day 7 (Arm A)"]
  TreatmentDay15ArmA["Day 15 (Arm A)"]
  TreatmentDay1ArmB["Day 1 (Arm B)"]
  TreatmentDay7ArmB["Day 7 (Arm B)"]
  TreatmentDay15ArmB["Day 15 (Arm B)"]
  EndOfStudy["End of Study"]
  Screening-->Baseline
  Baseline-->TreatmentDay1ArmA
  Baseline-->TreatmentDay1ArmB
  TreatmentDay15ArmA-->EndOfStudy
  TreatmentDay15ArmB-->EndOfStudy
  subgraph Treatment
    direction TB
    subgraph ArmA
      TreatmentDay1ArmA --> TreatmentDay2ArmA
      TreatmentDay2ArmA --> TreatmentDay7ArmA
      TreatmentDay7ArmA --> TreatmentDay15ArmA
    end
    subgraph "Arm B"
      TreatmentDay1ArmB --> TreatmentDay7ArmB
      TreatmentDay7ArmB --> TreatmentDay15ArmB
    end
  end
```


```fsh
Instance: Screening
InstanceOf: SoAVisitPlan
Title: "Screening"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(StudyVisit03Day1)

Instance: Baseline
InstanceOf: SoAVisitPlan
Title: "Baseline/Randomisation"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Exit][+]
  * destination = Reference(TreatmentDay1ArmA)
  * condition = "ResearchSubject.assignedArm = A"
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(StudyVisit03Day1B)
  * condition = "ResearchSubject.assignedArm = B"

Instance: TreatmentDay1ArmA
InstanceOf: SoAVisitPlan
Title: "Day 1"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(EndOfStudy)
  * condition = "Patient Discontinuation" 
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(TreatmentDay2ArmA)

Instance: TreatmentDay2ArmA
InstanceOf: SoAVisitPlan
Title: "Day 2"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(EndOfStudy)
  * condition = "Patient Discontinuation" 
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(TreatmentDay7ArmA)

Instance: TreatmentDay7ArmA
InstanceOf: SoAVisitPlan
Title: "Day 7"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(EndOfStudy)
  * condition = "Patient Discontinuation" 
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(TreatmentDay15ArmA)

Instance: TreatmentDay15ArmA
InstanceOf: SoAVisitPlan
Title: "Day 15"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(EndOfStudy)

Instance: TreatmentDay1ArmB
InstanceOf: SoAVisitPlan
Title: "Day 1"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(StudyVisitEoS)
  * condition = "Patient Discontinuation" 
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(TreatmentDay7ArmB)

Instance: TreatmentDay7ArmB
InstanceOf: SoAVisitPlan
Title: "Day 7"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(StudyVisitEoS)
  * condition = "Patient Discontinuation" 
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(TreatmentDay15ArmB)

Instance: TreatmentDay15ArmB
InstanceOf: SoAVisitPlan
Title: "Day 15"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(EndOfStudy)

Instance: EndOfStudy
InstanceOf: SoAVisitPlan
Title: "End of Study"
Usage: #example
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Paths][+]
  * destination = Reference(EndOfStudy)

```

##### Treatment Cycles

One of the more complex scenarios we need to deal with are [treatment cycles](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/treatment-cycle); these are repeatable episodic sets of encounters, usually in oncology studies.  The structure of cycles may change over the progression of the studies; where different encounters or activities are added based on the protocol; some examples are shown here:


Examples of Oncology Cycles:

* 3-Week Cycle (e.g., 1-5-9 Schedule)
  * Treatment Period: A patient receives chemotherapy on days 1, 5, and 9. 
  * Rest Period: Days 10 through 21 are a rest period. 
  * Cycle Length: The entire period, from the start of treatment to the beginning of the next, lasts 21 days. 
* 28-Day Cycle (e.g., Lonsurf®)
  * Treatment Period: The drug Trifluridine-tipiracil hydrochloride is taken as a tablet twice a day. 
  * Rest Period: A 28-day period encompasses the full cycle of treatment. 
* Weekly Treatment with a Rest Period
  * Treatment Period: A single dose of chemotherapy might be given once a week. 
  * Rest Period: The remaining days of the week, or several weeks, are spent in rest. 
  * Example: A week of daily chemotherapy followed by three weeks of no treatment constitutes one 4-week cycle. 

The following diagram illustrates a typical oncology study design with repeating treatment cycles that have different visit patterns for even and odd cycles. The diagram shows cycles as distinct entities with clear transitions between cycles and within cycles:

```mermaid
graph TD
    %% Pre-treatment Phase
    subgraph PreTreatment[" "]
        direction TB
        Screening[Screening] --> Randomization[Randomization]
    end
    
    %% Cycle 1 (Odd cycle pattern)
    subgraph Cycle1["🔄 Cycle 1 (Odd Pattern)"]
        direction LR
        C1D1[Day 1] --> C1D14[Day 14]
        C1D14 --> C1D21[Day 21]
    end
    
    %% Cycle 2 (Even cycle pattern)
    subgraph Cycle2["🔄 Cycle 2 (Even Pattern)"]
        direction LR
        C2D1[Day 1] --> C2D7[Day 7]
        C2D7 --> C2D14[Day 14]
        C2D14 --> C2D21[Day 21]
        C2D21 --> C2D28[Day 28]
    end
    
    %% Cycle 3 (Odd cycle pattern)
    subgraph Cycle3["🔄 Cycle 3 (Odd Pattern)"]
        direction LR
        C3D1[Day 1] --> C3D14[Day 14]
        C3D14 --> C3D21[Day 21]
    end
    
    %% Cycle 4 (Even cycle pattern)
    subgraph Cycle4["🔄 Cycle 4 (Even Pattern)"]
        direction LR
        C4D1[Day 1] --> C4D7[Day 7]
        C4D7 --> C4D14[Day 14]
        C4D14 --> C4D21[Day 21]
        C4D21 --> C4D28[Day 28]
    end
    
    %% Additional Cycles Indicator
    subgraph CycleContinuation["🔄 Additional Cycles"]
        direction LR
        MoreCycles[...Continue per protocol...]
    end
    
    %% Post-treatment Phase
    subgraph PostTreatment[" "]
        direction TB
        EndTreatment[End of Treatment] --> EOS[End of Study]
    end
    
    %% Transitions between phases and cycles
    PreTreatment --> Cycle1
    Cycle1 -.-> Cycle2
    Cycle2 -.-> Cycle3
    Cycle3 -.-> Cycle4
    Cycle4 -.-> CycleContinuation
    CycleContinuation -.-> PostTreatment
    
    %% Early termination paths from any cycle
    Cycle1 --Disease Progression/AE--> PostTreatment
    Cycle2 --Disease Progression/AE--> PostTreatment
    Cycle3 --Disease Progression/AE--> PostTreatment
    Cycle4 --Disease Progression/AE--> PostTreatment
    CycleContinuation --Disease Progression/AE--> PostTreatment
    
    %% Early termination from pre-treatment
    Screening --Patient Withdrawal--> PostTreatment
    Randomization --Patient Withdrawal--> PostTreatment
    
    %% Styling
    classDef prePhase fill:#e1f5fe,stroke:#01579b,stroke-width:2px
    classDef oddCycleBox fill:#f3e5f5,stroke:#4a148c,stroke-width:3px
    classDef evenCycleBox fill:#e8f5e8,stroke:#1b5e20,stroke-width:3px
    classDef continueBox fill:#fff9c4,stroke:#f57f17,stroke-width:3px
    classDef postPhase fill:#fff3e0,stroke:#e65100,stroke-width:2px
    classDef encounter fill:#ffffff,stroke:#666666,stroke-width:1px
    
    class Screening,Randomization prePhase
    class EndTreatment,EOS postPhase
    class C1D1,C1D14,C1D21,C3D1,C3D14,C3D21 encounter
    class C2D1,C2D7,C2D14,C2D21,C2D28,C4D1,C4D7,C4D14,C4D21,C4D28 encounter
    class MoreCycles encounter
```

This diagram demonstrates:
- **Pre-treatment Phase**: Screening and randomization as a distinct phase
- **Cycle Entities**: Each treatment cycle is represented as a separate subgraph with internal encounter flow
- **Odd Cycles** (1, 3, etc.): Three encounters per cycle on Days 1, 14, and 21
- **Even Cycles** (2, 4, etc.): Five encounters per cycle on Days 1, 7, 14, 21, and 28
- **Inter-cycle Transitions**: Clear transitions between cycles showing study progression
- **Intra-cycle Transitions**: Encounter flow within each cycle following the protocol pattern
- **Cycle Continuation**: Visual indication that additional cycles can continue per protocol
- **Early Termination**: Exit paths from any cycle or phase for discontinuation scenarios
- **Post-treatment Phase**: End of treatment and end of study as final phase

The structure clearly separates:
1. **Between-cycle transitions**: Moving from one cycle to the next
2. **Within-cycle transitions**: Sequential encounters within each cycle
3. **Phase transitions**: Moving between major study phases (pre-treatment → cycles → post-treatment)
4. **Exception transitions**: Early termination paths from any point in the study

Cycles present a challenge for modelling, there needs to be a way to represent transitions within and between cycles.  The IG has guidance for  




TODO: Cycles

Discussions:
[Marks comment on petri nets]
In FHIR, conditions are associated with a single action, as if the transition were associated with a place rather than an arc between two places. This means a single transition rule must be duplicated and expressed as two rules: a stop rule on the first activity, and a start rule on the second activity. Furthermore, there is an implicit rule that applies to all activities in FHIR: when an activity completes, all actions listing that activity as a relatedAction are triggered (with potential time delay), unless suppressed by a start condition.
(In this discussion, I'm intentionally ignoring the fact there can be a delay between states. It doesn't matter in this analysis.)
The problem with this design is revealed when there is inward or outward branching between activities. Inward branching leads to the downstream activity having two start conditions. Outward branching from an activity leads to the source activity having two stop criteria. Repeat activities, with self-transitions, end up with the same rule as both a start and a stop rule, or with no explicit self-transition rule if expressed as a repeated activity.
According to FHIR, multiple rules of the same type “are combined using AND semantics, so the overall condition is true only if all the conditions are true.” This is simply wrong and would prevent valid transitions from happening. A partial fix would be to change the ‘AND’ to ‘OR’, thereby allowing transition to or from the state along alternative pathways when the condition for just that pathway evaluates to true. 
The fundamental problem, however, is the association between conditions and actions, rather than associating those conditions with pairs of actions, i.e. arcs. This could be fixed if conditions were defined at the level of action.relatedAction, since this is where two activities are related. Currently, the only configurable aspect is a delay between the actions, with no possibility of introducing logical expression. This must change for FHIR to be able to express complex SoAs.

- For something complex (eg Sanofi Platform Trial)
  - do we have a PlanDefinition per 'Cohort';
    - remove the instance level conditionality
  -
