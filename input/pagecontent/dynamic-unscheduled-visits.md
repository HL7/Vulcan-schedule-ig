#### Unscheduled Visits

Unscheduled visits are encounters that are not part of the pre-defined schedule of activities but are defined per protocol for the proper management and safety of a study participant. These visits are typically triggered by emergent circumstances, for example the occurrence of an adverse event (AE) that requires medical evaluation. Other triggers can include the need to follow up on abnormal laboratory results, the initiation of a new concomitant medication, or other intercurrent events that could impact the study's integrity or the participant's well-being. While the timing of these visits is, by definition, not planned, the protocol often specifies the procedures and assessments that should be performed if such a visit becomes necessary. The unscheduled visits can be used repeatably, according to clinical need of the patient. In addition, many of the activities within the unscheduled visit are conditional (based on patient need or investigator discretion).

From an implementation perspective, unscheduled visits are not represented as pre-defined actions within the study's `PlanDefinition`. Instead, they are instantiated as `Encounter` resources at the time they occur based on a trigger. To maintain the integrity of the study data, it is important to document the reason for the unscheduled visit. This can be achieved by populating the `Encounter.reasonCode` or `Encounter.reasonReference` elements, which can link the visit to a specific `AdverseEvent`, `Observation`, or `Condition` resource. This linkage provides the necessary context for the data collected during the visit, distinguishing it from data gathered during routine, scheduled encounters and allowing for proper analysis.

Existing FHIR semantics that can be used include the `trigger` attribute on the `action` predicate, that allows a action to be applied based on some event. [TODO] Need to model this as an example.

Suggest that this is rolled up into applicability of parent plan -> child SoAVisit, either via an extension or an application of the trigger predicate.

```fsh
Instance: StudyPlan
InstanceOf: StudyProtocolSoa
Usage: #example
* title = "Study Plan"
* action[+]
  * id = "Screening"
* action[+]
  * id = "UnscheduledStudyVisitSuspectedDILI"
  * definition = "StudyVisitSoa/UnscheduledStudyVisitSuspectedDILI"
  * trigger[+]
    * type = #named-event
    * name = "Suspected DILI"
    * data

Instance: UnscheduledStudyVisitSuspectedDILI
InstanceOf: StudyVisitSoa
Usage: #example
* action[+]
  * id = "Record-Visit-Date"
* action[+]
  * id = "Record-ECG"
  * condition[+]
    * kind
```

