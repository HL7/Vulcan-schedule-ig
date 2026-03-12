### Supporting Conditional Features of Modern Protocols

The [basic structure](base-structure.html) provides a structure for simple study designs.

Based on feedback from implementers of the first release of the Implementation Guide, it is necessary to extend the Schedule of Activities to incorporate recommendations that are necessary to account for more complex study designs.

One of the factors influencing the move towards more complex study designs is the escalating cost of conducting clinical research[citation?]. As drug development becomes more expensive, sponsors are increasingly motivated to maximize the scientific and commercial value from each study. This has led to a shift away from traditional, linear study designs towards more intricate protocols that can answer multiple questions simultaneously, evaluate several treatments, or study various patient populations within a single trial framework.

This drive for efficiency has given rise to adaptive designs and master protocols, such as [platform](https://en.wikipedia.org/wiki/Platform_trial), [basket](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/basket-trial), and [umbrella](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/umbrella-trial) trials. These modern approaches often incorporate conditional logic, where the study path for a participant can change based on interim results, biomarker status, or other criteria. Consequently, the schedule of activities is no longer a static table but a dynamic plan with branching pathways and conditional events. While these designs can accelerate drug development and reduce overall costs, they introduce significant complexity in defining, implementing, and managing the schedule of activities across different systems. Additionally, under the guise of [Adaptive Trial Design](https://bmcmedicine.biomedcentral.com/articles/10.1186/s12916-018-1017-7) the implementation of the study can change significantly for a patient.

The goal of the IG will be to be able to define **enough** semantics to represent the encounters, activities and transitions between them. The FHIR Workflow pattern is useful for defining the structural layout for the encounters and activities; defining how the workflow is applied requires the use of an application layer.

For describing the work in the updated IG, we have partitioned the use cases and requirements as follows:
* [Conditional Activities](./dynamic-conditional-activities.html) - activities within PlanDefinitions are able to be added or removed based on current patient or study status
* [Dynamic Visit Plans](./dynamic-conditional-activities.html) - allowing for multiple paths that a patient can follow based on the Protocol
* [Unscheduled Activities](./dynamic-unscheduled-visits.md) - providing a framework for incorporating emergent encounters

#### Implementation Details 

After discussion with the [Clinical Decision Support workgroup](https://confluence.hl7.org/spaces/CDS/pages/40742688/WorkGroup+Home), we have determined that the types of semantics needed to support conduct of a clinical trial go beyond the existing capabilities of the current CDS IG.  It is expected that there would need to be an application (based on SMART-on-FHIR or similar) based on guidance in this documentation to transform the Planned activities into performed Activities in the EHR system.  

This IG will define extensions that can be interpreted by the management application (providing the link between the intent of the guidance and the implementation) and used to mediate interactions with users.  The intent is that this would provide a User with the following:
* Decision Support:
  * reviewing the `ResearchSubject` status or milestones and activities with respect to the research plan and suggest what actions might apply.  This could include conditional activities, planning the next encounter, available early termination, etc
* Execution Support:
  * The ability to interact with the current patient, eg to add an unscheduled encounter, mark a patient as lost to follow-up or schedule the next encounter
  * A task list of imminent activities (eg prepare Lab Transfer Vials)
* Strategic Support:
  * Supporting Study Plan Queries, eg how many VS assessments are to be done, what types of lab tests are involved.  

The application should support interactions with the ResearchSubject resource, to support recording Subject and Trial States (eg On-Study, Off-study, In-Screening) and Milestones (eg Informed Consent, Randomization).  This facilitates the conduct, as well as providing support for logical pre-conditions used in Study Plans.


