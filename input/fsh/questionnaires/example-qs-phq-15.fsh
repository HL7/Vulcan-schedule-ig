Alias: $loinc = http://loinc.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: PHQ-15-Questionnaire
InstanceOf: Questionnaire
Usage: #example
* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* meta.tag.code = #"lformsVersion: 36.0.4"
* title = "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
* status = #draft
* copyright = "Copyright © Pfizer Inc. All rights reserved. Developed by Drs. Robert L. Spitzer, Janet B.W. Williams, Kurt Kroenke and colleagues, with an educational grant from Pfizer Inc. No permission required to reproduce, translate, display or distribute."
* code = $loinc#69728-4 "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
* item[0].type = #choice
* item[=].code = $loinc#69671-6 "Stomach pain"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69671-6"
* item[=].text = "Stomach pain"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69672-4 "Back pain"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69672-4"
* item[=].text = "Back pain"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69673-2 "Pain in your arms, legs, or joints (knees, hips, etc.)"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69673-2"
* item[=].text = "Pain in your arms, legs, or joints (knees, hips, etc.)"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69674-0 "Menstrual cramps or other problems with your periods"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69674-0"
* item[=].text = "Menstrual cramps or other problems with your periods"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69717-7 "Pain or problems during sexual intercourse"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69717-7"
* item[=].text = "Pain or problems during sexual intercourse"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69675-7 "Headaches"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69675-7"
* item[=].text = "Headaches"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69676-5 "Chest pain"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69676-5"
* item[=].text = "Chest pain"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69677-3 "Dizziness"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69677-3"
* item[=].text = "Dizziness"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69678-1 "Fainting spells"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69678-1"
* item[=].text = "Fainting spells"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69679-9 "Feeling your heart pound or race"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69679-9"
* item[=].text = "Feeling your heart pound or race"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69680-7 "Shortness of breath"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69680-7"
* item[=].text = "Shortness of breath"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69681-5 "Constipation, loose bowels, or diarrhea"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69681-5"
* item[=].text = "Constipation, loose bowels, or diarrhea"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69682-3 "Nausea, gas, or indigestion"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69682-3"
* item[=].text = "Nausea, gas, or indigestion"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69731-8 "Feeling tired or having low energy"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69731-8"
* item[=].text = "Feeling tired or having low energy"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #choice
* item[=].code = $loinc#69732-6 "Trouble sleeping"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].required = false
* item[=].linkId = "/69732-6"
* item[=].text = "Trouble sleeping"
* item[=].answerOption[0].valueCoding = $loinc#LA18334-5 "Not bothered"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "0"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].answerOption[+].valueCoding = $loinc#LA18335-2 "Bothered a little"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "1"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].answerOption[+].valueCoding = $loinc#LA18336-0 "Bothered a lot"
* item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
* item[=].answerOption[=].extension[=].valueString = "2"
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension[=].valueDecimal = 2
* item[+].type = #decimal
* item[=].code = $loinc#70273-8 "Patient health questionnaire 15 item total score"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = $unitsofmeasure#{score} "{score}"
* item[=].required = false
* item[=].linkId = "/70273-8"
* item[=].text = "Patient health questionnaire 15 item total score"