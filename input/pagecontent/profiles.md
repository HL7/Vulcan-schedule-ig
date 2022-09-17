# SoA Resource Profiles
The following profiles are defined for exchanging study schedule information.

|**Resource**|**Profile Name**|**Profile Description**|
|---|---|---|
|ResearchStudy|[ResearchStudySoa](StructureDefinition-ResearchStudySoa.html)|A profile that lists the data elements of a Research Study that must be supported when used to schedule activities.|
|PlanDefinition|[StudyProtocolSoa](StructureDefinition-StudyProtocolSoa.html)|A profile that lists the data elements of a PlanDefinition that must be supported so that it can represent an entire set of visits and activities for a given study protocol.|
|PlanDefinition|[StudyVisitSoa](StructureDefinition-StudyVisitSoa.html)|An abstract profile that lists the data elements of a PlanDefinition that must be supported so that it can represent a Study Visit.|
|PlanDefinition|[PlannedStudyVisitSoa](StructureDefinition-PlannedStudyVisitSoa.html)|A profile that further qualifies the StudyVisitSoa profile so that it can represent a planned visit.|
|PlanDefinition|[UnplannedStudyVisitSoa](StructureDefinition-UnplannedStudyVisitSoa.html)|A profile that further qualifies the StudyVisitSoa profile so that it can represent an unplanned visit.|
|ActivityDefinition|[StudyActivitySoa](StructureDefinition-StudyActivitySoa.html)|A profile lists the data elements of an ActivityDefinition that must be supported so that it can represent an activity that is being scheduled.|
{: .grid }


### Extensions
The following extensions are defined to enable data elements that are not currently present in the core resources.

|**Extension**|**Context**|**Description**|
|---|---|---|
|[AcceptableOffsetRange](StructureDefinition-AcceptableOffsetRangeSoa.html)|PlanDefinition.action.relatedAction|Provides an offset range that, along with offsetDuration, indicates an acceptable range of dates for a related action, i.e. +10-15 days|
{: .grid }
