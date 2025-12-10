# Testing Scripts

# Enrol Patient
* Given
  * Patient Id
  * ResearchStudy Id
* Enrol a Patient into a ResearchStudy based on id
* Create ResearchSubject and set initial status

# Evaluation
* Given:
  * ResearchSubject Id 
  * Early Termination Trigger 
* Evaluate current state
* Evaluate Planned Progression from Study Plan
* Make a recommendation about the next step as a PlanDefinition Id

# Execution
* Given:
  * ResearchSubject Id
  * PlanDefinition Id
  * BONUS - Unscheduled PlanDefinition
* Create the following:
  * ServiceRequest
  * Encounter (date reflecting the Target Window)

# Report
* Given a ResearchSubject Id 
* Produce a report of all the steps taken in conduct of patient study engagement for validation


TODO:
* FHIR Server 
    * Synthetic patients (10-50)
* ResearchStudy (for three scenarios)
* Scripts
