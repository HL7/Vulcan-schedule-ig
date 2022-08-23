# Core Implementation Model for the Schedule of Activities (SoA)

The Schedule of Activities is a key part of the Clinical Trial Protocol; it is usually a graphical representation of two key components:
* The Encounters/Visits (any planned event that corresponds to clinical data collection)
* The Activities (the planned activities expected to occur at the event)

This is traditionally presented using a grid structure as shown here:

<img src="lzzt_soa.png" alt="H2Q-LZZT-MC Schedule of Activities" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

The Horizontal axis represents the encounters and the vertical axis represents the activities.  The cross section represents the matrix of expected activities and their encounters; this is interpreted by the Study Builder to create a set of planned data collection interfaces; traditionally Case Report Forms (CRFs), but with new approaches to data collection (such as Decentralised Trials or Sensor Informed trials) the CRF is part of the solution. 

The key consideration for the SoA is the collection of data to support the hypotheses presented in the Protocol; the CRFs used in Clinical Research are primarily an interface for recording **outcomes** of activities.  It is primarily a set of data requirements, and takes little account of the activities required to do so; this means when we transcribe the requirements from the SoA we should adopt a more 'workflow-based' approach to data management:
* **what** activities are being done
* **when** are they being done
* **who** are performing the activities
* what are the **outcomes** from those activities

# Implementing a SoA using FHIR resources

In order to represent the SoA we needed a set of definitional FHIR resources to represent the planned activities and relationships between them.  We focused on a Workflow view of data management, and we leveraged the existing FHIR workflow patterns to achieve this.  

Prior to expanding upon this we review the existing research resources:
* [ResearchStudy](http://hl7.org/fhir/ResearchStudy) - a representational artifact for a Research Study
* [ResearchSubject](http://hl7.org/fhir/ResearchStudy) - an artifact used to link a Patient research to the ResearchStudy

At this point we have not looked at the Structured Data Collection resources (Questionnaire/QuestionnaireResponse)

The Workflow resources are defined on the [FHIR Workflow](https://hl7.org/fhir/workflow.html) page; the key points for modeling a SoA deal with the [Definition](https://hl7.org/fhir/workflow.html#definition) and [Request](https://hl7.org/fhir/workflow.html#request) pattern.

The definition elements are used to create the structure for the activities in both a defined and planned context

The basic structure is summarized in the following diagram:

{% include basic-structure.svg %}

The high-level points are as follows:
* The **ResearchStudy** has a single _protocol_  reference to a __PlanDefinition__ for the Study Definition; under which all study activities are grouped
* Each of the activities are defined using separate resources
* Each activity is linked to the parent Study Definition through the _action_ predicate.  The _action_ predicate:  
  * defines the relationships between the activities, at the least when activities should occur relative to each other 

{% include plandef-actions.svg %}

In Research protocols many of the activities are event based; for example - informed consent is required prior to any study activities commencing.  This is modeled using the _relatedAction_ predicate on the _action_ predicate; we illustrate this in the above diagram; the `Baseline` Encounter is annotated in the design; the other encounters are defined as being _before_ or _after_ this action.  It is also possible to define the interval between these actions as illustrated here:

```
Instance: H2Q-MC-LZZT-ProtocolDesign
InstanceOf: PlanDefinition
Description: "H2Q-MC-LZZT-Protocol Schedule of Activities"
Usage: #example
* status = #active
* version = "LZZT_1"
...
* action[+].definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-3"
* action[=].id = "Index-Activity-Event"
* action[=].title = "Visit-3"
* action[=].description = "Planned Visit [Visit-3]"
* action[+].definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-4"
* action[=].title = "Visit-4"
* action[=].description = "Planned Visit [Visit-4]"
* action[=].relatedAction[+].actionId = "Index-Activity-Event"
* action[=].relatedAction[=].relationship = #after
* action[=].relatedAction[=].offsetRange.low.value = 12
* action[=].relatedAction[=].offsetRange.low.code = #d
* action[=].relatedAction[=].offsetRange.high.value = 15
* action[=].relatedAction[=].offsetRange.high.code = #d
```
The Event `Visit-3` has an _id_ assigned to it and prior and subsequent activities use the `relatedAction.actionId` to reference the pivot activity.  This allows elementary sequencing of planned elements to represent the SoA.  This sample also represents a simple windowing capability for scheduling activities relative to the index event.  There is a separate use case to address how targetted windows can be applied to the scheduling of study activities.

# Observations on how the SoA can be implemented

Given the structure discussed above, we consider how best the planned activities can be manifested within an Electronic Healthcare Record System.  

We have followed the FHIR Workflow paradigm, we define what needs to be done using the [Definition](https://hl7.org/fhir/definition.html) patters, which are scheduled using [Request](https://hl7.org/fhir/request.html) patterns and ultimately manifested as [Event](https://hl7.org/fhir/event.html) patterns.   We have constrained the implementation examples to the minimum requirement so we can model out the core concepts in a clinical trial protocol.

Here is an example of how a defined study plan can be related to an executed activity and outcome result itself.

{% include implementation-plan-def.svg %}

While the diagram can look very complex; it is methodologically sound as we can build out an approach using a set of common archetypes.  There is a flow of planned -> scheduled -> performed activities that implementers can follow to build processes and software around.  This serves as a way to drive data collection (for prospective and retrospective use cases) and it provides a broad scope for current and future use cases.


# Alignment between the CDISC Operational Data Model (ODM) and the FHIR SoA Model
The CDISC Operational Data Model (ODM) structure is one popular model for representing planned activities in CTMS systems - it is a common way for exchanging data and metadata between data management systems. A primer on the ODM can be found here: [CDISC-ODM](cdisc-odm.html).

Having a standard alignment between the ODM and FHIR enables rapid and reproducible builds using standardised interfaces; each EHR system can reuse the study design as built as part of study start up activities by the Study Builder.  There will need to be some augmentation of the process to make best use of transportable concepts (eg test codes, procedure codes, etc) but this forms a core model for implementation.

The following considerations have been adopted:
* Map _Protocol_ to _PlanDefinition_
* Map _StudyEvent_ to _PlanDefinition_
* Map _FormDef_ to _ActivityDefinition_

These are high level mappings; when we create the _PlanDefinition_ and _ActivityDefinition_ we use business identifiers that transcribe to the corresponding Object Identifiers (OIDs) from the ODM elements.  This will be valuable for reconciling study elements, but it is important to stress that there's never going to be a complete overlap as the use cases are quite different - however, there will be a shared labelling between the platforms that can be built upon.

