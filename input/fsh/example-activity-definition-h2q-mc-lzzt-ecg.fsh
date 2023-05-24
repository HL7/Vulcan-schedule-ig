Instance: H2Q-MC-LZZT-ECG
InstanceOf: ActivityDefinition
Description: "Planned Activity [ECG]"
Usage: #example
Title: "ECG"
* meta.profile = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/StudyActivitySoa"
* identifier[+]
  * value = "ECG-Measurement"
  * use = #usual
* status = #active
* title = "ECG"
* intent = #order
* kind = #ServiceRequest
* code.coding[+]
  * code = #268400002
  * system = "http://snomed.info/sct"
  * display = "12 lead ECG"