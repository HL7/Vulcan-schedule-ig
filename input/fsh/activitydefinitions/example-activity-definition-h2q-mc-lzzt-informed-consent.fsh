
//
// --- Observation Definition - Informed Consent
//

Instance: InformedConsentStatus
InstanceOf: ObservationDefinition
Description: "Informed Consent Status"
Usage: #example
Title: "Informed Consent Status"

* status = #registered

* code[+].coding[+].system = "http://loinc.org"
* code[=].coding[=].code = #77602-1
* code[=].coding[=].display = "Research study consent"

* permittedDataType = #boolean

//
// --- Activity Definition - Informed Consent
//

Instance: InformedConsent
InstanceOf: ActivityDefinition
Description: "Informed Consent"
Usage: #example
Title: "Research Subject Informed Consent"

* status = #draft
* experimental = true

* kind = #Task

* subjectReference = Reference(ResearchStudySubject)

* purpose = "Obtain or Confirm [ResearchStudy] has completed Informed Consent Process"

* code[+].coding[+].system = "http://snomed.info/sct"
* code[=].coding[=].code = #55149002
* code[=].coding[=].display = "Procurement of patient informed consent, investigational study (procedure)"

* participant[+].type = #patient
* participant[+].type = #practitioner
* participant[=].role.coding.system = "http://hl7.org/fhir/action-participant-function" 
* participant[=].role.coding.code = #performer
* participant[=].role.coding.display = "Performer"

* observationResultRequirement[+] = Canonical(InformedConsentStatus)

* dynamicValue[+].path = "ResearchSubject"
* dynamicValue[=].expression.language =  #text/fhirpath
* dynamicValue[=].expression.expression =  "ResearchSubject.progress.milestone = #InformedConsentObtained"
