Alias: $loinc = http://loinc.org

Instance: 5770994
InstanceOf: QuestionnaireResponse
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-06-12T11:16:46.000-04:00"
* meta.source = "#WOtdXcTXAd1IxS7q"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse|3.0"
* meta.tag.code = #"lformsVersion: 36.1.3"
* questionnaire = "Questionnaire/Vulcan-SoA-Height-Weight-Panel"
* status = #completed
* subject = Reference(Patient/5770842) "Abbey, Robynn"
* authored = "2024-06-12T15:16:46.350Z"
* author = Reference(Practitioner/smart-Practitioner-71482713) "Susan Clark"
* author.type = "Practitioner"
* item[0].linkId = "/29463-7"
* item[=].text = "Weight"
* item[=].answer.valueDecimal = 89.1
* item[+].linkId = "/8352-7"
* item[=].text = "Clothing worn during measure"
* item[=].answer.valueCoding = $loinc#LA11872-1 "Street clothes, no shoes"
* item[+].linkId = "/8302-2"
* item[=].text = "Body height"
* item[=].answer.valueDecimal = 73
* item[+].linkId = "/39156-5"
* item[=].text = "BMI"
* item[=].answer.valueDecimal = 25.9
* item[+].linkId = "/8361-8"
* item[=].text = "Bdy position with respect to gravity"
* item[=].answer.valueCoding = $loinc#LA11868-9 "Sitting"