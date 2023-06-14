Instance: H2Q-MC-LZZT-NPI-X
InstanceOf: ActivityDefinition
Usage: #example
Title: "H2Q-MC-LZZT-NPI-X"
Description: "Revised Neuropsychiatric Inventory (NPI-X)"
* status = #active
* name = "Revised Neuropsychiatric Inventory (NPI-X)"
* title = "Revised Neuropsychiatric Inventory (NPI-X)"
* subtitle = "The NPI-X is an assessment of change in psychopathology in patients with dementia."
* publisher = "Dr. Jeffrey L. Cummings."
* description = """The NPI-X is an assessment of change in psychopathology in patients with dementia. The NPI-X is administered to the designated caregiver. 
This instrument has been revised from its original version (Cummings et al. 1994) and incorporated into this study with the permission of Dr. Jeffrey L. Cummings.
"""
// This is a reference to a Group of study participants eg research subjects group
* subjectReference = Reference(ParticipantGroup)
* useContext[+]
  * code = #age
  * valueCodeableConcept[+]
    * coding[+]
      * system = "http://snomed.info/sct"
      * code = #263495000
      * display = "Adult"
* useContext[+]
  * code = #focus
  * valueCodeableConcept[+]
    * coding[+]
      * system = "http://snomed.info/sct"
      * code = #225358003
      * display = "Mental health"
* kind = #ServiceRequest
* code[+]
  * coding[+]
    * code = #1231514008
    * system = "http://snomed.info/sct"
    * display = "Revised Neuropsychiatric Inventory (NPI-X)"
* topic = #assessment
* relatedArtifact[+]
  * type = #cite-as
  * display = "The Neuropsychiatric Inventory: assessing psychopathology in dementia patients"
  * resource = "https://www.ncbi.nlm.nih.gov/pubmed/9153155"
* intent = #plan
* participant[+]
  * type = #practitioner
  * function = #performer 
* participant[+]
  * type = #relatedperson
  * function = #author