# Investigational Product (IP) Administration

In order to correctly relate data collected in a study to the times when investigation product (drug, therapy, device etc.) has been taken or used is central tenant of any study.  
This requires the clear specifications of when to provide, administer and record pivotal IP events (e.g., to calcualte Dose Exposure, or those procedures and outcomes associated with the patient's exposure to the investigational product.)​

* IP Administration is core to prospective research protocols​
* All other observations support the efficacy and safety of the IP administration​
* IP administration activities must be well defined in the SOA

The set of FHIR medication resources have been used to review how to incorporate IP adminisration and record keeping into FHIR specifiied SoA.
​
* __Note__: to date immunization (vaccine) trials have not been considered in this section (FHIR defines resources for immunization separately from medications).

## Scenarios

Investigational Product scenarios include, but are not limited to, IP: ​
* Administered at clinical encounter by HCP​
  * As explicitly directed per protocol​
  * With permissible changes in amount administered​
  * With permissible timing change​
    * For more complex example where IP admin may be dose delayed due to observation results
  * where clinical encounter might be "in office" or other locations (e.g., at patient's home by a mobile healthcare provider or at an ascillary location such as an infusion center)​
* Self-administered in between clinical encounters 

## The need
* Define the intent for the IP administration to occur at a given time relative to the Schedule of Activities and to utilise that intent as a reference point for other activities scheduled to occur.  Examples include:
* define a pre-dose vitals assessment
* for a Pharmacokinetic study, precisly define pre- and post-administration activities that will be used to determine how the IP is absorbed, distributed, metabolised, and excreted.
* assert the timing relationship between patient consent and randomisation with that of the IP administration


# Research 

The following diagrams illustrate how the FHIR medications resources may be used to record investigational or other drug product use within an EHR.  Four common administration or drug use scenarios are illustrated showing how the 5 medication resources might be used to manage and record IP use.  These diagrams are designed as templates to (a) enable study SoA definitions to recognise when, where and which resources will be required in scheduling plans, and (b) guide to those resources where searches for study medication details may be found. It is expected that individual studies will select and define only those resources and relationships necessary to ensure accuracy/compliance with the protocol objectives; for example, the MedicationDispense resource might only be defined by FHIR SoAs if dispensing the IP is time-critical with respect to the administration.  In each case the details of the IP itself are considered to have a Medication resource record.  The red line(s) are the *medication.medicationReference* references.

***

## IP Administration at site under HCP (Health Care Provider) supervision (no changes)

<img src="ip-admin-no-change.png" alt="No Dose Change" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

This case shows how the medication resources can be used to model 'at visit' IP administration, where the medication details (dose, form, etc.) remain the same at each visit. In this case two methods of using the *MedicationRequest* resource is shown based on the *dispenseRequest.numberOfRepeatsAllowed* option. 

***

## IP Administration at site under HCP supervision (dose change permissible, no delay)

<img src="ip-admin-permissible-change.png" alt="Permitted Dose Change" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

The case here illustrates the use of the medication resources when changes in IP/medication details are permitted or required by the protocol, for example dose escalation.  Individual "per visit" *MedicationRequest*s are used to reflect the revised IP details for dispensing, which would then be adminsitered at the appropriate visit.  *reasonReference* can be used to document the planned study IP changes

***

## IP Administration at site under HCP supervision (delay permissible)

<img src="ip-admin-permissible-obs.png" alt="Permitted Delay" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

Illustated here is the relationship between a clinical event (in this case an *Observation*) that requires IP administration to be delayed. If such study events are recognised in the study protocol, and are (a) critical to patient safety or (b) would compromise protocol compliance, SoA *PlanDefinition.trigger*s can be used to define the rules for delaying the associated *PlanDefinition.action.timing[x]* that will be linked to the *MedicationAdministration* record. Situations that might require these revisions include out of range laboratory values, or the use of a contra-indicated medication prior to the study visit. 

***

## IP Administration at home 

<img src="ip-admin-home-dose.png" alt="Home Dosing" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

Many studies require IP to be self-administered, and to continue therafter 'at home'. The diagram here shows how IP self-adminstration might be recorded in an eHR.  In this case the IP is initially taken during the clinic visit generating a *MedicationAdminstration.status* record of 'completed' (solid circle) and four 'in progress' records reflecting the protocol expectation.  *MedicationStatement*s can then be used to comfirm compliance.   

***

# Complications
* __ActivityDefinition__ for planned dosing events expect a link to a __Medication__ record as well as a reason for dosing, etc.  In the case of a blinded clinical study the __Medication__ could be the study IP or could be placebo; this introduces an issue for retrospective review of subject medication records.  
  * Solution used was to define a mock __Medication__ using the Protocol Identifier plus the Compound identifier.
* In FHIR R5 the __MedicationStatement__ has been replaced by the __MedicationUsage__ resource.  This has not currently been modelled.
 