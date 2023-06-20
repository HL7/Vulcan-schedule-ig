Instance: Haematology-ActivityDefinition
InstanceOf: ActivityDefinition
Usage: #example
* status = #draft
* experimental = true
* name = "CBC_W_Diff_pnl_unspecified_Bld-69742-5"
* title = "CBC_W_Diff_pnl_unspecified_Bld-69742-5"
* kind = #Task
* subjectReference = Reference(Group/ResearchStudySubject)
* purpose = "[ResearchStudy] Activity CBC_W_Diff_pnl_unspecified_Bld-69742-5 Specification"
* participant[0].type = #patient
* participant[+].type = #practitioner
* observationRequirement[0] = "http://example.org/ObservationDefinition/LOINC-20570-8-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-26453-1-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-718-7-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-26515-7-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-28539-5-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-28540-3-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-28542-9-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-30384-2-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-30385-9-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-30428-7-ObservationDefinition"
* observationRequirement[+] = "http://example.org/ObservationDefinition/LOINC-69738-3-ObservationDefinition"
* specimenRequirement[0] = "http://example.org/SpecimenDefinition/SNOMED-119297000-SpecimenDefinition"

Instance: HaematologyCRF-ActivityDefinition
InstanceOf: ActivityDefinition
Usage: #example
* status = #draft
* experimental = true
* name = "HaematologyCRF"
* title = "HaematologyCRF"
* kind = #Task
* subjectReference = Reference(Group/ResearchStudySubject)
* purpose = "[ResearchStudy] Activity HaematologyCRF Specification"
* participant[0].type = #patient
* participant[+].type = #practitioner
* observationRequirement[0] = "http://example.org/ObservationDefinition/heamatology-ObservationDefinition"
* specimenRequirement[0] = "http://example.org/SpecimenDefinition/SNOMED-119297000-SpecimenDefinition"
