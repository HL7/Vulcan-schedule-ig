Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type

Instance: dynamic-visit-schedules-cycles-scheduled-interactions
InstanceOf: PlanDefinition
Usage: #example
* name = "dynamic-visit-schedules-cycles-scheduled-interactions"
* status = #active
* identifier
  * value = "4e595e25-138f-4a04-ba21-4c251ec0b76e"
  * system = "http://www.fhir4pharma.com/plandefinition"
* meta
  * lastUpdated = "2026-01-15T13:31:12.670673Z"
  * versionId = "3473"
* title = "dynamic-visit-schedules-cycles-scheduled-interactions"
* type = $plan-definition-type#clinical-protocol
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* version = "V00"
* description = "dynamic-visit-schedules-cycles-scheduled-interactions"
* action[+] // Screening
  * id = "bb3a9124-dc58-460d-bc98-3473e022b3a7"
  * title = "Screen"
  * description = "Screening"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Screen"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = -24 'h'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = -27 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f" // Randomization
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f" // Randomization
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * groupingBehavior = #visual-group
  * action[0]
    * condition[0]
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'informedConsentSigned': True, 'operation': '=='}"
    * condition[+]
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'eligible':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f" // Randomization
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 'd'
          * high = 13 'd'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'withdraw': True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28" // End of Treatment
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
* action[+] // Randomization
  * id = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f"
  * title = "Rand"
  * description = "Randomization"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Rand"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f" // Randomization
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f" // Randomization
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * groupingBehavior = #visual-group
  * action[0]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'startCycle':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33" // Cycle 1 Day 1
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'withdraw':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28" // End of Study
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'

* action[+] // Cycle 1 Day 1
  * id = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33"
  * title = "C1D1"
  * description = "Cycle 1 Day 1"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D1"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f|0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf" // Randomization or Cycle 2 Day 28
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f|0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf" // Randomization or Cycle 2 Day 28
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "dad2920f-8eec-454d-b350-d95e3d9b0a5a" // Cycle 1 Day 14
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 12 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
* action[+] // Cycle 1 Day 14
  * id = "dad2920f-8eec-454d-b350-d95e3d9b0a5a"
  * title = "C1D14"
  * description = "Cycle 1 Day 14"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D14"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 13 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33" // Cycle 1 Day 1
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33" // Cycle 1 Day 1
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b" // Cycle 1 Day 28
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 13 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
* action[+] // Cycle 1 Day 28
  * id = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b"
  * title = "C1D28"
  * description = "Cycle 1 Day 28"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Cycle1Day28"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 27 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33" // Cycle 1 Day 1
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33" // Cycle 1 Day 1
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action[0]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'startCycle':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "b2d90db6-5243-47b4-9be5-3baf94d8b450" // Cycle 2 Day 1
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 'h'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'adverseEvent':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5" // End of Treatment
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 30 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 7 'd'
          * high = 7 'd'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'studyCompletion':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5" // End of Treatment
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 30 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 7 'd'
          * high = 7 'd'
* action[+] // Cycle 2 Day 1
  * id = "2a7924e0-5c1e-44fa-b795-adf30d9cc405"
  * title = "C2D1"
  * description = "Cycle 2 Day 1"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D1"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b" // Cycle 1 Day 28
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b" // Cycle 1 Day 28
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "2b216476-71be-430d-8a07-949c2c50fb2d" // Cycle 2 Day 7
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 5 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
* action[+] // Cycle 2 Day 7
  * id = "2b216476-71be-430d-8a07-949c2c50fb2d"
  * title = "C2D7"
  * description = "Cycle 2 Day 7"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Cycle2Day7"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 6 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "e0f5a724-4158-4f0f-bada-17bbdae80fed" // Cycle 2 Day 14
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
* action[+] // Cycle 2 Day 14
  * id = "e0f5a724-4158-4f0f-bada-17bbdae80fed"
  * title = "C2D14"
  * description = "Cycle 2 Day 14"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D14"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 13 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "4cf1162b-1684-4276-afcf-e3f9c2a10ff7" // Cycle 2 Day 21
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
* action[+] // Cycle 2 Day 21
  * id = "4cf1162b-1684-4276-afcf-e3f9c2a10ff7"
  * description = "Cycle 2 Day 21"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D21"
  * title = "C2D21"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 20 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf" // Cycle 2 Day 28
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
* action[+] // Cycle 2 Day 28
  * id = "0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf"
  * title = "C2D28"
  * description = "Cycle 2 Day 28"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D28"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 27 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405" // Cycle 2 Day 1
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
  * groupingBehavior = #visual-group
  * action[0]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'startCycle':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33" // Cycle 1 Day 1
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'AdverseEvent':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5" // End of Treatment
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 30 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 7 'd'
          * high = 7 'd'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'diseaseProgression':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5" // End of Treatment
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 30 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 7 'd'
          * high = 7 'd'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'studyCompletion':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5" // End of Treatment
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 30 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 7 'd'
          * high = 7 'd'
* action[+] // End of Treatment
  * id = "4e24fae2-834e-48a7-a8c1-d063217c1bb5"
  * title = "EOT"
  * description = "End of Treatment"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-EOT"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 30 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 7 'd'
        * high = 7 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b|0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf" // Cycle 1 Day 28 or Cycle 2 Day 28
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b|0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf" // Cycle 1 Day 28 or Cycle 2 Day 28
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3b4538b1-6858-49f4-8705-6ddaec664345" // Follow-up 1
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 60 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 14 'd'
        * high = 14 'd'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'lostToFollowUp':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28" // End of Study
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
* action[+] // Follow-up 1
  * id = "3b4538b1-6858-49f4-8705-6ddaec664345"
  * description = "Follow-up 1"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-FU1"
  * title = "FU1"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 60 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 14 'd'
        * high = 14 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5" // End of Treatment
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5" // End of Treatment
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "c198dabf-ab73-4980-b9cc-f0482e20a8af" // Follow-up 2
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 90 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 14 'd'
        * high = 14 'd'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'withdraw':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28" // End of Study
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
* action[+] // Follow-up 2
  * id = "c198dabf-ab73-4980-b9cc-f0482e20a8af"
  * title = "FU2"
  * description = "Follow-up 2"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-FU2"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 90 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 14 'd'
        * high = 14 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "3b4538b1-6858-49f4-8705-6ddaec664345" // Follow-up 1
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "3b4538b1-6858-49f4-8705-6ddaec664345" // Follow-up 1
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28" // End of Study
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0  'h'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // End of Study
  * id = "d44db18e-f0cf-4126-9485-fbcf24046c28"
  * title = "EOS"
  * description = "End of Study"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "bb3a9124-dc58-460d-bc98-3473e022b3a7|4e24fae2-834e-48a7-a8c1-d063217c1bb5|3b4538b1-6858-49f4-8705-6ddaec664345|c198dabf-ab73-4980-b9cc-f0482e20a8af" // Screening, End of Treatment, Follow-up 1 or Follow-up 2, Follow up 1 or 2
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "bb3a9124-dc58-460d-bc98-3473e022b3a7|4e24fae2-834e-48a7-a8c1-d063217c1bb5|3b4538b1-6858-49f4-8705-6ddaec664345|c198dabf-ab73-4980-b9cc-f0482e20a8af" // Screening, End of Treatment, Follow-up 1 or Follow-up 2, Follow up 1 or 2
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
