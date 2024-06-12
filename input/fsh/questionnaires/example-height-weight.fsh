Alias: $loinc = http://loinc.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: Vulcan-SoA-Height-Weight-Panel
InstanceOf: Questionnaire
Usage: #example
* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* meta.tag.code = #"lformsVersion: 36.1.3"
* title = "Weight and Height tracking panel"
* status = #draft
* code = $loinc#55418-8 "Weight and Height tracking panel"
* item[0].type = #quantity
* item[=].code = $loinc#29463-7 "Weight"
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding.display = "kilograms"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding.display = "pounds"
* item[=].linkId = "/29463-7"
* item[=].text = "Weight"
* item[+].type = #choice
* item[=].code = $loinc#8352-7 "Clothing worn during measure"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].linkId = "/8352-7"
* item[=].text = "Clothing worn during measure"
* item[=].answerOption[0].valueCoding = $loinc#LA11871-3 "Underwear or less"
* item[=].answerOption[+].valueCoding = $loinc#LA11872-1 "Street clothes, no shoes"
* item[=].answerOption[+].valueCoding = $loinc#LA11873-9 "Street clothes & shoes"
* item[+].type = #quantity
* item[=].code = $loinc#8302-2 "Body height"
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding.display = "centimeters"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding.display = "feet"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding.display = "inches"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding.display = "meters"
* item[=].linkId = "/8302-2"
* item[=].text = "Body height"
* item[+].type = #decimal
* item[=].code = $loinc#39156-5 "BMI"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = $unitsofmeasure#kg/m2 "kg/m2"
* item[=].linkId = "/39156-5"
* item[=].text = "BMI"
* item[+].type = #choice
* item[=].code = $loinc#8361-8 "Bdy position with respect to gravity"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].linkId = "/8361-8"
* item[=].text = "Bdy position with respect to gravity"
* item[=].answerOption[0].valueCoding = $loinc#LA11868-9 "Sitting"
* item[=].answerOption[+].valueCoding = $loinc#LA11869-7 "Lying"
* item[=].answerOption[+].valueCoding = $loinc#LA11870-5 "Standing"