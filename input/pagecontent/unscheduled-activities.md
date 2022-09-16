## Unscheduled Activities

​Unscheduled assessments may be included in the SoA in order to prospectively account for special events or visits that fall outside the planned SoA visit and visit window timings. These may include, but are not limited to: ​

* Repeated Activities (e.g., additional blood draws)​
* Triggered Activities (e.g., extra tests based on some lab result)​
* Repeated Encounters (e.g., cycles for oncology)​
* Triggered Encounters (e.g., Adverse Event post visit)​

The Implementation Guide requires methods to:​
* Define unscheduled or repeatable activities​
* Define how to augment exisiting executable artifact (e.g. CarePlans) to accommodate unscheduled or repeatable activities​
* Trigger and add extra activities to an encounter​

## Use Cases

### Use Case - Conditional Activities

Protocols routinely describe assessments that are only to be undertaken under certain circumstances (e.g., a pregnancy test)​
Additional assessments may be included in the SoA in order to account for special events that may arise. They may include:​
* A need to repeated an Activity (e.g., additional blood draws)​
* Event/Observation Triggered Activities (e.g., extra tests based on some lab result)​

### Use Case - Unscheduled Visits
Details of a study participant's "visits" (encounters) that are not planned (that is, not part of the study schedule), need to be recorded and appropriate study defined assessments undertaken to ensure subject safety to demonstrate that sponsor regulatory and study objectives are not compromised (required activities usually defined by a SoA ‘Unscheduled Visit’ option) ​

Unscheduled visits may arise due to identified issues/events (e.g., an Adverse Event or clinician directed clinical care not defined by the protocol).​

### Use Case - Early Termination​
According to criteria specified in the Protocol, a participant may be taken off the study or discontinued from study treatment. Reasons can include, but are not limited to:​
* Safety Concerns – Subject had a reaction to intervention​
* Death – Patient died while on Study (related or non-related to intervention)
* Protocol violations - Inability of patient to follow or completed protocol required visits, assessments, or IP administration requirements​
* Study or Arm close – Intervention was either too successful or not successful enough then the sponsor may close out the study​ whole or selected arms (usually initiated through a Protocol Amendment.

This represents a branch in the normal participant path through the study. This type of encounter may not be defined *per se* as 'unscheduled visits' but, as with unscheduled visits, when they might occur cannot be pre-determined.

### Use Case - Protocol Amendments

A protocol amendment can change the subject's path by adding or removing encounters or assessments ​
The CarePlan for a patient will need to be adapted to incorporate the changes in the study protocol.

## Common 'Unscheduled' Scenarios 

### Scenario - Common Activities
* Patients are queried at each encounter as to whether they have taken any medications, had changes to existing medications, or experienced any changes in health status or emergent events​. The answers require further 'unscheduled' investigations.

* The medical record contains events are not part of an scheduled visit/encounter (i.e. did not occur within the planned SoA time periods). The activities undertaken are recorded, but the records of the events have their own occurrence (ID) and period (start/end or ongoing)​.

* The unplanned events need to be incorporated into the participant study data record over the period the particpant is a study subject​.

* The recording of so-called "common activities" (e.g., adverse events and concomitant medications) are evaluated and recorded. In Clinial Trial Management Systems (CTMS), a special mechanism is usually incorporated to manage this. //Is there a requirement for special consideration in healthcare systems//

### Scenario - Post-Study Visit Adverse Event

Patient A is admitted to an Emergency Room complaining of Shortness of Breath 24 hours after a Clinical Trial encounter​
Standard of Care activities need to be augmented with a pre-defined set of 'extra' activities to include​:
* Extra diagnostic tests and procedures​
* Generation of an Adverse Event record​
* Generation of a Serious Adverse Event record​
* Interventions recorded as Concomitant Medications or Procedures​
* Adjudication by the Investigator of Clinical Significance​ of the event
* Adjudication by the Investigator if the AE was related to study intervention​

## Approaches
The Unscheduled Encounters are usually prescribed with a set of expected activities; in general relating to a safety endpoint from the protocol.  Complications of investigational products can be expected as the evidence for the safety of the product develops. There are outcomes of special interest that may need to be tracked with more specificity. Those extra datapoints requiring collecting are present in the Schedule of Activities (sometimes explicitly in the matrix activities, otherwise as part of the protocol narrative).