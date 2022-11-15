Instance: H2Q-MC-LZZT-Study-Visit-1
InstanceOf: StudyVisitSoa
Title: "Visit-1"
Description: "Planned Visit [Visit-1]"
Usage: #example
* status = #active
* title = "H2Q-MC-LZZT Screening Visit"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* date = "2022-11-03"
* identifier[+]
  * value = "H2Q-MC-LZZT-Study-Visit-1"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * use = #usual
* identifier[+]
  * value = "VISIT-1"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * use = #usual
* action[+]
  * id = "VISIT-1-H2Q-MC-LZZT-Visit-Date"
  * title = "Record Visit Date"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Visit-Date"
* action[+]
  * title = "Informed Consent"
  * id = "H2Q-MC-LZZT-Informed-Consent"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Informed-Consent"
  * relatedAction[+]
    * actionId = "VISIT-1-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
* action[+]
  * title = "Patient number assigned"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Patient-number-assigned"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Hachinski 4"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Hachinski-4"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "MMSE 10-23"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-MMSE-10-23"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Physical examination"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Physical-examination"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Medical History"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Medical-History"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Habits - Alcohol"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Habits-Alcohol"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Habits - Caffeine"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Habits-Caffeine"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Habits - Smoking"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Habits-Smoking"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Chest x-ray"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Chest-x-ray"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Vital signs: Height"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Vital-Signs-Height-PD"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Vital signs: Weight"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Vital-Signs-Weight-PD"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Vital Signs: Temperature"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Vital-Signs-Temperature-PD"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Vital Signs: Heart Rate and Blood Pressure"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Vital-Signs-HeartRate-BloodPressure"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "ECG"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-ECG"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Placebo TTS test"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Placebo-TTS-test"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "CT Scan"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-CT-Scan"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Concomitant Medications"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Concomitant-Medications"
  * relatedAction[+]
    * actionId = "VISIT-1-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
* action[+]
  * title = "Laboratory (Hematology)"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Laboratory-Hemat"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Laboratory (Chemistry)"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Laboratory-Chem"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Laboratory (Urinalysis)"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Laboratory-Urinalysis"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Hemoglobin A1C"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Hemoglobin-A1C"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "ADAS-Cog"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-ADAS-Cog"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Clinician's Interview-Based Impression of Change"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-CIBIC"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Disability Assessment for Dementia"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-DAD"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Neuropsychiatric Inventory Questionnaire – Revised"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-NPI-X"
  * relatedAction[+]
    * actionId = "H2Q-MC-LZZT-Informed-Consent"
    * relationship = #after
* action[+]
  * title = "Adverse events"
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-Adverse-events"
  * relatedAction[+]
    * actionId = "VISIT-1-H2Q-MC-LZZT-Visit-Date"
    * relationship = #after
