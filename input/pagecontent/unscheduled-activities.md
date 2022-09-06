# Unscheduled Activities

​Unscheduled assessments may be included in the SoA in order to account for special events that may arise; they may include:​
* Repeated Activities (e.g. additional blood draws)​
* Triggered Activities (e.g. extra tests based on some lab result)​
* Repeated Encounters (e.g. cycles for oncology)​
* Triggered Encounters (e.g. Adverse Event post visit)​

The Implementation Guide needs to provide a path for:​
* The definition of unscheduled or repeatable activities​
* The definition of an event for augmentation of the executable artifact (e.g. CarePlan) to accommodate unscheduled or repeatable activities​
* Adding an extra activity to an encounter​

## Use Cases

### Use Case - Conditional Activities
Protocols routinely describe assessments that are only to be undertaken under certain circumstances (e.g. pregnancy test)​
Additional assessments may be included in the SoA in order to account for special events that may arise; they may include:​
* A need to repeated an Activity (e.g. additional blood draws)​
* Event/Observation Triggered Activities (e.g. extra tests based on some lab result)​

​
### Use Case - Unscheduled Visits
Details of a study participant's "visits" (encounters) that are not planned (i.e. study scheduled) need to be recorded and appropriate study defined assessments undertaken to ensure subject safety, and sponsor regulatory and study objectives are not compromised (required activities usually defined by a SoA ‘Unscheduled Visit’ option) ​

May arise due to identified issues/events (e.g. AE see earlier) or required clinical care not recognised by the protocol.​

### Use Case - Early Termination​
According to criteria specified in the Protocol a participant may be taken off the study; reasons can include:​
* Safety Concerns – Subject had a reaction to intervention​
* Death – Patient died while on Study (related or non-related to intervention)​
* Study close – Intervention was either too successful or not successful enough then the sponsor can close out the study​
* Protocol Amendment – closing out participants on a chosen arm based on therapeutic outcome​

This represents a branch in the normal participant path through the study​

### Use Case - Protocol Amendments
A protocol amendment will often change the subject path but adding or removing encounters or assessments ​
The CarePlan for a patient will need to be adapted to incorporate the changes in the study 


## Scenarios

### Scenario - Common Activities
* Patients are queried at each encounter as to whether they have taken any medications or had any emergent events​
* The Events are not part of the encounter, evidence for the events are recorded at the visits; but the records of the events have their own occurrence and period (start/end or ongoing)​
* The events need to be incorporated into the participant data record as part of the study for the length of their participation​
* Need to be able to define how events/concomitant medications are evaluated and recorded ​

### Scenario - Post-Study Visit Adverse Event
Patient A is admitted to ER complaining of Shortness of Breath 24 hours after a Clinical Trial encounter​
Standard of Care activities need to be augmented with a pre-defined set of 'extra' activities to include​:
* Extra tests​
* Generation of an AE record​
* Generate of a SAE record​
* Interventions recorded as CM​
* Adjudication by the Investigator for CS/NCS​
* Adjudication by the Investigator that the AE related to study intervention​

## Approaches
The Unscheduled Encounters are usually prescribed with a set of expected activities; in general relating to a safety endpoint from the protocol.  Complications of investigational products can be expected as the evidence for the safety of the product develops; there are outcomes of special interest that may need to be tracked with more specificity; the extra datapoints requiring collected are present in the schedule of activities (sometimes explicitly in the matrix activities, otherwise as part of the protocol narrative).