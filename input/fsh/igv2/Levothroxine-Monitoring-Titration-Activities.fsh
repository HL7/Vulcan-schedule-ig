Instance: Levothroxine-Monitoring-Titration-Activities
InstanceOf: PlanDefinition
Usage: #example
* meta
  * versionId = "0"
  * lastUpdated = "2026-03-11T16:01:52Z"
* identifier
  * system = "http://example.org/plandefinition"
  * value = "c4ef9bcf-718f-421a-984e-45dae567935e"
* version = "V00"
* name = "Levothroxine-Monitoring-Titration-Activities"
* title = "Levothroxine-Monitoring-Titration-Activities"
* type = $plan-definition-type#clinical-protocol
* status = #active
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* description = "Levothroxine-Monitoring"
* action[0]
  * id = "0088a1c5-86ff-4081-b8ac-d0ec38c31f40"
  * definitionCanonical = "http://example.org/ActivityDefinition/start"
  * title = "AS"
  * description = "Activity Start"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30.0 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "AS"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "82f88cb2-d416-4e67-8753-e24b55186873"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0.0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "Blood Sample"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "82f88cb2-d416-4e67-8753-e24b55186873"
  * definitionCanonical = "http://example.org/ActivityDefinition/BloodSample"
  * title = "Blood Sample"
  * description = "Blood Sample"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30.0 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "de868321-2d8c-4ca5-9aa2-8268ecbdc18a"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0.0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "TSH Measurement"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "de868321-2d8c-4ca5-9aa2-8268ecbdc18a"
  * definitionCanonical = "http://example.org/ActivityDefinition/TSHMeasurement"
  * title = "TSH Measurement"
  * description = "TSH Measurement"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30.0 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "f63d8cb3-8589-4877-83fa-0e514398e785"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0.0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "Clinical Review"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "f63d8cb3-8589-4877-83fa-0e514398e785"
  * definitionCanonical = "http://example.org/ActivityDefinition/ClinicalReview"
  * title = "Clinical Review"
  * description = "Clinical Review"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30.0 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action[0]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "cabec7fd-917f-4d90-a294-cd3cddeb2d72"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0.0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0.0 's'
          * high = 0.0 's'
      * extension[+]
        * url = "soaTargetName"
        * valueString = "Increase Dose"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'TSH >4.6mU/L':'true','operation':'=='}"
  * action[+]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "dfa9adda-33fd-4a78-b8b7-ba28aa807fe1"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0.0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0.0 's'
          * high = 0.0 's'
      * extension[+]
        * url = "soaTargetName"
        * valueString = "No Dose Change"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'TSH 0.4-4.6mU/L':'true','operation':'=='}"
  * action[+]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "0b1f8a61-d934-428a-887e-e4e5bfb834e1"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "FS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0.0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0.0 's'
          * high = 0.0 's'
      * extension[+]
        * url = "soaTargetName"
        * valueString = "Decrease Dose"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'TSH <0.4mU/L':'true','operation':'=='}"
* action[+]
  * id = "3933c464-4863-491c-9c3b-df96d294f0e8"
  * definitionCanonical = "http://example.org/ActivityDefinition/MedicationRequest"
  * title = "MedicationRequest"
  * description = "MedicationRequest"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30.0 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "85593dcf-a301-4857-a906-16a0984916d9"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0.0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "AF"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "85593dcf-a301-4857-a906-16a0984916d9"
  * definitionCanonical = "http://example.org/ActivityDefinition/ActivityFinish"
  * title = "AF"
  * description = "Activity Finish"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30.0 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "AF"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
* action[+]
  * id = "cabec7fd-917f-4d90-a294-cd3cddeb2d72"
  * definitionCanonical = "http://example.org/ActivityDefinition/IncreaseDose"
  * title = "Increase Dose"
  * description = "Increase Dose"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24.0 'h'
        * high = 24.0 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3933c464-4863-491c-9c3b-df96d294f0e8"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0.0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "MedicationRequest"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "dfa9adda-33fd-4a78-b8b7-ba28aa807fe1"
  * definitionCanonical = "http://example.org/ActivityDefinition/NoDoseChange"
  * title = "No Dose Change"
  * description = "No Dose Change"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24.0 'h'
        * high = 24.0 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3933c464-4863-491c-9c3b-df96d294f0e8"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0.0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "MedicationRequest"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "0b1f8a61-d934-428a-887e-e4e5bfb834e1"
  * definitionCanonical = "http://example.org/ActivityDefinition/DecreaseDose"
  * title = "Decrease Dose"
  * description = "Decrease Dose"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24.0 'h'
        * high = 24.0 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3933c464-4863-491c-9c3b-df96d294f0e8"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 0.0 's'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "MedicationRequest"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
