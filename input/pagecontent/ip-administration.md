### Investigational Product (IP) Administration

In order to correctly relate data collected in a study to the times when investigation product (drug, therapy, device etc.) has been taken or used is central tenant of any study.  
This requires the clear specifications of when to provide, administer and record pivotal IP events (e.g., to calculate Dose Exposure, or those procedures and outcomes associated with the patient's exposure to the investigational product.)​

- IP Administration is core to prospective research protocols​
- All other observations support the efficacy and safety of the IP administration​
- IP administration activities must be well defined in the SOA

The set of FHIR medication resources have been used to review how to incorporate IP administration and record keeping into FHIR specified SoA.
​
**Note**: to date immunization (vaccine) and device trials have not been considered in this section (FHIR defines resources for immunization and devices separately from medications).

#### Scenarios

Investigational Product scenarios include, but are not limited to, IP: ​

- Administered at clinical encounter by HCP​
  - As explicitly directed per protocol​
  - With permissible changes in amount administered​
  - With permissible timing change​
    - For more complex example where IP admin may be dose delayed due to observation results
  - where clinical encounter might be "in office" or other locations (e.g., at patient's home by a mobile healthcare provider or at an ancillary location such as an infusion center)​
- Self-administered in between clinical encounters

#### Core requirements

The needs addressed as part of this use case include:
- Define the intent for the IP administration to occur at a given time relative to the Schedule of Activities and to utilise that intent as a reference point for other activities scheduled to occur. Examples include:
- define a pre-dose vitals assessment
- for a Pharmacokinetic study, precisely define pre- and post-administration activities that will be used to determine how the IP is absorbed, distributed, metabolised, and excreted.
- assert the timing relationship between patient consent and randomisation with that of the IP administration

The following diagrams illustrate how the FHIR medications resources may be used to record investigational or other drug product use within an EHR.  Four common administration or drug use scenarios are illustrated showing how the 5 medication resources might be used to manage and record IP use.  These diagrams are designed as templates to (a) enable study SoA definitions to recognise when, where and which resources will be required in scheduling plans, and (b) guide to those resources where searches for study medication details may be found. It is expected that individual studies will select and define only those resources and relationships necessary to ensure accuracy/compliance with the protocol objectives; for example, the [MedicationDispense](https://hl7.org/fhir/medicationdispense.html) resource might only be defined by FHIR SoAs if dispensing the IP is time-critical with respect to the administration.  

In each case the details of the IP itself are considered to have a [Medication](https://hl7.org/fhir/medication.html) resource record, with the red line(s) showing the *medication.medicationReference* references. All of the resources in these diagrams are not **definitional resources** but rather the targets for IP administration definitional resources (e.g. [PlanDefinition](https://hl7.org/fhir/plandefinition.html), [ActivityDefinition](https://hl7.org/fhir/activitydefinition.html), etc.) that would be specified in a SoA.  The blue line(s) show the relationships between the potential reporting medication resources.  


The following diagrams illustrate how the FHIR medications resources may be used to record investigational or other drug product use within an EHR. Four common administration or drug use scenarios are illustrated showing how the 5 medication resources might be used to manage and record IP use. These diagrams are designed as templates to (a) enable study SoA definitions to recognise when, where and which resources will be required in scheduling plans, and (b) guide to those resources where searches for study medication details may be found. It is expected that individual studies will select and define only those resources and relationships necessary to ensure accuracy/compliance with the protocol objectives; for example, the [MedicationDispense](https://hl7.org/fhir/medicationdispense.html) resource might only be defined by FHIR SoAs if dispensing the IP is time-critical with respect to the administration. In each case the details of the IP itself are considered to have a [Medication](https://hl7.org/fhir/medication.html) resource record, with the red line(s) showing the _medication.medicationReference_ references. All of the resources in these diagrams are **definitional resources** but rather the targets for IP administration definitional resources (e.g. [PlanDefinition](https://hl7.org/fhir/plandefinition.html), [ActivityDefinition](https://hl7.org/fhir/activitydefinition.html), etc.) that would be specified in a SoA.

---

Figure Legend: 

Green Circle: Start of sponsor requirement to record/review [ResearchSubject](https://hl7.org/fhir/researchsubject.html)ResearchSubject medication record

Red Circle: End of sponsor requirement to record/review ResearchSubject medication record

Gray Circle: eHR record recorded by study team recording a medication event - status: completed

White Circle: eHR record reflecting protocol expectation for medication intake - status: in progress, confirmed thereafter by [MedicationStatement](https://hl7.org/fhir/medicationstatement.html) records.

Red Lines: *medication.medicationReference* relationships

Blue Lines: *medicationXXX* relationships 


---
###### IP Administration at site under HCP (Health Care Provider) supervision (no changes)

<img src="ip-admin-no-change.png" alt="No Dose Change" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

This case shows how the medication resources can be used to model 'at visit' IP administration, where the medication details (dose, form, etc.) remain the same at each visit. In this case two methods of using the [MedicationRequest](https://hl7.org/fhir/medicationrequest.html) resource is shown based on the _dispenseRequest.numberOfRepeatsAllowed_ option. The _numberOfRepeatsAllowed=0_ option implies individual
[MedicationRequest](https://hl7.org/fhir/medicationrequest.html) would be created prior to each visit; _numberOfRepeatsAllowed=4_ option implies that a single [MedicationRequest](https://hl7.org/fhir/medicationrequest.html) is created with instructions that the IP can be dispensed 4 times.

---
###### IP Administration at site under HCP supervision (dose change permissible, no delay)

<img src="ip-admin-permissible-change.png" alt="Permitted Dose Change" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

The case here illustrates the use of the medication resources when changes in IP/medication details are permitted or required by the protocol, for example dose escalation. Individual "per visit" [MedicationRequest](https://hl7.org/fhir/medicationrequest.html) resources are used to reflect the revised IP details for dispensing, which would then be administered at the appropriate visit. _reasonReference_ can be used to document the planned study IP changes

---
###### IP Administration at site under HCP supervision (delay permissible)

<img src="ip-admin-permissible-obs.png" alt="Permitted Delay" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

Illustrated here is the relationship between a clinical event (in this case an _Observation_) that requires IP administration to be delayed. If such study events are recognised in the study protocol, and are (a) critical to patient safety or (b) would compromise protocol compliance, SoA _PlanDefinition.trigger_ relations can be used to define the rules for delaying the associated _PlanDefinition.action.timing[x]_ that will be linked to the [MedicationAdministration](https://hl7.org/fhir/medicationadministration.html) record. Situations that might require these revisions include out of range laboratory values, or the use of a contra-indicated medication prior to the study visit.

---
###### IP Administration at home

<img src="ip-admin-home-dose.png" alt="Home Dosing" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

Many studies require IP to be self-administered, and to continue thereafter 'at home'. The diagram here shows how IP self-administration might be recorded in an eHR. In this case the IP is initially taken during the clinic visit generating a _MedicationAdminstration.status_ record of 'completed' (solid circle) and four 'in progress' records reflecting the protocol expectation. [MedicationStatement](https://hl7.org/fhir/medicationstatement.html) resources can then be used to confirm compliance.

---
#### Issues for resolution
* [ActivityDefinition](https://hl7.org/fhir/activitydefinition.html) for planned dosing events expect a link to a [Medication](https://hl7.org/fhir/medication.html) record as well as a reason for dosing, etc.  In the case of a blinded clinical study the [Medication](https://hl7.org/fhir/medication.html) could be the study IP or could be placebo; this introduces an issue for retrospective review of subject medication records.  
  * Solution used was to define a mock [Medication](https://hl7.org/fhir/medication.html) using the Protocol Identifier plus the Compound identifier.
* In FHIR R5 the [MedicationStatement](https://hl7.org/fhir/medicationstatement.html) has been replaced by the [MedicationUsage](https://hl7.org/fhir/medicationusage.html) resource.  This has not currently been modelled.
 