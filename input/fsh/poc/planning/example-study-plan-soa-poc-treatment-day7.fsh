Instance: SoA-PoC-Treatment-Visit4
InstanceOf: StudyProtocolSoa
Description: "Vulcan Schedule of Activities PoC - Treatment Day 7"
Usage: #example
* status = #active
* title = "Vulcan Schedule of Activities PoC"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* date = "2024-05-08"
* purpose = "The purpose of this PlanDefinition is to illustrate the planned study encounters."
* action[+]
  * id = "VISIT-4-SoA-PoC-Visit-Date"
  * title = "Record Visit Date"
  * definitionUri = "ActivityDefinition/SoA-PoC-Visit-Date"
* action[+]
  * id = "VISIT-4-SoA-PoC-PHQ-15"
  * title = "Blood pressure panel mean systolic and mean diastolic"
  * definitionUri = "Questionnaire/Vulcan-SoA-Blood-Pressure-Panel"
* action[+]
  * id = "VISIT-4-SoA-PoC-PHQ-15"
  * title = "PHQ-15 Questionnaire"
  * definitionUri = "Questionnaire/PHQ-15-Questionnaire"
