Instance: dynamic-visit-schedule-multiple-paths
InstanceOf: PlanDefinition
Usage: #example
* meta
  * versionId = "0"
  * lastUpdated = "2025-11-19T17:32:42Z"
* identifier
  * system = "http://www.fhir4pharma.com/plandefinition"
  * value = "eaa6324c-6103-452e-b82a-6ba910e7a3b2"
* version = "V00"
* name = "dynamic-visit-schedule-multiple-paths"
* title = "dynamic-visit-schedule-multiple-paths"
* type = $plan-definition-type#clinical-protocol
* status = #active
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* description = "dynamic-visit-schedule-multiple-paths"
* action[0]
  * id = "4398cb36-6989-4cae-9771-e531d1dc370e"
  * extension
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "IS"
  * description = "IS"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/IS"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "cc3daf2f-ebbe-4f51-ae35-108639615343"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = -15 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "cc3daf2f-ebbe-4f51-ae35-108639615343"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = -14 'd'
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "Screening"
  * description = "Screening"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/Screening"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "ca0f638b-0d7a-450a-8613-0b74c9ab93c4"
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
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "ca0f638b-0d7a-450a-8613-0b74c9ab93c4"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = -7 'd'
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "Randomisation"
  * description = "Randomisation"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/Randomisation"
  * action[0]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "d32e1a5e-e9d6-4548-9937-a6cf05d8557e"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 7 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'Randomised to Arm-A':'true'}"
  * action[+]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "8ce16420-7861-41fe-a85c-e0861c48ff1c"
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
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'Randomised to Arm-B':'true'}"
* action[+]
  * id = "d32e1a5e-e9d6-4548-9937-a6cf05d8557e"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 24 'h'
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "D1-A"
  * description = "D1-A"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D1-A"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "739689ca-cdea-46d4-babf-9affcddd8234"
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
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "739689ca-cdea-46d4-babf-9affcddd8234"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "D1-A"
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "D1-A"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "D2-A"
  * description = "D2-A"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D2-A"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "4e8e51fc-d850-483d-9eac-d721acc819a4"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 4 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "4e8e51fc-d850-483d-9eac-d721acc819a4"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 7 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "D1-A"
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "D1-A"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "D7-A"
  * description = "D7-A"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D7-A"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b840d1a0-5604-4707-b65a-090ecd6faf87"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 7 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "b840d1a0-5604-4707-b65a-090ecd6faf87"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 15 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "D1-A"
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "D1-A"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "D15-A"
  * description = "D15-A"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D15-A"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b4b8c5ea-88f1-46c9-abfc-df698548640d"
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
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "8ce16420-7861-41fe-a85c-e0861c48ff1c"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 24 'h'
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "D1-B"
  * description = "D1-B"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D1-B"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "9ff38e4e-fc7a-45a7-90e6-d79e331a1145"
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
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "9ff38e4e-fc7a-45a7-90e6-d79e331a1145"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 7 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "D1-B"
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "D1-B"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "D7-B"
  * description = "D7-B"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D7-B"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "8e9c31fb-1710-4a1d-959c-6c8b101ca8a2"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 7 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "8e9c31fb-1710-4a1d-959c-6c8b101ca8a2"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 15 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "D1-B"
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "D1-B"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "D15-B"
  * description = "D15-B"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D15-B"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b4b8c5ea-88f1-46c9-abfc-df698548640d"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = -2 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "b4b8c5ea-88f1-46c9-abfc-df698548640d"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 28 'd'
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "End of Study"
  * description = "End of Study"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/End-of-Study"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "732f82cb-2445-496d-af14-db0f51f769dd"
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
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+]
  * id = "732f82cb-2445-496d-af14-db0f51f769dd"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "End of Study"
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
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "End of Study"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "IF"
  * description = "IF"
  * definitionCanonical = "http://example.org/Encounter/IF"