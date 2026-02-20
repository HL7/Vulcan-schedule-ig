Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type

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
* action[+] // Screening
  * id = "cc3daf2f-ebbe-4f51-ae35-108639615343"
  * title = "Screening"
  * description = "Screening"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/Screening"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = -1 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 13 'd'
        * high = 0 'd'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "ca0f638b-0d7a-450a-8613-0b74c9ab93c4" // Baseline  
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = -1 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 13 'd'
        * high = 0 'd'
* action[+] // Baseline
  * id = "ca0f638b-0d7a-450a-8613-0b74c9ab93c4"
  * title = "Baseline"
  * description = "Baseline"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/Baseline"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 'd'
        * high = 0 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * action[0]
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "d32e1a5e-e9d6-4548-9937-a6cf05d8557e" // D1
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 1 'd'
          * high = 1 'd'
* action[+] // D1
  * id = "d32e1a5e-e9d6-4548-9937-a6cf05d8557e"
  * title = "D1"
  * description = "D1"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D1"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 1 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 1 'd'
        * high = 1 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * action[0]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'Randomised to Arm-A':'true'}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "739689ca-cdea-46d4-babf-9affcddd8234" // D2
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 1 'd'
          * high = 1 'd'
  * action[+]
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'Randomised to Arm-B':'true'}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "4e8e51fc-d850-483d-9eac-d721acc819a4" // D7
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 6 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 1 'd'
          * high = 1 'd'
* action[+] // D2
  * id = "739689ca-cdea-46d4-babf-9affcddd8234"
  * title = "D2"
  * description = "D2"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D2"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 2 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 1 'd'
        * high = 1 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "4e8e51fc-d850-483d-9eac-d721acc819a4" // D7
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 4 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 1 'd'
        * high = 1 'd'
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
* action[+] // D7
  * id = "4e8e51fc-d850-483d-9eac-d721acc819a4"
  * title = "D7"
  * description = "D7"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D7"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 7 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 1 'd'
        * high = 1 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b840d1a0-5604-4707-b65a-090ecd6faf87" // D15
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 7 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 1 'd'
        * high = 1 'd'
* action[+] // D15
  * id = "b840d1a0-5604-4707-b65a-090ecd6faf87"
  * title = "D15"
  * description = "D15"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/D15"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 15 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
  * action.extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "b4b8c5ea-88f1-46c9-abfc-df698548640d" // End of Study
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 5 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 3 'd'
        * high = 3 'd'
* action[+] // End of Study
  * id = "b4b8c5ea-88f1-46c9-abfc-df698548640d"
  * title = "End of Study"
  * description = "End of Study"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/End-of-Study"
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 21 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 3 'd'
        * high = 3 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false