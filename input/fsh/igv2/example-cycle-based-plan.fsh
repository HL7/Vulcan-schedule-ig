Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type

Instance: dynamic-visit-schedules-cycles-scheduled-interactions
InstanceOf: PlanDefinition
Usage: #example
* name = "dynamic-visit-schedules-cycles-scheduled-interactions"
* status = #active
* identifier.value = "4e595e25-138f-4a04-ba21-4c251ec0b76e"
* identifier.system = "http://www.fhir4pharma.com/plandefinition"
* action[0].description = "C2D28"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D28"
* action[=].title = "C2D28"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 27 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].id = "0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "f18721e0-c1e9-487c-bb4b-b9a384212826"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = -24 'h'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "CF-Cycle 2 Even"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CF-Cycle-2-Even"
* action[=].title = "CF-Cycle 2 Even"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 27 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 0 's'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].id = "f18721e0-c1e9-487c-bb4b-b9a384212826"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "b16fef02-51e1-4deb-a17d-1d29df0a31e0"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "SS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 0 's'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "C1D14"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D14"
* action[=].title = "C1D14"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 13 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 1 Odd"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 1 Odd"
* action[=].id = "dad2920f-8eec-454d-b350-d95e3d9b0a5a"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 13 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "IS"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-IS"
* action[=].title = "IS"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 0 's'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "3f8af28a-6333-45d6-ad9b-2a11982061cd"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "bb3a9124-dc58-460d-bc98-3473e022b3a7"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = -24 'h'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "EOT"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-EOT"
* action[=].title = "EOT"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 8.29 'wk'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 1 Odd|Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 7 'd'
* action[=].extension.extension[=].valueRange.high = 7 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 1 Odd|Cycle 2 Even"
* action[=].id = "4e24fae2-834e-48a7-a8c1-d063217c1bb5"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "3b4538b1-6858-49f4-8705-6ddaec664345"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 8.43 'wk'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'withdraw':True, 'operation': '=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "FU2"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-FU2"
* action[=].title = "FU2"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 12.86 'wk'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "FU1"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 14 'd'
* action[=].extension.extension[=].valueRange.high = 14 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "FU1"
* action[=].id = "c198dabf-ab73-4980-b9cc-f0482e20a8af"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = -24 'h'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "C2D21"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D21"
* action[=].title = "C2D21"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 20 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].id = "4cf1162b-1684-4276-afcf-e3f9c2a10ff7"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "0b0c7a91-e5e0-40b1-adfa-0b2db535c4cf"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 6 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "C2D14"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D14"
* action[=].title = "C2D14"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 13 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].id = "e0f5a724-4158-4f0f-bada-17bbdae80fed"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "4cf1162b-1684-4276-afcf-e3f9c2a10ff7"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 6 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "C2D7"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D7"
* action[=].title = "C2D7"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 6 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].id = "2b216476-71be-430d-8a07-949c2c50fb2d"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "e0f5a724-4158-4f0f-bada-17bbdae80fed"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 6 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "Cycle 2 Even"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Cycle-2-Even"
* action[=].title = "Cycle 2 Even"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 28 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 1 Odd"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 1 Odd"
* action[=].id = "b16fef02-51e1-4deb-a17d-1d29df0a31e0"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'diseaseProgression':True, 'operation': '=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 8.14 'wk'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "6f986c77-34b9-4aae-8857-020d6fbaa907"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "SS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 28 'd'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "c243851a-1425-484a-88ca-8a1b6ecd3bd7"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "SS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'withdraw':True, 'operation': '=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "FU1"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-FU1"
* action[=].title = "FU1"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 8.57 'wk'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "EOT"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 14 'd'
* action[=].extension.extension[=].valueRange.high = 14 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "EOT"
* action[=].id = "3b4538b1-6858-49f4-8705-6ddaec664345"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "c198dabf-ab73-4980-b9cc-f0482e20a8af"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 12.71 'wk'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'withdraw':True, 'operation': '=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "SS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "Rand"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Rand"
* action[=].title = "Rand"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "6f986c77-34b9-4aae-8857-020d6fbaa907"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "SS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "CS-Cycle 2 Even"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CS-Cycle-2-Even"
* action[=].title = "CS-Cycle 2 Even"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 0 's'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 2 Even"
* action[=].id = "c243851a-1425-484a-88ca-8a1b6ecd3bd7"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "2a7924e0-5c1e-44fa-b795-adf30d9cc405"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "f18721e0-c1e9-487c-bb4b-b9a384212826"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "C1D28"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D28"
* action[=].title = "C1D28"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 27 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 1 Odd"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 1 Odd"
* action[=].id = "a92033b4-f2d7-49d4-bb94-50a1f6f1f50b"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "b2d90db6-5243-47b4-9be5-3baf94d8b450"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = -24 'h'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "C2D1"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C2D1"
* action[=].title = "C2D1"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CS-Cycle 2 Even"
* action[=].id = "2a7924e0-5c1e-44fa-b795-adf30d9cc405"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "2b216476-71be-430d-8a07-949c2c50fb2d"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 5 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].id = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].title = "IF"
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "FU2"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 0 's'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].extension.extension[=].valueRange.high = 4.29 'wk'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "FU2"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-IF"
* action[=].description = "IF"
* action[+].description = "Cycle 1 Odd"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Cycle-1-Odd"
* action[=].title = "Cycle 1 Odd"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 24 'h'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS|Cycle 2 Even"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS|Cycle 2 Even"
* action[=].id = "6f986c77-34b9-4aae-8857-020d6fbaa907"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "b16fef02-51e1-4deb-a17d-1d29df0a31e0"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 27 'd'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "4e24fae2-834e-48a7-a8c1-d063217c1bb5"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "2ffb2485-ee30-4eaa-aa1c-ef2d26559dca"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "SS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'withdraw':True, 'operation': '=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "Screen"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-Screen"
* action[=].title = "Screen"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = -24 'h'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].extension.extension[=].valueRange.high = -27 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "bb3a9124-dc58-460d-bc98-3473e022b3a7"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].condition[0].kind = #start
* action[=].action[=].condition[=].expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition[=].expression.expression = "{'informedConsentSigned': True, 'operation': '=='}"
* action[=].action[=].condition[+].kind = #start
* action[=].action[=].condition[=].expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition[=].expression.expression = "{'eligible':True, 'operation': '=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "0e8beeb2-35e4-4d40-b51b-8b8b8c568e5f"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'withdraw': True, 'operation': '=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "d44db18e-f0cf-4126-9485-fbcf24046c28"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "SS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "C1D1"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-C1D1"
* action[=].title = "C1D1"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CF-Cycle 1 Odd"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CF-Cycle 1 Odd"
* action[=].id = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "dad2920f-8eec-454d-b350-d95e3d9b0a5a"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 12 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "CS-Cycle 1 Odd"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CS-Cycle-1-Odd"
* action[=].title = "CS-Cycle 1 Odd"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 1 Odd"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 0 's'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "Cycle 1 Odd"
* action[=].id = "2ffb2485-ee30-4eaa-aa1c-ef2d26559dca"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "f13afc27-d3b1-4a52-89dc-ffccdd6fbc33"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "b2d90db6-5243-47b4-9be5-3baf94d8b450"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "CF-Cycle 1 Odd"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions-CF-Cycle-1-Odd"
* action[=].title = "CF-Cycle 1 Odd"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 27 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "CF-Cycle 1 Odd"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 0 's'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 2 'd'
* action[=].extension.extension[=].valueRange.high = 2 'd'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "CF-Cycle 1 Odd"
* action[=].id = "b2d90db6-5243-47b4-9be5-3baf94d8b450"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "6f986c77-34b9-4aae-8857-020d6fbaa907"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "SS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 0 's'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* title = "dynamic-visit-schedules-cycles-scheduled-interactions"
* type = $plan-definition-type#clinical-protocol
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* version = "V00"
* meta.lastUpdated = "2026-01-15T13:31:12.670673Z"
* meta.versionId = "3473"
* meta.extension.url = "https://fhir.aidbox.app/fhir/StructureDefinition/created-at"
* meta.extension.valueInstant = "2026-01-12T16:15:28.561043Z"
* description = "dynamic-visit-schedules-cycles-scheduled-interactions"