# Core Implementation Model for the Schedule of Activities (SoA)

The Schedule of Activities is a key part of the Clinical Trial Protocol; it is usually a graphical representation of two key components:
* The Encounters/Visits (any planned event that corresponds to clinical data collection)
* The Activities (the planned activities expected to occur at the event)

This is traditionally presented using a grid structure as shown here:

<img src="lzzt_soa.png" alt="H2Q-LZZT-MC Schedule of Activities" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

The Horizontal axis represents the encounters and the vertical axis represents the activities.  The cross section represents the matrix of expected activities and their encounters; this is interpreted by the Study Builder to create a set of planned data collection interfaces; traditionally Case Report Forms (CRFs), but with new approaches to data collection (such as Decentralised Trials or Sensor Informed trials) the CRF is part of the solution. 

The key consideration for the SoA is the collection of data to support the hypotheses presented in the Protocol; the CRFs used in Clinical Research are primarily an interface for recording the **outcome** of the activities (or metadata such as why an activity was not completed).  It is primarily a set of data contracts expected to deliver the required data.


# Implementing a SoA using FHIR resources

In order to represent the  SoA we need a set of definitional FHIR resources that represent planned activities (with relationships between them).  As much of this content is very much leaning into a Workflow view of data collection we will leverage existing workflow patterns from the FHIR specification itself.   Before diving into that content it is worth reviewing what research resources exist:
* [ResearchStudy](http://hl7.org/fhir/ResearchStudy) - a representational artifact for a Research Study
* [ResearchSubject](http://hl7.org/fhir/ResearchStudy) - an artifact used to link a Patient to the Research Study

