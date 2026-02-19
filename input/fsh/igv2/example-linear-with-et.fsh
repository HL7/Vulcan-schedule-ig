Instance: example-linear-with-et
InstanceOf: PlanDefinition
Usage: #example
* meta
  * versionId = "0"
  * lastUpdated = "2025-11-09T15:13:31Z"
* identifier
  * system = "http://www.fhir4pharma.com/plandefinition"
  * value = "5c2a9671-1d0d-4b02-8f09-0e30d77411b2"
* version = "V00"
* name = "example-linear-with-et"
* title = "example-linear-with-et"
* status = #active
* publisher = "fhir4pharma [Richardson & Genyn, JMIR Med Inform 2025;13:e71430, DOI: 10.2196/71430]"
* description = "example-linear-with-et"
* action[0]
  * id = "ac4d0cb9-f2bd-49c1-8b28-42d5cd04b4fb"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 0 's'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Visit N"
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
      * valueString = "Visit N"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "Visit N"
  * description = "Visit N"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * definitionCanonical = "http://example.org/Encounter/Visit-N"
  * action[0]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "c25995f4-be76-47fa-ae90-a46100f8cfb3"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 14 'd'
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
        * expression = "{'toNormalProgression':true}"
  * action[+]
    * extension
      * extension[0]
        * url = "soaTargetId"
        * valueString = "349447c3-8ad4-4034-8c31-c3d96dcc5f9a"
      * extension[+]
        * url = "soaTransitionType"
        * valueString = "SS"
      * extension[+]
        * url = "soaTransitionDelay"
        * valueDuration = 24 'h'
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
        * expression = "{'toEarlyTermination':true}"
* action[+]
  * id = "c25995f4-be76-47fa-ae90-a46100f8cfb3"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 14 'd'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Visit N"
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
      * valueString = "Visit N"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "Visit N+1"
  * description = "Visit N+1"
  * definitionCanonical = "http://example.org/Encounter/Visit-N+1"
* action[+]
  * id = "349447c3-8ad4-4034-8c31-c3d96dcc5f9a"
  * extension
    * extension[0]
      * url = "soaPlannedTimePoint"
      * valueQuantity = 24 'h'
    * extension[+]
      * url = "soaReferenceTimePoint"
      * valueString = "Visit N"
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
        * high = 14 'd'
    * extension[+]
      * url = "soaRangeFromTimePoint"
      * valueString = "Visit N"
    * url = "http://fhir4pharma.com/StructureDefinition/soaPlannedTimepoint"
  * title = "Early Termination"
  * description = "Early Termination"
  * definitionCanonical = "http://example.org/Encounter/Early-Termination"