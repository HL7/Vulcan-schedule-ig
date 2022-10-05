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

## IP Administration at site under HCP (Health Care Provider) supervision (no changes)

<img src="ip-admin-no-change.png" alt="No Dose Change" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

## IP Administration at site under HCP supervision (dose change permissible, no delay)

<img src="ip-admin-permissible-change.png" alt="Permitted Dose Change" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

## IP Administration at site under HCP supervision (delay permissible)

<img src="ip-admin-permissible-obs.png" alt="Permitted Delay" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

## IP Administration at home 

<img src="ip-admin-home-dose.png" alt="Home Dosing" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

# Complications
* __ActivityDefinition__ for planned dosing events expect a link to a __Medication__ record as well as a reason for dosing, etc.  In the case of a blinded clinical study the __Medication__ could be the study IP or could be placebo; this introduces an issue for retrospective review of subject medication records.  
  * Solution used was to define a mock __Medication__ using the Protocol Identifier plus the Compound identifier.

 