### Supporting Conditional Features of Modern Protocols

The [basic structure](base-structure.html) provides a structure for relatively simple study designs.

Based on feedback from implementers of the first release of the Implementation Guide, it is necessary to extend the Schedule of Activities to incorporate more complex concepts that are necessary to account for more complex study designs.

We have partitioned the requirements as follows:
* [Conditional Activities](./dynamic-conditional-activities.html) - activities within PlanDefinitions are able to be added or removed based on current patient or study status
* [Dynamic Visit Plans](./dynamic-conditional-activities.html) - allowing for multiple paths that a patient can follow based on the Protocol
* [Unscheduled Activities](./dynamic-unscheduled-visits.md) - providing a framework for incorporating emergent encounters

Note, in discussion with the Clinical Decision Support workgroup we have determined that it is unlikely that the types of semantics needed to be supported are going to be available in any general purpose healthcare system.  It is expected that there would need to be an application (based on SMART-on-FHIR or similar) to interpret the guidance in this documentation; as such we will define some extensions that need to be interpreted by the management application (ideally providing the link between the intent of the guidance)
