Instance: Chemistry-ActivityDefinition
InstanceOf: ActivityDefinition
Usage: #example
* status = #draft
* experimental = true
* name = "Chemistry"
* title = "Chemistry"
* kind = #Task
* subjectReference = Reference(Group/ResearchStudySubject)
* purpose = "[ResearchStudy] Activity Chemistry Specification"
* participant[0].type = #patient
* participant[+].type = #practitioner
* observationRequirement[0] = "http://example.org/ObservationDefinition/LOINC-1742-6-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-1751-7-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-6768-6-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-1920-8-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-1959-6-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-30522-7-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-17861-6-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-2075-0-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-2160-0-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-2276-4-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-2345-7-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-4548-4-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-19123-9-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-2777-1-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-2823-3-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-2951-2-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-3094-0-ObservationDefinition"
* specimenRequirement[0] = "http://example.org/SpecimenDefinition/LOINC-LP7576-4-SpecimenDefinition"