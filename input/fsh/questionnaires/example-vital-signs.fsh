Alias: $loinc = http://loinc.org
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: Vulcan-SoA-Blood-Pressure-Panel
InstanceOf: Questionnaire
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
  * tag
    * code = #"lformsVersion: 36.0.5"
* title = "Blood pressure panel mean systolic and mean diastolic"
* status = #draft
* code = $loinc#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* item[+]
  * type = #decimal
  * code = $loinc#96608-5 "BP Sys Avg"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"
  * linkId = "/96608-5"
  * text = "BP Sys Avg"
  * item
    * text = "Average (mean) Blood Pressure (systolic and diastolic) is the average of two or more blood pressure (BP) readings in a specified time period or according to a specified algorithm or protocol.  During clinical encounters 2 or more BPs should be averaged to more accurately assess a person's BP status.  When patients are self-monitoring blood pressure (SMBP), the American Heart Association recommends a minimum of 12 readings collected over at least 3 days should be averaged to more accurately assess a person's BP status (https://www.ahajournals.org/doi/10.1161/HYP.0000000000000087, PMID: 30827125).  According to the European Society of Hypertension , \"The adverse cardiovascular consequences of hypertension, including events and mortality, largely depend on increased average BP values. Thus, decision-making in hypertension is based on average values of several BP readings obtained in and out of the office\" (https://journals.lww.com/jhypertension/Fulltext/2021/07000/2021_European_Society_of_Hypertension_practice.5.aspx, PMID: 33710173)."
    * type = #display
    * linkId = "/96608-5-help"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
      * valueCodeableConcept.text = "Help-Button"
* item[+]
  * type = #decimal
  * code = $loinc#96609-3 "BP Dias Avg"
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * extension.valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"
  * linkId = "/96609-3"
  * text = "BP Dias Avg"
  * item
    * text = "Average (mean) Blood Pressure (systolic and diastolic) is the average of two or more blood pressure (BP) readings in a specified time period or according to a specified algorithm or protocol.  During clinical encounters 2 or more BPs should be averaged to more accurately assess a person's BP status.  When patients are self-monitoring blood pressure (SMBP), the American Heart Association recommends a minimum of 12 readings collected over at least 3 days should be averaged to more accurately assess a person's BP status (https://www.ahajournals.org/doi/10.1161/HYP.0000000000000087, PMID: 30827125).  According to the European Society of Hypertension , \"The adverse cardiovascular consequences of hypertension, including events and mortality, largely depend on increased average BP values. Thus, decision-making in hypertension is based on average values of several BP readings obtained in and out of the office\" (https://journals.lww.com/jhypertension/Fulltext/2021/07000/2021_European_Society_of_Hypertension_practice.5.aspx, PMID: 33710173)."
    * type = #display
    * linkId = "/96609-3-help"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
      * valueCodeableConcept.text = "Help-Button"
      