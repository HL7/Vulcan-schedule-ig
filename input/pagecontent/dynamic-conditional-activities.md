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


##### Example I: HBA1c in Type 1 Diabetes 
Given the following protocol design element,
```
If patients are insulin dependent diabetics, a hemoglobin A1c will be obtained.
```
For an example, see the following sample:

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
      * expression = "Condition.where(subject.reference = 'Patient/' + Id).where(code.coding.system = 'http://snomed.info/sct' and code.coding.code = '46635009').exists()"
```
This uses the [FHIRPath](https://build.fhir.org/fhirpath.html) statement to identify that the current Patient has evidence of a diagnosis of Type 1 Diabetes Mellitus; if this is true then the activity is applicable and should be performed.  Note, this is limiting the search to just a diagnosis code using SNOMED, whereas other coding systems may be in use dependent on the system and location.  

This might be an example where the use of [Clinical Quality Language](https://build.fhir.org/ig/HL7/cql/) (CQL) adds additional flexibility through the use of complex functions that exceed the pattern matching in FHIRPath.  It should be up to the implementer and systems involved to ensure the requirement is communicated with sufficient clarity in a way that it can be implemented.

##### Example II: Patient has completed Inclusion/Exclusion
Continued Study activities are dependent on ResearchSubject having completed all applicable Eligibility; assuming they have failed then the activities remaining would only be those that apply to a Screen Failure

```yaml
Instance: SoA-PoC-Conditional-Screening-Eligibility
InstanceOf: StudyVisitSoa
Usage: #inline
* status = #active
* title = "Visit 1 - Screening"
* action[+]
  * definitionCanonical = "ActivityDefinition/Eligibility-Evaluation"
  * description = "Evaluate the Patient eligibility status"
* action[+]
  * definitionCanonical = "ActivityDefinition/Collect-Screen-Fail"
  * description = "Complete the Primary Reason for Screen Failure"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Record Screen Failure Reason"
      * refer to ResearchSubject.subjectState
* action[+]
  ... default study activitie
```

##### Example III: Dose Titration
Based on a Biomarker Value, the dose would change; the example should illustrate a change in Dosing (MedicationAdministration) - would this be the amount or activity?

```yaml
Instance: SoA-PoC-Conditional-Visit-4-Treatment
InstanceOf: StudyVisitSoa
Usage: #inline
* status = #active
* title = "Visit 3 - Treatment"
* action[+]
  * definitionCanonical = "ActivityDefinition/PlannedDose-10mg"
  * title = "Dose Administration - 10mg"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Determine applicability to 10mg arm"
* action[+]
  * definitionCanonical = "ActivityDefinition/PlannedDose-20mg"
  * title = "Dose Administration - 20mg"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Determine applicability to 20mg arm"
* action[+]
  * definitionCanonical = "ActivityDefinition/PlannedDose-50mg"
  * title = "Dose Administration - 50mg"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Determine applicability to 50mg arm"
```

##### Example V: Study Imaging 
In the following example we have a scenario where there is a need for Disease Response assessment by Imaging Study.  Dependent on the disease type and location the type of imaging required will differ.  The conditionality here allows for the requisite activities to be scheduled and the unnecessary activities to be skipped.

```yaml
Instance: SoA-PoC-Conditional-Imaging
InstanceOf: StudyVisitSoa
Usage: #inline
* status = #active
* title = "Imaging"
* action[+]
  * definitionCanonical = "ActivityDefinition/Head-CT-MRI"
  * title = "Imaging Study - Brain CT/MRI"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Check allocation to Arm with GBM"
      * language = #text/fhirpath
      * expression = "ResearchSubject.where(subject.reference = 'Patient/' + Id).where(comparisonGroup.name="GBM").exists()"
* action[+]
  * definitionCanonical = "ActivityDefinition/Liver-CT-MRI"
  * title = "Imaging Study - Liver CT/MRI"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Check allocation to Arm with RCC"
      * expression = "ResearchSubject.where(subject.reference = 'Patient/' + Id).where(comparisonGroup.name="RCC").exists()"
```
* Perhaps the type of imaging could be driven by site capabilities (eg CT vs MRI).
* This could be an enabling capability, where the concept of Imaging is key; but how the imaging is performed would differ

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

Patient's continued participation in the study/studyplan is dependent on the Patient `status`. However, there needs to be some initiation in change in the Patient state and this would be down to the Clinical Trial Management System that is driving the research activities for the Patient; for example being having a defined enrollment process that creates the enrollment encounter, and based on the outcome updates the status of the patient.

Mike's Link: [NCT02465060](https://cdn.clinicaltrials.gov/large-docs/60/NCT02465060/Prot_SAP_000.pdf)