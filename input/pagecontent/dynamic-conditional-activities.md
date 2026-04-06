#### Conditional Activities

Conditional activities only occur based on some pre-existing state for the patient at the point of time the activity would be performed. We limit the scope to elements defined by ActivityDefinitions, changes in Patient CRF relating to branching or similar are described in [Dynamic Visit Plans](dynamic-visit-plans.html).  The invocation of conditional activities relies on an evaluation of the state at the point at which the activity would be planned to be performed. These states can be characteristics of the patient (pre-entry states) or can be based on emergent events.

Conditional classifications could include:
- Patient pre-existing conditions
  - activities that are dependent on one or more disease, problem or diagnosis that there is evidence for in the medical record
- Patient characteristics
  - activities are predicated on a patient characteristic that is not specifically related to a diagnosis (eg patient sexual characteristics)
  - activities that are done in addition to the core activities based on an emergent event (eg Adverse event monitoring in the event of suspected liver damage)
- Study Characteristics
  - pre-determined changes to the operation of the study, 
    - activities that depend on site location (eg sites requiring specific constraints based on local regulations)
    - activities with with specific consent requirements (eg Exploratory activities requiring extended consent) 
- Operational Requirements
  - Activities that have a pre-requisite on site capabilities (eg requiring a MRI scan could preclude a site from meeting Site requirements)

Some examples taken from real protocols are shown here:
- Patients who are diabetics should have hemoglobin A1c tests

  ```
  If patients are insulin dependent diabetics, a hemoglobin A1c will be obtained.
  ```
- Evidence of suspected liver damage

  ```
  The following criteria have been developed to monitor hepatic function.
    * Patients with ALT/SGPT levels >120 IU will be retested weekly.
    * Patients with ALT/SGPT values >400 IU, or alternatively, an elevated
      ALT/SGPT accompanied by GGT and/or ALP values >500 IU will be
      retested within 2 days...
  ```
- Pregnancy tests for females of child-bearing potential

  ```
  Serum (at baseline) or urine human chorionic gonadotropin (hCG) pregnancy test (as needed for females of childbearing potential). (urine pregnancy test on Day 1 of each cycle, EOT visit, and every 30±7 days until 5 months after last dose of study treatment)
  ```
- Disease Response assessment based on the type and location of the disease under treatment:

  ```
  HCC, hepatocellular carcinoma, requiring an MRI or CT scan and GBM, glioblastoma, requiring a Brain MRI
  ```

