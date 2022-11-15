Profile: ResearchStudySoa
Parent: ResearchStudy
Description: "A profile that lists the data elements of a Research Study that must be supported when used to schedule activities."
* identifier MS
* title MS
* protocol MS
* protocol only Reference(StudyProtocolSoa)
* status MS
* primaryPurposeType MS
* phase MS
* category MS
* focus MS
* condition MS
* contact MS
* relatedArtifact MS
* keyword MS
* description MS
* sponsor MS
* principalInvestigator MS
* reasonStopped MS
* arm MS
  * name MS
  * type MS
  * description MS
* objective MS
  * name MS
  * type MS

Profile: StudyProtocolSoa
Parent: PlanDefinition
Description: "A profile that lists the data elements of a PlanDefinition that must be supported so that it can represent an entire set of visits and activities for a given study protocol."
* url MS
* name MS
* title MS
* status MS
* subject[x] MS
* description MS
* action MS
  * title MS
  * code MS
  * trigger MS
  * relatedAction MS
    * actionId MS
    * relationship MS
    * offset[x] MS
    * extension contains AcceptableOffsetRangeSoa named acceptableOffsetRange 0..1
  * timing[x] MS
  * requiredBehavior MS
  * cardinalityBehavior MS

Profile: StudyVisitSoa
Parent: PlanDefinition
Description: "An abstract profile that lists the data elements of a PlanDefinition that must be supported so that it can represent a Study Visit."
* ^abstract = true
* url MS
* name MS
* title MS
* status MS
* subject[x] MS
* description MS
* action MS
  * title MS
  * code MS
  * trigger MS
  * relatedAction MS
    * actionId MS
    * relationship MS
    * offset[x] MS
    * extension contains AcceptableOffsetRangeSoa named acceptableOffsetRange 0..1
  * timing[x] MS
  * requiredBehavior MS
  * cardinalityBehavior MS
  * definition[x] MS

Profile: PlannedStudyVisitSoa
Parent: StudyVisitSoa
Description: "A profile that further qualifies the StudyVisitSoa profile so that it can represent a planned visit."

// Profile: UnplannedStudyVisitSoa
// Parent: StudyVisitSoa
// Description: "A profile that further qualifies the StudyVisitSoa profile so that it can represent an unplanned visit."

Profile: StudyActivitySoa
Parent: ActivityDefinition
Description: "A profile lists the data elements of an ActivityDefinition that must be supported so that it can represent an activity that is being scheduled."
* url MS
* name MS
* title MS
* status MS
* subject[x] MS
* description MS
* observationRequirement MS


Extension: AcceptableOffsetRangeSoa
Title: "Acceptable Offset Range"
Description: "Provides an offset range that, along with offsetDuration, indicates an acceptable range of dates for a related action."
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action.relatedAction"
* value[x] 1..1
* value[x] only Range
