Instance: H2Q-MC-LZZT-Study-Visit-3
InstanceOf: PlannedStudyVisitSoa
Usage: #example
Title: "Visit-3"
Description: "Planned Visit [Visit-3]"
* title = "H2Q-MC-LZZT Baseline/First Study Treatment Visit"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* date = "2022-11-03"
* identifier[+]
  * value = "VISIT-3"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * use = #usual
* status = #active
* action[+]
  * title = "Record Visit Date"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Visit-Date"
  * id = "VISIT-3-H2Q-MC-LZZT-Visit-Date"
* action[+]
  * title = "Vital signs: Weight"
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Vital-Signs-Weight-PD"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
* action[+]
  * title = "Vital Signs: Temperature"
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Vital-Signs-Temperature-PD"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
* action[+]
  * title = "Vital Signs: Heart Rate and Blood Pressure"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Vital-Signs-HeartRate-BloodPressure"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
* action[+]
  * title = "Ambulatory ECG removed"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Ambulatory-ECG-removed"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
* action[+]
  * title = "Concomitant Medications"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Concomitant-Medications"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
* action[+]
  * title = "Patient randomized"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Patient-randomized"
  * id = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
* action[+]
  * title = "Plasma Specimen (Xanomeline)"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Plasma-Specimen"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
    * relationship = #after
* action[+]
  * title = "Study drug record: Medications Dispensed/Returned"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Study-drug-record"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
    * relationship = #after
* action[+]
  * title = "ADAS-Cog"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-ADAS-Cog"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
    * relationship = #after
* action[+]
  * title = "Clinician's Interview-Based Impression of Change"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-CIBIC"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
    * relationship = #after
* action[+]
  * title = "Disability Assessment for Dementia"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-DAD"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
    * relationship = #after
* action[+]
  * title = "Neuropsychiatric Inventory Questionnaire – Revised"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-NPI-X"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
    * relationship = #after
* action[+]
  * title = "Adverse events"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Adverse-events"
  * relatedAction[+]
    * actionId = "VISIT-3-H2Q-MC-LZZT-Patient-randomized"
    * relationship = #after
