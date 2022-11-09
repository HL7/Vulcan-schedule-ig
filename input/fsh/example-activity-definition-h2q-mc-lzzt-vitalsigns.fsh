Instance: H2Q-MC-LZZT-Vital-Signs-Temperature
InstanceOf: ActivityDefinition
Description: "Planned Activity [Vital Signs]"
Usage: #example
Title: "Vital Signs/Temperature"
* status = #active
* name = "H2Q-MC-LZZT-Vital-Signs-Temperature"
* title = "Vital Signs - Temperature"
* intent = #order
* kind = #ServiceRequest
* identifier[+]
  * value = "VitalSigns-Temperature-Measurement"
  * type = #PLAC
  * use = #usual
* code.coding[+]
  * code = #56342008
  * system = "http://snomed.info/sct"
  * display = "Temperature taking (procedure)"
* bodySite.coding[+]
  * code = #74262004
  * system = "http://snomed.info/sct"
  * display = "Oral cavity"
* bodySite.coding[+]
  * code = #34402009
  * system = "http://snomed.info/sct"
  * display = "Rectum"
* bodySite.coding[+]
  * code = #91470000
  * system = "http://snomed.info/sct"
  * display = "Axilla"
* bodySite.coding[+]
  * code = #42859004
  * system = "http://snomed.info/sct"
  * display = "Tympanic membrane structure"

