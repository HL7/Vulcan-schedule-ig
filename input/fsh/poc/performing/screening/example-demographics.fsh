Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $loinc = http://loinc.org

Instance: 5770998
InstanceOf: QuestionnaireResponse
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-06-12T11:49:48.000-04:00"
* meta.source = "#vAcRbS6QlY9zun9y"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse|3.0"
* meta.tag.code = #"lformsVersion: 36.1.3"
* questionnaire = "Questionnaire/Demographics-Questionnaire"
* status = #completed
* subject = Reference(Patient/5770842) "Abbey, Robynn"
* authored = "2024-06-12T15:49:48.098Z"
* author = Reference(Practitioner/smart-Practitioner-71482713) "Susan Clark"
* author.type = "Practitioner"
* item[0].linkId = "208211461854"
* item[=].text = "Date of Assessment"
* item[=].answer.valueDate = "2024-06-09"
* item[+].linkId = "6534569105311"
* item[=].text = "Age"
* item[=].answer.valueInteger = 47
* item[+].linkId = "6333983673854"
* item[=].text = "Patient Sex"
* item[=].answer.valueCoding = $administrative-gender#male "Male"
* item[+].linkId = "/32624-9"
* item[=].text = "Race"
* item[=].answer.valueCoding = $loinc#LA10611-4 "Native Hawaiian or Other Pacific Islander"
* item[+].linkId = "/69490-1"
* item[=].text = "Ethnicity OMB.1997"
* item[=].answer.valueCoding = $loinc#LA19555-4 "Not Hispanic or Latino"