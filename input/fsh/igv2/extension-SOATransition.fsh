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

* extension[soaTargetId].value[x] only string        // transition target UUID
* extension[soaTransitionType].value[x] only string  // calculate transition wait from - to
* extension[soaTransitionDelay].value[x] only Duration // wait time between states
* extension[soaTransitionRange].value[x] only Range  // transition permitted window