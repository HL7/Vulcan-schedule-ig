### Supporting Conditional Features of Modern Protocols

The [basic structure](base-structure.html) provides a structure for relatively simple study designs.

Based on feedback from implementers of the first release of the Implementation Guide, it is necessary to extend the Schedule of Activities to incorporate more complex concepts that are necessary to account for more complex study designs.

We have partitioned the requirements as follows:
* [Conditional Activities](./dynamic-conditional-activities.html) - activities within PlanDefinitions are able to be added or removed based on current patient or study status
* [Dynamic Visit Plans](./dynamic-conditional-activities.html) - allowing for multiple paths that a patient can follow based on the Protocol
* [Unscheduled Activities](./dynamic-unscheduled-visits.md) - providing a framework for incorporating emergent encounters

#### Implementation Details 

After discussion with the Clinical Decision Support workgroup[LINK], we have determined that it is unlikely that the types of semantics needed to be supported for the conduct of a clinical trial will be available in any general purpose healthcare system.  It is expected that there would need to be an application (based on SMART-on-FHIR or similar) to interpret the guidance in this documentation to transform the Planned activities into performed activities. 

This IG will define extensions that can be interpreted by the management application (providing the link between the intent of the guidance and the implementation) and used to mediate interactions with users.  The intent is that this would provide a User with the following:
* Decision Support:
  * reviewing the `ResearchSubject` status or milestones and activities with respect to the research plan and suggest what actions might apply.  This could include conditional activities, planning the next encounter, available early termination, etc
* Execution Support:
  * The ability to interact with the current patient, eg to add an unscheduled encounter, mark a patient as lost to follow-up or schedule the next encounter
  * A task list of imminent activities (eg prepare Lab Transfer Vials)
* Strategic Support:
  * Supporting Study Plan Queries, eg how many VS assessments are to be done, what types of lab tests are involved.  

The application should support interactions with the ResearchSubject resource, to support recording Subject and Trial Milestones (eg Informed Consent, Randomization).  This faciltates the conduct, as well as providing support for logical pre-conditions used in Study Plans.


