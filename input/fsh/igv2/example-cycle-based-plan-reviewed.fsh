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
  * extension
    * url = "https://fhir.aidbox.app/fhir/StructureDefinition/created-at"
    * valueInstant = "2026-01-12T16:15:28.561043Z"
* title = "dynamic-visit-schedules-cycles-scheduled-interactions"
* type = $plan-definition-type#clinical-protocol
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* version = "V00"
* description = "dynamic-visit-schedules-cycles-scheduled-interactions"
* action[+] // IS
  * description = "IS"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-IS"
  * title = "IS"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "IS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
  * id = "3f8af28a-6333-45d6-ad9b-2a11982061cd"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "bb3a9124-dc58-460d-bc98-3473e022b3a7"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = -24 'h'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // Screen
  * description = "Screen"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Screen"
  * title = "Screen"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = -24 'h'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "IS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = -27 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
  * id = "bb3a9124-dc58-460d-bc98-3473e022b3a7"
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
        * valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f"
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
        * expression = "{'withdraw': True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
* action[+] // Rand
  * description = "Rand"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Rand"
  * title = "Rand"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "IS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
  * id = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f"
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "6f986c77-34b9-4aae-8857-020d6fbaa907"
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
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // Cycle 1 Odd
  * description = "Cycle 1 Odd"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Cycle-1-Odd"
  * title = "Cycle 1 Odd"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 24 'h'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "IS|Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS|Cycle 2 Even"
  * id = "6f986c77-34b9-4aae-8857-020d6fbaa907"
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b16fef02-51e1-4deb-a17d-1d29df0a31e0"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 27 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5"
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
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "2ffb2485-ee30-4eaa-aa1c-ef2d26559dca"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
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
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
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
* action[+] // CS-Cycle 1 Odd
  * description = "CS-Cycle 1 Odd"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CS-Cycle-1-Odd"
  * title = "CS-Cycle 1 Odd"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Cycle 1 Odd"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Cycle 1 Odd"
  * id = "2ffb2485-ee30-4eaa-aa1c-ef2d26559dca"
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33"
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
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b2d90db6-5243-47b4-9be5-3baf94d8b450"
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
* action[+] // C1D1
  * description = "C1D1"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D1"
  * title = "C1D1"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CF-Cycle 1 Odd"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CF-Cycle 1 Odd"
  * id = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "dad2920f-8eec-454d-b350-d95e3d9b0a5a"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 12 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // C1D14
  * description = "C1D14"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D14"
  * title = "C1D14"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 13 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 1 Odd"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 1 Odd"
  * id = "dad2920f-8eec-454d-b350-d95e3d9b0a5a"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 13 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // C1D28
  * description = "C1D28"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D28"
  * title = "C1D28"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 27 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 1 Odd"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 1 Odd"
  * id = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b2d90db6-5243-47b4-9be5-3baf94d8b450"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = -24 'h'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // CF-Cycle 1 Odd
  * description = "CF-Cycle 1 Odd"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CF-Cycle-1-Odd"
  * title = "CF-Cycle 1 Odd"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 27 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CF-Cycle 1 Odd"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CF-Cycle 1 Odd"
  * id = "b2d90db6-5243-47b4-9be5-3baf94d8b450"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "6f986c77-34b9-4aae-8857-020d6fbaa907"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'

* action[+] // Cycle 2 Even
  * description = "Cycle 2 Even"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Cycle-2-Even"
  * title = "Cycle 2 Even"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 28 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Cycle 1 Odd"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Cycle 1 Odd"
  * id = "b16fef02-51e1-4deb-a17d-1d29df0a31e0"
  * groupingBehavior = #visual-group
  * action[0]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'diseaseProgression':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 8.14 'wk'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "6f986c77-34b9-4aae-8857-020d6fbaa907"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 28 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "c243851a-1425-484a-88ca-8a1b6ecd3bd7"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
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
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
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
* action[+] // CS-Cycle 2 Even
  * description = "CS-Cycle 2 Even"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CS-Cycle-2-Even"
  * title = "CS-Cycle 2 Even"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Cycle 2 Even"
  * id = "c243851a-1425-484a-88ca-8a1b6ecd3bd7"
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405"
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
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "f18721e0-c1e9-487c-bb4b-b9a384212826"
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

* action[+] // C2D1
  * description = "C2D1"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D1"
  * title = "C2D1"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 2 Even"
  * id = "2a7924e0-5c1e-44fa-b795-adf30d9cc405"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "2b216476-71be-430d-8a07-949c2c50fb2d"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 5 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // C2D7
  * description = "C2D7"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D7"
  * title = "C2D7"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 6 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 2 Even"
  * id = "2b216476-71be-430d-8a07-949c2c50fb2d"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "e0f5a724-4158-4f0f-bada-17bbdae80fed"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // C2D14
  * description = "C2D14"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D14"
  * title = "C2D14"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 13 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 2 Even"
  * id = "e0f5a724-4158-4f0f-bada-17bbdae80fed"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "4cf1162b-1684-4276-afcf-e3f9c2a10ff7"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // C2D21
  * description = "C2D21"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D21"
  * title = "C2D21"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 20 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 2 Even"
  * id = "4cf1162b-1684-4276-afcf-e3f9c2a10ff7"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // C2D28
  * description = "C2D28"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D28"
  * title = "C2D28"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 27 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 2 Even"
  * id = "0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "f18721e0-c1e9-487c-bb4b-b9a384212826"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = -24 'h'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // CF-Cycle 2 Even
  * description = "CF-Cycle 2 Even"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CF-Cycle-2-Even"
  * title = "CF-Cycle 2 Even"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 27 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "CS-Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "CS-Cycle 2 Even"
  * id = "f18721e0-c1e9-487c-bb4b-b9a384212826"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b16fef02-51e1-4deb-a17d-1d29df0a31e0"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'

* action[+] // EOT
  * description = "EOT"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-EOT"
  * title = "EOT"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 8.29 'wk'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Cycle 1 Odd|Cycle 2 Even"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 7 'd'
        * high = 7 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Cycle 1 Odd|Cycle 2 Even"
  * id = "4e24fae2-834e-48a7-a8c1-d063217c1bb5"
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3b4538b1-6858-49f4-8705-6ddaec664345"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 8.43 'wk'
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
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
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
* action[+] // FU2
  * description = "FU2"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-FU2"
  * title = "FU2"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 12.86 'wk'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "FU1"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 14 'd'
        * high = 14 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "FU1"
  * id = "c198dabf-ab73-4980-b9cc-f0482e20a8af"
  * groupingBehavior = #visual-group
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = -24 'h'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
* action[+] // FU1
  * description = "FU1"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-FU1"
  * title = "FU1"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 8.57 'wk'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "EOT"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 14 'd'
        * high = 14 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "EOT"
  * id = "3b4538b1-6858-49f4-8705-6ddaec664345"
  * groupingBehavior = #visual-group
  * action[0].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "c198dabf-ab73-4980-b9cc-f0482e20a8af"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 12.71 'wk'
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
        * valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
* action[+] // IF
  * id = "d44db18e-f0cf-4126-9485-fbcf24046c28"
  * title = "IF"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "FU2"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 0 's'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 4.29 'wk'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "FU2"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-IF"
  * description = "IF"