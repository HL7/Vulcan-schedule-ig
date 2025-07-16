### Supporting Conditional Features of Modern Protocols

The [basic structure](base-structure.html) provides a structure for relatively simple study designs; such as those applicable to Phase I studies.  Minimal branching, no explicit definition of conditional activities

#### Conditional Activities
Conditional activities only occur based on some pre-existing state for the patient at the point of time the activity would be performed.  The invocation of conditional activities relies on an evaluation of the state at the point at which the activity would be planned to be performed.  These states can be characteristics of the patient (pre-entry states) or can be based on an emergent event.  

Conditional classifications could include:
* Patient pre-existing conditions
  * activities that are dependent on one or more disease, problem or diagnosis that there is evidence for in the medical record
* Patient characteristics 
  * activities are predicated on a patient characteristic that is not specifically related to a diagnosis (eg patient sexual characteristics)
  * activities that are done in addition to the core activities based on an emergent event (eg Adverse event monitoring)
* Study Design 
  * sub-paths based on research subject arm allocation
* Operational Requirements
  * Activities that have a pre-requisite on site capabilities (eg requiring a MRI scan)
* Study Characteristics
  * pre-determined changes to the operation of the study, eg study closed due to a lack of therapeutic outcome 


Some examples are shown here:
* H2Q-MC-LZZT Study
  * Patients who are diabetics should have hemoglobin A1c tests
    ```
    If patients are insulin dependent diabetics, a hemoglobin A1c will be obtained.
    ```
  * Evidence of suspected liver damage 
    ```The following criteria have been developed to monitor hepatic function.
        * Patients with ALT/SGPT levels >120 IU will be retested weekly.
        * Patients with ALT/SGPT values >400 IU, or alternatively, an elevated
            ALT/SGPT accompanied by GGT and/or ALP values >500 IU will be
            retested within 2 days. The sponsor’s clinical research administrator or
            clinical research physician is to be notified. If the retest value does not
            decrease by at least 10%, the study drug will be discontinued; additional
            laboratory tests will be performed until levels return to normal. If the
            retest value does decrease by 10% or more, the study drug may be
            continued with monitoring at 3 day intervals until ALT/SGPT values
            decrease to <400 IU or GGT and/or ALP values decrease to <500 IU.
    ```
* (Safety, preliminary efficacy and PK of isatuximab (SAR650984) alone or in combination with atezolizumab in patients with advanced malignancies)[]
  * Pregnancy tests for females of child-bearing potention 
    ```
    Serum (at baseline) or urine human chorionic gonadotropin (hCG) pregnancy test (as needed for women of childbearing potential).(urine pregnancy test on Day 1 of each cycle, EOT visit, and every 30±7 days until 5 months after last dose of study treatment)
    ```
  * Disease response based on Cohort (where HCC, SCCHN, EOC, GBM are different types of cancer and as such need to be assessed using different imaging techniques)
    ```
    CT/MRI (for HCC, SCCHN, and EOC)
    Brain MRI (for GBM only) 
    AFP (for HCC) / CA125 (for EOC) 
    ```
Examples include:
* Pregnancy test for females of child-bearing potential
* 
* Patients who sign up for experimental endpoints have extra tests performed


Other factors come into consideration of an approach for conditional activities; these can include allocations to specific patient cohorts where the activities are dependent on specific patient characteristics or membership in a particular group (which may be related to protocol defined common characteristics).  

We have chosen to make use of the existing patterns within the FHIR [PlanDefinition]() resource to assist with the conditional activities defined according to patient characteristics.  The [PlanDefinition](https://hl7.org/fhir/plandefinition.html) predicate for child activities, [PlanDefinition.action](https://hl7.org/fhir/plandefinition-definitions.html#PlanDefinition.action) previously illustrated could be used.  We appreciate that there are a wide number of possible implementations for many patient characteristics; so we cannot provide a simple pattern to do this

```yaml
Instance: SoA-PoC-Conditional-Visit-1
InstanceOf: StudyVisitSoa
Usage: #inline
* status = #active
* title = "Visit 1 - Screening"
* action[+]
  * definitionCanonical = "ActivityDefinition/BloodChemistry-ActivityDefinition"
  * title = "Blood Chemistry"
* action[+]
  * definitionCanonical = "ActivityDefinition/BloodChemistry-HBA1C-ActivityDefinition"
  * title = "Blood Chemistry - Diabetic"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Blood Chemistry with HbA1c"
      * language = #text/fhirpath
      * expression = "Condition.where(subject.reference = 'Patient/' + Id).where(code.coding.system = 'http://snomed.info/sct' and code.coding.code = '73211009').exists()"
```


#### Dynamic Visit Schedules
One of the factors influencing the move towards more complex study designs is the escalating cost of conducting clinical research. As drug development becomes more expensive, sponsors are increasingly motivated to maximize the scientific and commercial value from each study. This has led to a shift away from traditional, linear study designs towards more intricate protocols that can answer multiple questions simultaneously, evaluate several treatments, or study various patient populations within a single trial framework.

This drive for efficiency has given rise to adaptive designs and master protocols, such as platform, basket, and umbrella trials. These modern approaches often incorporate conditional logic, where the study path for a participant can change based on interim results, biomarker status, or other criteria. Consequently, the schedule of activities is no longer a static table but a dynamic plan with branching pathways and conditional events. While these designs can accelerate drug development and reduce overall costs, they introduce significant complexity in defining, implementing, and managing the schedule of activities across different systems.

The goal of the IG will be to be able to define **enough** semantics to represent the encounters, activities and transitions between them.  The FHIR Workflow pattern is extremely helpful for defining the structural

```mermaid

```

The execution of the plan would need to be able to be adapted to describe what transitions could occur (under what conditions); examples of the types of transitions:
* Patients in different cohorts undergo different activities
* If the patient is a participant in an oncology study and the intervention is not showing therapeutic benefit (as ascertained by Disease Response Assessment/RECIST) then the patient should transition to End of Treatment and Follow-up
* If the patient passes away.


#### Unscheduled Visits
Unscheduled visits are encounters that are not part of the pre-defined schedule of activities but are necessary for the proper management and safety of a study participant. These visits are typically triggered by unforeseen circumstances, most commonly the occurrence of an adverse event (AE) that requires medical evaluation. Other triggers can include the need to follow up on abnormal laboratory results, the initiation of a new concomitant medication, or other intercurrent events that could impact the study's integrity or the participant's well-being. While the timing of these visits is, by definition, not planned, the protocol often specifies the procedures and assessments that should be performed if such a visit becomes necessary.

From an implementation perspective, unscheduled visits are not represented as pre-defined actions within the study's `PlanDefinition`. Instead, they are instantiated as `Encounter` resources at the time they occur. To maintain the integrity of the study data, it is crucial to document the reason for the unscheduled visit. This can be achieved by populating the `Encounter.reasonCode` or `Encounter.reasonReference` elements, which can link the visit to a specific `AdverseEvent`, `Observation`, or `Condition` resource. This linkage provides the necessary context for the data collected during the visit, distinguishing it from data gathered during routine, scheduled encounters and allowing for proper analysis.
