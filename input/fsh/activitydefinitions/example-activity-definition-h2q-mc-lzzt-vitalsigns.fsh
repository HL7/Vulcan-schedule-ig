Instance: H2Q-MC-LZZT-Vital-Signs-Temperature-ObservationDefinition
InstanceOf: ObservationDefinition
Description: "Body Temperature [Vital Signs]"
Usage: #example
* status = #active
* category[+]
  * coding[+]
    * code = #vital-signs
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"
    * display = "Vital Signs"
* code
  * text = "Body Temperature"
  * coding[+]
    * code = #8310-5
    * system = "http://loinc.org"
    * display = "Body temperature"


Instance: H2Q-MC-LZZT-Vital-Signs-Temperature
InstanceOf: StudyActivitySoa
Description: "Planned Activity - Temperature [Vital Signs]"
Usage: #example
Title: "Vital Signs/Temperature"
* status = #active
* title = "Vital Signs - Temperature"
* name = "Vital Signs - Temperature"
* intent = #order
* kind = #ServiceRequest
* identifier[+]
  * value = "VitalSigns-Temperature-Measurement"
  * use = #usual
// Apply a Code that would be recognised and used by the EHR to represent the target activity and be able to provide the appropriate service and cost thereof
// TODO-VALUE: identify and provide codes would apply based on context (eg location, codesystem support, billing systems, etc)
// Disease Ontology - Look to Monarch Initiative for support 
* code.coding[+]
  * code = #56342008
  * system = "http://snomed.info/sct"
  * display = "Temperature taking (procedure)"
* code.coding[+]
  * code = #1014526
  * system = "http://www.ama-assn.org/go/cpt"
  * display = "Physical examination"
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
* observationResultRequirement[+] = "ObservationDefinition/H2Q-MC-LZZT-Vital-Signs-Temperature-ObservationDefinition"