We have used existing patterns within the FHIR [PlanDefinition](https://hl7.org/fhir/plandefinition.html) resource to assist with conditional activities defined according to patient characteristics. The [PlanDefinition](https://hl7.org/fhir/plandefinition.html) predicate for child activities, [PlanDefinition.action](https://hl7.org/fhir/plandefinition-definitions.html#PlanDefinition.action) provides a framework, however other approaches can be applied.  It is approached using the [condition](https://hl7.org/fhir/plandefinition-definitions.html#PlanDefinition.action.condition) attribute on the `action`; the `kind` predicate is set to `applicability` which reflects the concept of a conditional activity.

In our testing, some patterns that are handled within existing data collection strategies did not simply map across to existing examples.  Examples included the concept of 'Child-bearing Potential', which is a pre-condition to requiring a Pregnancy Test.  It was not possible to simply formulate the necessary [FHIRPath](https://build.fhir.org/fhirpath.html); instead we proposed a way of direct querying the system user, in the same way that it is achieved in   

We appreciate that there are a wide number of possible implementations for many patient characteristics; so we cannot provide a simple pattern to do this, instead we can provide some examples that show how logic can be applied to the scheduling of activities such that the conditionality expressed in the protocol can be adequately reflected in the planned study design.


##### Example I: HBA1c in Diabetes Mellitus 
Given the following protocol design element,

```
If patients are insulin dependent diabetics, a hemoglobin A1c will be obtained.
```
For an example, see the following sample:

```json
{
  "resourceType": "PlanDefinition",
  "id": "SoA-PoC-Conditional-Visit-1",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/StudyVisitSoa"
    ]
  },
  "status": "active",
  "title": "Visit 1 - Screening",
  "action": [
    {
      "definitionCanonical": "ActivityDefinition/BloodChemistry-ActivityDefinition",
      "title": "Blood Chemistry"
    },
    {
      "definitionCanonical": "ActivityDefinition/BloodChemistry-HBA1C-ActivityDefinition",
      "title": "Blood Chemistry - Diabetic",
      "condition": [
        {
          "kind": "applicability",
          "expression": {
            "description": "Blood Chemistry with HbA1c",
            "language": "text/fhirpath",
            "expression": "Condition.where(subject.reference = 'Patient/' + Id).where(code.coding.system = 'http://snomed.info/sct' and code.coding.code = '46635009').exists()"
          }
        }
      ]
    }
  ]
}
```
This uses the [FHIRPath](https://build.fhir.org/fhirpath.html) statement to identify that the current Patient has evidence of a diagnosis of Diabetes Mellitus; if this is true then the activity is applicable and should be performed.  Note, this is limiting the search to just a diagnosis code using SNOMED, whereas other coding systems may be in use dependent on the system and location.  

This might be an example where the use of [Clinical Quality Language](https://build.fhir.org/ig/HL7/cql/) (CQL) adds additional flexibility through the use of complex functions that exceed the pattern matching in FHIRPath.  It should be up to the implementer and systems involved to ensure the requirement is communicated with sufficient clarity in a way that it can be implemented.

##### Example II: Patient has completed Inclusion/Exclusion
Continued Study activities are dependent on ResearchSubject having completed all applicable Eligibility; assuming they have failed then the activities remaining would only be those that apply to a Screen Failure

```json
{
  "resourceType": "PlanDefinition",
  "id": "SoA-PoC-Conditional-Screening-Eligibility",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/StudyVisitSoa"
    ]
  },
  "status": "active",
  "title": "Visit 1 - Screening",
  "action": [
    {
      "definitionCanonical": "ActivityDefinition/Eligibility-Evaluation",
      "description": "Evaluate the Patient eligibility status"
    },
    {
      "definitionCanonical": "Questionnaire/Collect-Screen-Fail",
      "description": "Complete the Primary Reason for Screen Failure",
      "condition": [
        {
          "kind": "applicability",
          "expression": {
            "description": "Record Screen Failure Reason",
            "language": "text/fhirpath",
            "expression": "ResearchSubject.where(subject.reference = 'Patient/' + Id).where(study.name = 'RESEARCHSTUDY').subjectState.coding.where(code = 'ineligible').exists()"
          }
        }
      ]
    }
  ]
}

```
In this example we assume that patient failing screening would have a `subjectState` of [*ineligible*](https://terminology.hl7.org/7.1.0/en/CodeSystem-research-subject-state.html#research-subject-state-ineligible); if the FHIRPath matches then the Questionnaire to record the primary reason for Screen Failure should be shown.  If the patient is eligible then the normal study progression would occur (there are better implementations of this using the [dynamic visit plans](dynamic-visit-plans.html), this is purely illustrative).

##### Example III: Dose Titration with Maximum Ascending Dose

Dose titration is used to establish the lowest effective dose that provides the patient with an optimal therapeutic effect with minimal side effects ([C90475](https://evsexplore.semantics.cancer.gov/evsexplore/concept/ncit/C90475)). The key principles of dose titration are:

- establish a baseline measurement relevant to the medication's purpose
- start medication with the lowest effective dose as recommended in clinical guidelines
- allow sufficient time between dose adjustments for the medication to reach steady state 
- monitor the patient's response using objective measures and subjective symptom reports at each step
- increase or decrease the dose incrementally until an acceptable therapeutic response is reached, intolerable side effects occur or the maximum recommended dose is reached.


**Levothyroxine** is primarily prescribed to treat hypothyroidism and should be monitored regularly following establishing an effective dose to maintain T4 and TSH within the normal range. The flowchart below shows the basic approach to establish an initial acceptable dose, and thereafter monitoring the thyroxine therapy(adapted from ...).   

<img src="conditional-activities.jpeg" alt="Dynamic Schedules - Conditional Activities" width="800px" style="float:none; margin: 0px 0px 0px 0px;" />


The Baseline, Titration-Review, Maintenance-Review schedule defined using IG 2 extension is shown in the following examples:
* [Levothroxine-Monitoring-Schedule](PlanDefinition-Levothroxine-Monitoring-Schedule.html)

The table below shows the key associated activities, where TSH and other relevant laboratory parameters are measured and then clinically reviewed to determine the required dose escalation or reduction.

##### Schedule of Activities: Levothroxine Monitoring [Table]

|                   | Baseline   | Titration-Review   | Maintenance-Review   |
|:------------------|:-----------|:-------------------|:---------------------|
| Blood Sample      | X          | X                  | X                    |
| TSH Measurement   | X          | X                  | X                    |
| Clinical Review   | X          | X                  | X                    |
| Increase Dose     |            | X                  |                      |
| No Dose Change    |            | X                  |                      |
| Decrease Dose     |            | X                  |                      |
| MedicationRequest | X          | X                  | X                    |

The Titration-Review activities defined using the IG 2.0 extensions is shown in the following examples:
* [Levothroxine-Monitoring-Titration-Activities](PlanDefinition-Levothroxine-Monitoring-Titration-Activities.html)


---
Based on a Biomarker Value, the dose would change; the example should illustrate a change in Dosing (MedicationAdministration) - would this be the amount or activity?

##### Example V: Study Imaging 
In the following example we have a scenario where there is a need for Disease Response assessment by Imaging Study.  Dependent on the disease type and location the type of imaging required will differ.  The conditionality here allows for the requisite activities to be scheduled and the unnecessary activities to be skipped.

```json
{
  "resourceType": "PlanDefinition",
  "id": "SoA-PoC-Conditional-Imaging",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/StudyVisitSoa"
    ]
  },
  "status": "active",
  "title": "Imaging",
  "action": [
    {
      "definitionCanonical": "ActivityDefinition/Head-CT-MRI",
      "title": "Imaging Study - Brain CT/MRI",
      "condition": [
        {
          "kind": "applicability",
          "expression": {
            "description": "Check allocation to Arm with GBM",
            "language": "text/fhirpath",
            "expression": "ResearchSubject.where(subject.reference = 'Patient/' + Id).where(study.name = 'RESEARCHSTUDY').where(comparisonGroup.name = 'GBM').exists()"
          }
        }
      ]
    },
    {
      "definitionCanonical": "ActivityDefinition/Liver-CT-MRI",
      "title": "Imaging Study - Liver CT/MRI",
      "condition": [
        {
          "kind": "applicability",
          "expression": {
            "description": "Check allocation to Arm with RCC",
            "expression": "ResearchSubject.where(subject.reference = 'Patient/' + Id).where(study.name = 'RESEARCHSTUDY').where(comparisonGroup.name = 'RCC').exists()"
          }
        }
      ]
    }
  ]
}
```
In this scenario, the procedure needed to do the imaging depends on the location of the target body system.  This could be based on a Condition match (similarly to the Diabetes example above), but in this case we want to illustrate the use of allocation to a particular arm.  The approach should be pragmatic and implementable.

#### General Comments:

The scheduling layer will provide a framework for collecting user input that is needed to drive the patient journey where simple patterns of conditional activity (eg by asserting that the patient has been evaluated for child-bearing potential, and recording the outcome).

It is also necessary to plan for events occurring in the conduct of a study, examples being:

- Patient study discontinuation/withdrawal
  - Serious Adverse Event (SAE)
  - Patient withdrawal of consent
  - Study Close-out
- Patient study changes
  - Treatment changes (dose discontinuation, either temporary or permanent)
  - Sub-study participation
  - Adaptive Study Design with Arm discontinuation
- Study discontinuation
  - Study Close out down to therapeutic outcome

How these activities can be enumerated vis a vis Patient participation is something that needs to be accounted for; this can be mediated via **process** or **automation**. For automation there could be something that our execution depends upon; example being `ResearchSubject` status. 

For this example, implementations are located through the following resource attributes:
- `ResearchSubject.status` (R4),
- `ResearchSubject.progress.subjectState` (R5)
- `ResearchSubject.subjectState` (R6)

Patient's continued participation in the study/study plan is dependent on the Patient `status`. However, there needs to be some initiation in change in the Patient state and this would be down to the Clinical Trial Management System that is driving the research activities for the Patient; for example being having a defined enrollment process that creates the enrollment encounter, and based on the outcome updates the status of the patient.
