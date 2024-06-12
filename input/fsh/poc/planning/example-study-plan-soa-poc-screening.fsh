Instance: SoA-PoC-Screening-Visit1
InstanceOf: StudyProtocolSoa
Description: "Vulcan Schedule of Activities PoC - Screening"
Usage: #example
* status = #active
* title = "Vulcan Schedule of Activities PoC"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* date = "2024-05-08"
* version = "LZZT_1"
* purpose = "The purpose of this PlanDefinition is to illustrate the planned study encounters."
* action[+]
  * id = "VISIT-1-SoA-PoC-Visit-Date"
  * title = "Record Visit Date"
  * definitionUri = "ActivityDefinition/SoA-PoC-Visit-Date"
* action[+]
  * id = "VISIT-1-SoA-PoC-DMG"
  * title = "Race, ethnicity, sex, primary language, disability - Health and Human Services (HHS) panel [HHS.ACA Section 4302]"
  * definitionUri = "Questionnaire/Demographics-Questionnaire"
* action[+]
  * id = "VISIT-1-SoA-PoC-H-W"
  * title = "Weight and Height tracking panel"
  * definitionUri = "Questionnaire/Vulcan-SoA-Height-Weight-Panel"
* action[+]
  * id = "VISIT-1-SoA-PoC-VS"
  * title = "Blood pressure panel mean systolic and mean diastolic"
  * definitionUri = "Questionnaire/Vulcan-SoA-Blood-Pressure-Panel"
* action[+]
  * id = "VISIT-1-SoA-BP"
  * title = "PHQ-15 Questionnaire"
  * definitionUri = "Questionnaire/PHQ-15-Questionnaire"
