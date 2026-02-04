Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type

Instance: dynamic-visit-schedule-multiple-paths
InstanceOf: PlanDefinition
Usage: #example
* name = "dynamic-visit-schedule-multiple-paths"
* status = #active
* identifier.value = "3641eee9-6b4b-4867-8de3-377850b54803"
* identifier.system = "http://www.fhir4pharma.com/plandefinition"
* action[0].description = "IS"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-IS"
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
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "4398cb36-6989-4cae-9771-e531d1dc370e"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "cc3daf2f-ebbe-4f51-ae35-108639615343"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = -15 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "Screening"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-Screening"
* action[=].title = "Screening"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = -14 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "cc3daf2f-ebbe-4f51-ae35-108639615343"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "ca0f638b-0d7a-450a-8613-0b74c9ab93c4"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 6 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "Randomisation"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-Randomisation"
* action[=].title = "Randomisation"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = -7 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "ca0f638b-0d7a-450a-8613-0b74c9ab93c4"
* action[=].groupingBehavior = #visual-group
* action[=].action[0].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'Randomised to Arm-A':'True','operation':'=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "d32e1a5e-e9d6-4548-9937-a6cf05d8557e"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 7 'd'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[=].action[+].condition.kind = #start
* action[=].action[=].condition.expression.language = #text/x-soa-expressionplain
* action[=].action[=].condition.expression.expression = "{'Randomised to Arm-B':'True','operation':'=='}"
* action[=].action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action[=].extension.extension[0].url = "soaTargetId"
* action[=].action[=].extension.extension[=].valueString = "8ce16420-7861-41fe-a85c-e0861c48ff1c"
* action[=].action[=].extension.extension[+].url = "soaTransitionType"
* action[=].action[=].extension.extension[=].valueString = "FS"
* action[=].action[=].extension.extension[+].url = "soaTransitionDelay"
* action[=].action[=].extension.extension[=].valueDuration = 0 's'
* action[=].action[=].extension.extension[+].url = "soaTransitionRange"
* action[=].action[=].extension.extension[=].valueRange.low = 0 's'
* action[=].action[=].extension.extension[=].valueRange.high = 0 's'
* action[+].description = "D1-A"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-D1-A"
* action[=].title = "D1-A"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 24 'h'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "d32e1a5e-e9d6-4548-9937-a6cf05d8557e"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "739689ca-cdea-46d4-babf-9affcddd8234"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 0 's'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "D2-A"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-D2-A"
* action[=].title = "D2-A"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 2 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "D1-A"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "D1-A"
* action[=].id = "739689ca-cdea-46d4-babf-9affcddd8234"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "4e8e51fc-d850-483d-9eac-d721acc819a4"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 4 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "D7-A"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-D7-A"
* action[=].title = "D7-A"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 7 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "D1-A"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "D1-A"
* action[=].id = "4e8e51fc-d850-483d-9eac-d721acc819a4"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "b840d1a0-5604-4707-b65a-090ecd6faf87"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 7 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "D15-A"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-D15-A"
* action[=].title = "D15-A"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 15 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "D1-A"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "D1-A"
* action[=].id = "b840d1a0-5604-4707-b65a-090ecd6faf87"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "b4b8c5ea-88f1-46c9-abfc-df698548640d"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 0 's'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "D1-B"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-D1-B"
* action[=].title = "D1-B"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 24 'h'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "8ce16420-7861-41fe-a85c-e0861c48ff1c"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "9ff38e4e-fc7a-45a7-90e6-d79e331a1145"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 5 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "D7-B"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-D7-B"
* action[=].title = "D7-B"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 7 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "D1-B"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "D1-B"
* action[=].id = "9ff38e4e-fc7a-45a7-90e6-d79e331a1145"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "8e9c31fb-1710-4a1d-959c-6c8b101ca8a2"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = 7 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "D15-B"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-D15-B"
* action[=].title = "D15-B"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 15 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "D1-B"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "D1-B"
* action[=].id = "8e9c31fb-1710-4a1d-959c-6c8b101ca8a2"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "b4b8c5ea-88f1-46c9-abfc-df698548640d"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = -2 'd'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].description = "End of Study"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-End-of-Study"
* action[=].title = "End of Study"
* action[=].selectionBehavior = #exactly-one
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 28 'd'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "IS"
* action[=].id = "b4b8c5ea-88f1-46c9-abfc-df698548640d"
* action[=].groupingBehavior = #visual-group
* action[=].action.extension.url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[=].action.extension.extension[0].url = "soaTargetId"
* action[=].action.extension.extension[=].valueString = "732f82cb-2445-496d-af14-db0f51f769dd"
* action[=].action.extension.extension[+].url = "soaTransitionType"
* action[=].action.extension.extension[=].valueString = "FS"
* action[=].action.extension.extension[+].url = "soaTransitionDelay"
* action[=].action.extension.extension[=].valueDuration = -24 'h'
* action[=].action.extension.extension[+].url = "soaTransitionRange"
* action[=].action.extension.extension[=].valueRange.low = 0 's'
* action[=].action.extension.extension[=].valueRange.high = 0 's'
* action[+].id = "732f82cb-2445-496d-af14-db0f51f769dd"
* action[=].title = "IF"
* action[=].extension.url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
* action[=].extension.extension[0].url = "soaPlannedTimePoint"
* action[=].extension.extension[=].valueQuantity = 0 's'
* action[=].extension.extension[+].url = "soaReferenceTimePoint"
* action[=].extension.extension[=].valueString = "End of Study"
* action[=].extension.extension[+].url = "soaRepeatAllowed"
* action[=].extension.extension[=].valueBoolean = false
* action[=].extension.extension[+].url = "soaPlannedDuration"
* action[=].extension.extension[=].valueDuration = 24 'h'
* action[=].extension.extension[+].url = "soaTimePointType"
* action[=].extension.extension[=].valueString = "Interaction"
* action[=].extension.extension[+].url = "soaPlannedRange"
* action[=].extension.extension[=].valueRange.low = 24 'h'
* action[=].extension.extension[=].valueRange.high = 24 'h'
* action[=].extension.extension[+].url = "soaRangeFromTimePoint"
* action[=].extension.extension[=].valueString = "End of Study"
* action[=].definitionCanonical = "PlanDefinition/dynamic-visit-schedule-multiple-paths-IF"
* action[=].description = "IF"
* title = "dynamic-visit-schedule-multiple-paths"
* type = $plan-definition-type#clinical-protocol
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* version = "V00"
* meta.lastUpdated = "2026-01-09T19:57:46.133690Z"
* meta.versionId = "691"
* meta.extension.url = "https://fhir.aidbox.app/fhir/StructureDefinition/created-at"
* meta.extension.valueInstant = "2026-01-09T19:57:46.133690Z"
* description = "dynamic-visit-schedule-multiple-paths"