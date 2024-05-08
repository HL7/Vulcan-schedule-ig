Instance: SoA-PoC-Treatment-Visit5
InstanceOf: StudyProtocolSoa
Description: "Vulcan Schedule of Activities PoC - End of Study"
Usage: #example
* status = #active
* title = "Vulcan Schedule of Activities PoC"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* date = "2024-05-08"
* purpose = "The purpose of this PlanDefinition is to illustrate the planned study encounters."
* action[+]
  * id = "VISIT-5-SoA-PoC-Visit-Date"
  * title = "Record Visit Date"
  * definitionUri = "ActivityDefinition/SoA-PoC-Visit-Date"
* action[+]
  * id = "VISIT-5-SoA-PoC-PHQ-15"
  * title = "PHQ-15 Questionnaire"
  * definitionUri = "Questionnaire/PHQ-15-Questionnaire"
