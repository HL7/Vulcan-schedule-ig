Instance: Levothroxine-Monitoring-Schedule
InstanceOf: PlanDefinition
Usage: #example
* meta
  * versionId = "0"
  * lastUpdated = "2026-03-11T15:57:04Z"
* identifier
  * system = "http://example.org/plandefinition"
  * value = "71379aa0-f176-4138-b54a-d40c1ef56137"
* version = "V00"
* name = "Levothroxine-Monitoring-Schedule"
* title = "Levothroxine-Monitoring-Schedule"
* type = #clinical-protocol
* status = #active
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* description = "Levothroxine-Monitoring"
* action[0]
  * id = "81b27f5e-ea81-46de-8e87-311254f3f2d5"
  * definitionCanonical = "http://example.org/Encounter/Levothroxine-Monitoring-IS"
  * title = "IS"
  * description = "Interactions Start"
  * extension
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "IS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "IS"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24.0 'h'
        * high = 24.0 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "2980bedf-c17f-44be-8ee3-c4a00fa54f93"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6.0 'wk'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "Baseline"
* action[+]
  * id = "2980bedf-c17f-44be-8ee3-c4a00fa54f93"
  * definitionCanonical = "http://example.org/Encounter/Levothroxine-Monitoring-Baseline"
  * title = "Baseline"
  * description = "Baseline"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "IS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "V"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action.extension
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * extension[0]
      * url = "soaTargetId"
      * valueString = "ce8c2cb1-db3a-4d03-8e59-0a7c50d027e1"
    * extension[+]
      * url = "soaTransitionType"
      * valueString = "FS"
    * extension[+]
      * url = "soaTransitionDelay"
      * valueDuration = 6.0 'wk'
    * extension[+]
      * url = "soaTransitionRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaTargetName"
      * valueString = "Titration-Review"
* action[+]
  * id = "ce8c2cb1-db3a-4d03-8e59-0a7c50d027e1"
  * definitionCanonical = "http://example.org/Encounter/Levothroxine-Monitoring-Titration-Review"
  * title = "Titration-Review"
  * description = "Titration-Review"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 6.0 'wk'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Baseline"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "V"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 14.0 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Baseline"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action[0]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "80bc5ed4-81f5-4c79-b93d-589f26017dc7"
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
        * valueString = "Maintenance-Review"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'TSH Stabalised':'true','operation':'=='}"
  * action[+]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "ce8c2cb1-db3a-4d03-8e59-0a7c50d027e1"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 0.0 's'
      * extension[+]
        * url = "soaTransitionRange"
        * valueRange
          * low = 7.0 'd'
          * high = 7.0 'd'
      * extension[+]
        * url = "soaTargetName"
        * valueString = "Titration-Review"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'TSH  Stabalised':'false','operation':'=='}"
* action[+]
  * id = "80bc5ed4-81f5-4c79-b93d-589f26017dc7"
  * definitionCanonical = "http://example.org/Encounter/Levothroxine-Monitoring-Maintenance-Review"
  * title = "Maintenance-Review"
  * description = "Maintenance-Review"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Titration-Review"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = true
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "V"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 0.0 's'
        * high = 0.0 's'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Titration-Review"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action[0].extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "aa84af94-f8f5-44bb-aef9-ca50e0bfc94c"
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
      * valueString = "IF"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
  * action[+].extension
    * extension[0]
      * url = "soaTargetId"
      * valueString = "80bc5ed4-81f5-4c79-b93d-589f26017dc7"
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
      * valueString = "Maintenance-Review"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
  * action[+]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "ce8c2cb1-db3a-4d03-8e59-0a7c50d027e1"
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
        * valueString = "Titration-Review"
      * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTransition"
    * condition
      * kind = #start
      * expression
        * language = #text/x-soa-expressionplain
        * expression = "{'TSH In Range':'false','operation':'=='}"
* action[+]
  * id = "aa84af94-f8f5-44bb-aef9-ca50e0bfc94c"
  * definitionCanonical = "http://example.org/Encounter/Levothroxine-Monitoring-IF"
  * title = "IF"
  * description = "Interactions Finish"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0.0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "IS"
    * extension[+]
      * url = "soaRepeatAllowed"
      * valueBoolean = false
    * extension[+]
      * url = "soaPlannedDuration"
      * valueDuration = 24.0 'h'
    * extension[+]
      * url = "soaTimePointType"
      * valueString = "Interaction"
    * extension[+]
      * url = "soaTimePointSubType"
      * valueString = "IF"
    * extension[+]
      * url = "soaPlannedRange"
      * valueRange
        * low = 24.0 'h'
        * high = 24.0 'h'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "IS"
    * url = "http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/soaTimepoint"
