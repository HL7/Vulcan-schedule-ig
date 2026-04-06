Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Levothroxine-Monitoring-Titration-Activities
InstanceOf: PlanDefinition
Usage: #example
* meta
  * versionId = "0"
  * lastUpdated = "2026-03-11T16:01:52Z"
* language = #en
* url = "http://hl7.org/fhir/uv/vulcan-schedule/PlanDefinition/Levothroxine-Monitoring-Titration-Activities"
* identifier[0]
  * system = "http://example.org/plandefinition"
  * value = "c4ef9bcf-718f-421a-984e-45dae567935e"
* identifier[+]
  * system = "urn:ietf:rfc:3986"
  * value = "urn:oid:2.16.840.1.113883.4.642.40.64.34.9"
* version = "2.0.0-ballot"
* name = "Levothroxine-Monitoring-Titration-Activities"
* title = "Levothroxine-Monitoring-Titration-Activities"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* status = #active
* date = "2026-03-24T21:36:22+00:00"
* publisher = "HL7 International / Biomedical Research and Regulation"
* contact
  * name = "HL7 International / Biomedical Research and Regulation"
  * telecom[0]
    * system = #url
    * value = "http://www.hl7.org/Special/committees/rcrim"
  * telecom[+]
    * system = #email
    * value = "biomedrr@lists.hl7.org"
* description = "Levothroxine-Monitoring"
* action[0]
  * id = "0088a1c5-86ff-4081-b8ac-d0ec38c31f40"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "AS"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "AS"
  * description = "Activity Start"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/start"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "82f88cb2-d416-4e67-8753-e24b55186873"
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
    * extension[+]
      * url = "soaTargetName"
      * valueString = "Blood Sample"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "82f88cb2-d416-4e67-8753-e24b55186873"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "Blood Sample"
  * description = "Blood Sample"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/BloodSample"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "de868321-2d8c-4ca5-9aa2-8268ecbdc18a"
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
    * extension[+]
      * url = "soaTargetName"
      * valueString = "TSH Measurement"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "de868321-2d8c-4ca5-9aa2-8268ecbdc18a"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "TSH Measurement"
  * description = "TSH Measurement"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/TSHMeasurement"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "f63d8cb3-8589-4877-83fa-0e514398e785"
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
    * extension[+]
      * url = "soaTargetName"
      * valueString = "Clinical Review"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "f63d8cb3-8589-4877-83fa-0e514398e785"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "Clinical Review"
  * description = "Clinical Review"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/ClinicalReview"
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
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
      * extension[+]
        * url = "soaTargetName"
        * valueString = "Increase Dose"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{’TSH’: 0.4 ‘mU/L’, operation = ‘<‘}"
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
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
      * extension[+]
        * url = "soaTargetName"
        * valueString = "No Dose Change"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{’TSH’: 0.4 ‘mU/L’, operation = ‘>=’} | {’TSH’: 4.6 ‘mU/L, operation = ‘<=’}"
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
        * valueDuration = 0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 0 's'
          * high = 0 's'
      * extension[+]
        * url = "soaTargetName"
        * valueString = "Decrease Dose"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{’TSH’: 4.6 ‘mU/L’, operation = ‘>’}"
* action[+]
  * id = "3933c464-4863-491c-9c3b-df96d294f0e8"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "MedicationRequest"
  * description = "MedicationRequest"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/MedicationRequest"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "85593dcf-a301-4857-a906-16a0984916d9"
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
    * extension[+]
      * url = "soaTargetName"
      * valueString = "AF"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "85593dcf-a301-4857-a906-16a0984916d9"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 30 'min'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "AF"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0 's'
        * high = 0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "AF"
  * description = "Activity Finish"
  * definitionCanonical = "http://example.org/ActivityDefinition/ActivityFinish"
* action[+]
  * id = "cabec7fd-917f-4d90-a294-cd3cddeb2d72"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "Increase Dose"
  * description = "Increase Dose"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/IncreaseDose"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3933c464-4863-491c-9c3b-df96d294f0e8"
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
    * extension[+]
      * url = "soaTargetName"
      * valueString = "MedicationRequest"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "dfa9adda-33fd-4a78-b8b7-ba28aa807fe1"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "No Dose Change"
  * description = "No Dose Change"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/NoDoseChange"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3933c464-4863-491c-9c3b-df96d294f0e8"
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
    * extension[+]
      * url = "soaTargetName"
      * valueString = "MedicationRequest"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
* action[+]
  * id = "0b1f8a61-d934-428a-887e-e4e5bfb834e1"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "AS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Activity"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "A"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24 'h'
        * high = 24 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "AS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * title = "Decrease Dose"
  * description = "Decrease Dose"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/ActivityDefinition/DecreaseDose"
  * action.extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "3933c464-4863-491c-9c3b-df96d294f0e8"
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
    * extension[+]
      * url = "soaTargetName"
      * valueString = "MedicationRequest"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"