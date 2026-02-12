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

Profile: StudyVisitGroupSoa
Parent: PlanDefinition
Description: "An abstract profile that lists the data elements of a PlanDefinition that must be supported so that it can represent a Study Visit Group (eg Cycle, Period)."
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


//
// --- Alias 
// 

Alias: UCUM  = http://unitsofmeasure.org

// --- Version 2 PlanDefinition Extensions 

// Richardson A, Genyn P
// Clinical Trial Schedule of Activities Specification Using Fast Healthcare Interoperability Resources Definitional Resources: Mixed Methods Study
// JMIR Med Inform 2025;13:e71430
// URL: https://medinform.jmir.org/2025/1/e71430
// DOI: 10.2196/71430

// --- SOA Time Point 
//
Extension: SOATimePoint
Id: soaTimepoint
Title: "SoA TimePoint Specification"
Description: "SoA TimePoint Attribute Extension"
// Limit the context to PlanDefinition action
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action"
* extension contains 
    soaTimePointType 0..1 and
    soaPlannedTimePoint 0..1 and
    soaPlannedRange 0..1 and
    soaReferenceTimePoint 0..1 and
    soaRangeFromTimePoint 0..1 and 
    soaPlannedDuration 0..1
* extension[soaTimePointType].value[x] only string // interaction or activity
* extension[soaPlannedTimePoint].value[x] only SimpleQuantity // visit day etc.
* extension[soaPlannedRange].value[x] only Range // visit window
* extension[soaReferenceTimePoint].value[x] only string // reference visit for planned time
* extension[soaRangeFromTimePoint].value[x] only string  // calculate visit window from timepoint X
* extension[soaPlannedDuration].value[x] only Duration // duration of the visit (1d, 1w) once started

// --- SOA Transition
//
Extension: SOATransition
Id: soaTransition
Title: "SoA Transition Specification"
Description: "Specifies SoA Transition Attributes"
// Limit the context to PlanDefinition action.action
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action.action"
* extension contains 
    soaTargetId 0..1 and 
    soaTransitionType 0..1 and
    soaTransitionDelay 0..1 and
    soaTransitionRange 0..1 
* extension[soaTargetId].value[x] only string // transition target UUID
* extension[soaTransitionType].value[x] only string // calculate transition wait from - to
* extension[soaTransitionDelay].value[x] only Duration  // wait time between states


// --- SOA PlanDefinition Profile
//
Profile:        SOAPlanDefinition
Parent:         PlanDefinition
Id:             soaPlanDefinition
Title:          "SOA PlanDefinition"
Description:    "Schedule of Activities PlanDefinition Extensions"
* action.extension contains SOATimePoint named soaTimepoint 0..1
* action.action.extension contains SOATransition named soaTransition 0..1

