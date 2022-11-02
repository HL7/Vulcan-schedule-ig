Instance: H2Q-MC-LZZT-Study-Visit-3
InstanceOf: PlanDefinition
Usage: #example
Title: "Visit-3"
Description: "Planned Visit [Visit-3]"
* identifier[+]
  * value = "VISIT-3"
  * type = #PLAC
  * use = #usual
* identifier[+]
  * value = "SE.RANDOMIZATION_VISIT"
  * system = "http://www.cdisc.org/ns/odm/v1.3/StudyDef#"
  * type.coding[0]
    * system = "http://www.cdisc.org/ns/odm/v1.3#"
    * display = "OID"
  * use = #secondary
* identifier[+]
  * value = "3.0"
  * system = "http://www.cdisc.org/ns/sdtm/TV#"
  * type.coding[0]
    * system = "http://www.cdisc.org/ns/sdtm/TV#"
    * display = "VISNUM"
  * use = #secondary
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
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Vital-Signs-HeartRate-BloodPressure"
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
  * title = "Plasma Specimen (Xanomeline) "
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
