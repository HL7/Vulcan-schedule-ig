# Investigational Product (IP) Administration

* In order to appropriately represent relationships between datapoints in an study we need to be able to record pivotal IP events (e.g. Dose Exposure, Procedure time and Outcome, etc)​
* IP Administration is core to prospective research protocols​
* All other observations support the efficacy and safety of the IP administration​
* IP administration activities must be well defined in the SOA​
* __Note__: the following do not address immunization trials. Separate resources.​

## Scenarios

IP scheduled to be: ​
* Administered at clinical encounter by HCP​
  * As explicitly directed per protocol​
  * With permissible changes in amount administered​
  * With permissible timing change​
    * For more complex example where IP admin may be dose delayed due to observation results
  * where clinical encounter might be "in office" or other locations (at patient's home by a mobile healthcare provider or infusion center)​
* Self-administered in between clinical encounters 

## The need
Define an intent for the IP administration to occur at a given time relative to the Schedule of Activities; and be able to utilise the intent as a reference point for other activities to occur.  Examples include:
* define a pre-dose vitals assessment
* for a Pharmacokinetic study define precise pre- and post-administration activities
* define that patient is randomised before receiving study IP

# Research 

## IP Administration at site under HCP supervision (no changes)

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

 