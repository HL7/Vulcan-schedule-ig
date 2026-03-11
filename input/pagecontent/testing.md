# Testing Scripts

# Studies
* Exit Example
* Multiple Paths (need randomization to an Arm)
* Cycles

# Enrol Patient
* Given
  * Patient Id
  * ResearchStudy Id
  * Assigned Subject Number
* Enrol a Patient into a ResearchStudy based on id
* Create ResearchSubject and set initial status
  * State ->  in-screening | on-study | off-study | on-study-intervention | in-follow-up
  * Subject Milestones

# Evaluation
* Given:
  * ResearchSubject Id 
  * Early Termination Trigger 
  * Unscheduled Encounter Trigger
* Evaluate current state
  * Retrieve Patient based on ResearchSubject
  * Retrieve CarePlan based on Patient
  * Retrieve ResearchStudy -> StudyPlan (protocoL) based on ResearchSubject
  * Iterate through CarePlan and cross reference with StudyPlan
    * if CarePlan status is ended/revoked, move to next element in StudyPlan
  * If end of interaction, return Done
* Move to Next Element
  * Evaluate against inclusion logic from StudyPlan 
    * (eg {‘interactions_exist’: [‘IS’, ‘V1’, 'V2']}, {'interactions_not_exist': ['V3', 'V4', 'V5', 'V6', 'IF']})
* If Early Terminate follow the path to ET
* Make a recommendation about the next step as a PlanDefinition Id, include windows if available in StudyPlan

# Execution
* Given:
  * ResearchSubject Id
  * PlanDefinition Id
  * Planned Visit Date
  * BONUS - Unscheduled PlanDefinition
* Create the following:
  * CarePlan(based on PlanDefinition)
    * initial status is active
    * unless Visit is skipped, then use revoked
    * if CarePlan is active, change status to ended and return PlanDefinition Id
  * ServiceRequest
  * Encounter (date reflecting the Target Window)
  * Update CarePlan to 'ended'

# Report
* Given a ResearchSubject Id 
* Produce a report of all the steps taken in conduct of patient study engagement for validation
  * based on care plan


## TODO
* ResearchStudy (for three scenarios)
* Scripts
