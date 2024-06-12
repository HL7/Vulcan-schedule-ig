Alias: $loinc = http://loinc.org
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: Demographics-Questionnaire
InstanceOf: Questionnaire
Usage: #example
* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* meta.tag.code = #"lformsVersion: 36.1.3"
* title = "Patient demographics panel"
* status = #draft
* code = $loinc#79191-3 "Patient demographics panel"
* item[0].type = #date
* item[=].linkId = "208211461854"
* item[=].text = "Date of Assessment"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].type = #integer
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = $unitsofmeasure#a "year"
* item[=].linkId = "6534569105311"
* item[=].text = "Age"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].linkId = "6333983673854"
* item[=].text = "Patient Sex"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item.text = "Recorded sex or gender"
* item[=].item.type = #display
* item[=].item.linkId = "6333983673854_helpText"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[+].type = #choice
* item[=].code = $loinc#32624-9 "Race"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].linkId = "/32624-9"
* item[=].text = "Race"
* item[=].answerOption[0].valueCoding = $loinc#LA6155-1 "American Indian or Alaska Native"
* item[=].answerOption[+].valueCoding = $loinc#LA6156-9 "Asian"
* item[=].answerOption[+].valueCoding = $loinc#LA10610-6 "Black or African American"
* item[=].answerOption[+].valueCoding = $loinc#LA10611-4 "Native Hawaiian or Other Pacific Islander"
* item[=].answerOption[+].valueCoding = $loinc#LA4457-3 "White"
* item[=].answerOption[+].valueCoding = $loinc#LA4489-6 "Unknown"
* item[+].type = #choice
* item[=].code = $loinc#69490-1 "Ethnicity OMB.1997"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].linkId = "/69490-1"
* item[=].text = "Ethnicity OMB.1997"
* item[=].answerOption[0].valueCoding = $loinc#LA6214-6 "Hispanic or Latino"
* item[=].answerOption[+].valueCoding = $loinc#LA19555-4 "Not Hispanic or Latino"
* item[=].item.text = "This term is used for reporting the ethnicity based on classifications provided by the Office of Management and Budget (OMB), Revisions to the Standards for the Classification of Federal Data on Race and Ethnicity (Oct. 30, 1997)."
* item[=].item.type = #display
* item[=].item.linkId = "/69490-1-help"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"