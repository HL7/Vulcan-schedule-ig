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
    soaPlannedDuration 0..1 and
    soaRepeatAllowed 0..1

* extension[soaTimePointType].value[x] only string            // interaction or activity
* extension[soaPlannedTimePoint].value[x] only SimpleQuantity // visit day etc.
* extension[soaPlannedRange].value[x] only Range              // visit window
* extension[soaReferenceTimePoint].value[x] only string       // reference visit for planned time
* extension[soaRangeFromTimePoint].value[x] only string       // calculate visit window from timepoint X
* extension[soaPlannedDuration].value[x] only Duration        // duration of the visit (1d, 1w) once started
* extension[soaRepeatAllowed].value[x] only boolean           // whether the timepoint can be repeated (e.g. for missed visits)