Instance: H2Q-MC-LZZT-ECG-ObservationDefinition
InstanceOf: ObservationDefinition
Description: "EKG ObservationDefinition"
Usage: #example
 
* identifier[+]
  * value = "ECG-Measurement-ObservationDefinition"
  * use = #usual
* status = #active
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure "Procedure"

* code = http://loinc.org#LP31916-7 "12 lead EKG panel"

* component[+].code = http://loinc.org#44973-6 "QRS duration {Electrocardiograph lead}"
* component[=].permittedDataType = #time

* component[+].code = http://loinc.org#44976-9 "P-R Interval {Electrocardiograph lead}"
* component[=].permittedDataType = #time

* component[+].code = http://loinc.org#44975-1 "Q-T interval {Electrocardiograph lead}"
* component[=].permittedDataType = #time

* component[+].code = http://loinc.org#8884-9 "Heart rate rhythm"
* component[=].permittedDataType = #string


* component[+].code = http://loinc.org#8601-7 "EKG impression"
* component[=].permittedDataType = #string



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
  * code = http://loinc.org#LP31916-7 "12 lead EKG panel"
* observationResultRequirement = Reference(H2Q-MC-LZZT-ECG-ObservationDefinition)