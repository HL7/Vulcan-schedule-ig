Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type

Instance: dynamic-visit-schedule-exit-example-PlanDefinition
InstanceOf: PlanDefinition
Usage: #example
* name = "dynamic-visit-schedule-exit-example-PlanDefinition"
* title = "dynamic-visit-schedule-exit-example-PlanDefinition"
* type = $plan-definition-type#clinical-protocol
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* version = "V00"
* meta
  * lastUpdated = "2026-01-09T20:46:14.391964Z"
  * versionId = "711"
  * extension
    * url = "https://fhir.aidbox.app/fhir/StructureDefinition/created-at"
    * valueInstant = "2026-01-08T16:43:50.193978Z"
* description = "dynamic-visit-schedule-exit-example-PlanDefinition"
* status = #active
* identifier
  * value = "12c63d44-415f-4834-bd6c-630790711d4b"
  * system = "http://www.fhir4pharma.com/plandefinition"
* action[0] // Screening
  * id = "0700e721-1f12-4998-89b8-6f4e649b62f7"
  * description = "Screening"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedule-exit-example-Screening-PlanDefinition"
  * title = "Screening"
  * selectionBehavior = #exactly-one
  * extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
    * extension[0]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaPlannedTimePoint"
      * valueQuantity = -1 'd'
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 'd'
        * high = 13 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Treatment Day 1"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Treatment Day 1"
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
      * valueString = "a1806239-54f3-4762-af3f-edb9d80d29dc" // Treatment Day 1
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "SS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 1 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0 'd'
        * high = 13 'd'
* action[+] // Treatment Day 1
  * id = "a1806239-54f3-4762-af3f-edb9d80d29dc"
  * description = "Treatment Day 1"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedule-exit-example-Treatment-Day-1-PlanDefinition"
  * title = "Treatment Day 1"
  * selectionBehavior = #exactly-one
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
        * low = 0 'h'
        * high = 0 'h'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Treatment Day 1"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Treatment Day 1"
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
      * valueString = "349447c3-8ad4-4034-8c31-c3d96dcc5f9a" // Day 7
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
        * valueString = "dbc35dee-a5f2-473f-b9b1-bb14b2a1c9ef" // End of Study
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 5 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 1 'd'
          * high = 1 'd'
* action[+] // Day 7
  * id = "349447c3-8ad4-4034-8c31-c3d96dcc5f9a"
  * description = "Day 7"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedule-exit-example-Day-7-PlanDefinition"
  * title = "Day 7"
  * selectionBehavior = #exactly-one
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
      * valueString = "Treatment Day 1"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Treatment Day 1"
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
        * expression = "{'withdraw':True, 'operation': '=='}"
    * extension
      * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
      * extension[0]
        * url = "soaTargetId"
        * valueString = "dbc35dee-a5f2-473f-b9b1-bb14b2a1c9ef" // End of Study
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 5 'd'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 1 'd'
          * high = 1 'd'
  * action[+].extension
    * url = "http://fhir4pharma.com/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "d0dd287a-0a87-439d-95cc-8690e7abf0cb" // Day 15
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 7 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 2 'd'
        * high = 2 'd'
* action[+] // Day 15
  * id = "d0dd287a-0a87-439d-95cc-8690e7abf0cb"
  * description = "Day 15"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedule-exit-example-Day-15-PlanDefinition"
  * title = "Day 15"
  * selectionBehavior = #exactly-one
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
      * valueString = "Treatment Day 1"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Treatment Day 1"
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
      * valueString = "dbc35dee-a5f2-473f-b9b1-bb14b2a1c9ef" // End of Study
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
* action[+] // End of Study 
  * id = "dbc35dee-a5f2-473f-b9b1-bb14b2a1c9ef"
  * description = "End of Study"
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedule-exit-example-End-of-Study-PlanDefinition"
  * title = "End of Study"
  * selectionBehavior = #exactly-one
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
        * low = 1 'd'
        * high = 1 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Treatment Day 1"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Treatment Day 1"
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
      * valueString = "76fb46ca-2a08-4421-8ce9-b8d412db2fb5" // Follow Up
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 30 'd'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 7 'd'
        * high = 7 'd'
* action[+] // Follow Up
  * id = "76fb46ca-2a08-4421-8ce9-b8d412db2fb5"
  * title = "Follow Up"
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
      * valueString = "End of Study"
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "End of Study"
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
  * definitionCanonical = "PlanDefinition/dynamic-visit-schedule-exit-example-Follow-Up-PlanDefinition"
  * description = "Follow Up"


