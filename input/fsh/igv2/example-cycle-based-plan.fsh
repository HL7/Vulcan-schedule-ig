Instance: StudyWithCycleBasedPlan
InstanceOf: ResearchStudy
Title: "Study with Cycle-Based Plan"
* status = #active
* protocol[+] = Reference(CycleStudyPlan)

Instance: CycleStudyPlan
InstanceOf: StudyProtocolSoa
Title: "Study Plan"
* status = #active
* actions[+]
  * definitionCanonical = "PlanDefinition/Screening"
* actions[+]
  * definitionCanonical = "PlanDefinition/Baseline"
* actions[+]
  * definitionCanonical = "PlanDefinition/Cycle1"
* actions[+]
  * definitionCanonical = "PlanDefinition/CycleEven"
* actions[+]
  * definitionCanonical = "PlanDefinition/CycleOdd"
* actions[+]
  * definitionCanonical = "PlanDefinition/EndOfTreatment"

Instance: Screening
InstanceOf: PlanDefinition
Title: "Screening"
Usage: #example
* status = #active
* action[+]
  * definitionCanonical = 

Instance: Baseline
InstanceOf: PlanDefinition
Title: "Baseline"
Usage: #example
* status = #active


Instance: Cycle1
InstanceOf: PlanDefinition
Title: "Cycle 1"
Usage: #example
* status = #active
* actions[+]
  * definitionCanonical = "PlanDefinition/C1D1"
  * relatedAction[+] 
    * actionId = "StartOfCycle"
    * relationship = #after
    * offsetDuration = 0 'd'
    * extension[acceptableOffsetRange].valueRange.low = 1 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 1 'd'    
* actions[+]
  * definitionCanonical = "PlanDefinition/C1D7"
  * relatedAction[+] 
    * actionId = "StartOfCycle"
    * relationship = #after
    * offsetDuration = 7 'd'
    * extension[acceptableOffsetRange].valueRange.low = 1 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 1 'd'    
* actions[+]
  * definitionCanonical = "PlanDefinition/C1D14"
  * relatedAction[+] 
    * actionId = "StartOfCycle"
    * relationship = #after
    * offsetDuration = 14 'd'
    * extension[acceptableOffsetRange].valueRange.low = 1 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 1 'd'    

Instance: CycleEven
InstanceOf: PlanDefinition
Title: "Cycle N (Odd)"
Usage: #example
* status = #active
* extension[http://hl7.org/fhir/uv/vulcan-schedule/StructureDefinition/Duration][+] = 21 'd'
* actions[+]
  * definitionCanonical = "PlanDefinition/CEvenD1"
  * relatedAction[+] 
    * actionId = "StartOfCycle"
    * relationship = #after
    * offsetDuration = 0 'd'
    * extension[acceptableOffsetRange].valueRange.low = 2 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 2 'd'    
* actions[+]
  * definitionCanonical = "PlanDefinition/CEvenD7"
  * relatedAction[+] 
    * actionId = "StartOfCycle"
    * relationship = #after
    * offsetDuration = 7 'd'
    * extension[acceptableOffsetRange].valueRange.low = 2 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 2 'd'    
* actions[+]
  * definitionCanonical = "PlanDefinition/CEvenD14"
  * relatedAction[+] 
    * actionId = "StartOfCycle"
    * relationship = #after
    * offsetDuration = 14 'd'
    * extension[acceptableOffsetRange].valueRange.low = 2 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 2 'd'    

Instance: CycleOdd
InstanceOf: PlanDefinition
Title: "Cycle N (Odd)"
Usage: #example
* status = #active
* actions[+]
  * definitionCanonical = "PlanDefinition/COddD1"
* actions[+]
  * definitionCanonical = "PlanDefinition/COddD7"
* actions[+]
  * definitionCanonical = "PlanDefinition/COddD14"

Instance: COddD1
InstanceOf: SoAVisitPlan
Title: "Cycle N (Odd) - Day 1"
* status = #active

Instance: COddD7
InstanceOf: SoAVisitPlan
Title: "Cycle N (Odd) - Day 7"
* status = #active

Instance: COddD14
InstanceOf: SoAVisitPlan
Title: "Cycle N (Odd) - Day 14"
* status = #active

Instance: COddD28
InstanceOf: SoAVisitPlan
Title: "Cycle N (Odd) - Day 28"
* status = #active
