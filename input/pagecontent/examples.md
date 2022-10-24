# Example 1

Protocol Visit Activity Trigger

## Rationale:
Need for this because:
* Study patients change appointments
* Study physicians change appointments
* Studies have specific activities assigned at each “visit”
* When appointments are changed, not all activities move with the updated appointment

## Opportunity to remedy this through care plan of all visits and scheduled activities
* Protocol to connect with patient once enrolled in study
* Protocol contains care plan
* Care plan has visits
* Visits have all activities defined by the protocol
* Windows defined in the care plan (following the protocol)

## Persons - who is working with this?
* Basic communication and adherence to the study care plan, otherwise known by researchers as the schedule of activities (SOA)*
* Site
* Study personnel – research coordinators, clinical trial staff
* Clinical personnel- office staff (schedulers, nurses, medical assistants, lab personnel, EKG techs, CT staff, etc.)
* Study physician

Who is communicating what to whom?
* Embedded protocol will trigger the activities to move with the visit when rescheduled
* EHR facilitates the protocol communication with the clinic and other healthcare staff
* Aid for clinical research coordination within the system

## Scenarios
* Patient has a family emergency and has to reschedule study visit.  Calls office to reschedule the visit.  Not all of the visit tests for the research study get rescheduled because they are not yet associated with the research study in the care plan.  On the rescheduled visit, the CT scanner is not available so there is a protocol deviation. CT san performed out of window.
* Doctor has vacation during research study patient visit. Same thing happens.

## Technical Aspects
* The [ResearchStudy](https://hl7.org/fhir/researchstudy.html) resource describes essential information about the study, including the purpose, objective, sponsor, investigator, therapy, condition being studied, schedule of activities, and other key items.

* In the context of a research study, the [PlanDefinition](https://hl7.org/fhir/plandefinition.html) resource identifies
** all the activities (defined in [ActivityDefinition](https://hl7.org/fhir/activitydefinition.html)) to be undertaken during the conduct of that [ResearchStudy](https://hl7.org/fhir/researchstudy.html)
** the visits
** all the activities to be associated with each visit
** the relative timing relationship of an activity as associated to another activity (whether it is to occur before or after the "anchoring" activity)
** the expected time and unit of time lapse between visits or activities within a visit (i.e., "Visit Window")

* the [CarePlan](https://hl7.org/fhir/careplan.html) resource associates the activities and visits defined in [PlanDefinition](https://hl7.org/fhir/plandefinition.html) to an individual patient. In the context of clinical care, it is possible for planned activities be conducted in the absence of a care plan. In the context of protocol driven research, the use of [CarePlan](https://hl7.org/fhir/careplan.html) is essential to ensure all [PlanDefinition](https://hl7.org/fhir/plandefinition.html) (visits and activities) are scheduled and executed for that ResearchStudy.

* to keep the patient anonymized from the sponsor, the [ResearchSubject](https://hl7.org/fhir/researchsubject.html) resource is used to create identifiers visible to the sponsor that contain no personally identifiable information.


# Example 2

Research Implementation Assistance

## Problem:
Scheduling research visits and activities can be cumbersome.

## Solution:
* Implementing the protocol SOA (in the electronic health record with visits and associated activities) as a CarePlan will enable all related activities to go with the patient should a “study visit” get rescheduled.
* Ensures timely research visits within visit windows
* Prevents protocol deviations 

## Technical Aspects
* Same as Example 1


