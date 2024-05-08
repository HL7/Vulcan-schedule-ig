Instance: InitiateVisitProcess
InstanceOf: ActivityDefinition
Usage: #example
* name = "Schedule Encounter"
* title = "Schedule Encounter"
* description = "Initiate the process for an Encounter to be scheduled between a Patient participating as a ResearchSubject and a Healthcare Provider participating as a Investigator."
* status =  #active
* kind = #Task
* code
  * text = "Schedule Encounter"
  * coding[+]
    * system = "http://snomed.info/sct"
    * code = #308364004
    * display = "Research administrative procedure (procedure)"

  
    