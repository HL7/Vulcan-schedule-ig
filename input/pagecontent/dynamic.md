### Supporting Conditional Features of Modern Protocols

The [basic structure](base-structure.html) provides a structure for relatively simple study designs; such as those applicable to Phase I studies.

Based on feedback from implementers of the first release of the Implementation Guide, it is necessary to extend the Schedule of Activities to incorporate more complex concepts that are necessary to account for more complex study designs.

The following three improvement have been proposed :
* [Conditional Activities](./dynamic-conditional-activities.html)
* [Dynamic Visit Plans](./dynamic-conditional-activities.html)
* [Unscheduled Activities](./dynamic-unscheduled-visits.md)

Note, in discussion with the Clinical Decision Support workgroup we have determined that it is unlikely that the types of semantics needed to be supported are going to be available in any general purpose healthcare system.  It is expected that there would need to be an application (based on SMART-on-FHIR or similar) to interpret the guidance in this documentation; as such we will define some extensions that need to be interpreted by the management application (ideally providing the link between the intent of the guidance)
