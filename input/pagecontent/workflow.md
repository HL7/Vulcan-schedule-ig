### Study Workflow

Questions
* Do we release a R5 IG

By the way, multiple SoA can be facilitated using Group. For example, a characteristic reasoning for a group of participants following different SoA (can be based on visit, periods, differentiated activities).

#### Conditional Activities


#### Capabilities to add to Patient and Site Workflow for the next IG
* This should be a guide rather than a script
* Conditional Activities
  * Patient Characteristics 
    * Type 1 DM for LZZT - want LabOrder to include HbA1c iff Patient.Condition includes Ty
    * Pregnancy Test - 
  * Multiple paths within a SoA
    * (Arm based activities) - where activities, encounters, locations are bound to different subject groups per protocol (eg with Surgery arm)
      * eg MedicationRequest - dispensation
    * Discontinuation/Stopping Rules (per Protocol)
      * with Follow-up, or 
      * without follow-up
        * triggering continuation (eg 3m, 6m , 12m)
    * PK collection (infusion area)
      * Scheduling batched encounters (represent as a PD with timepoints aligned)
    * Passive, ongoing encounters (ie Patient is the only participant) - what goes into the research
      * BG CGM (and download from 'portal' into research system)
      * ABPM into MyChart
* Multiple SoA in a Protocol 
  * Dependent on specific criteria (independent of presentation in a document)
  * Basket Protocol/Master Protocol 
* Binding of SoA to Groups in Protocol
    * Where do I go next?
* Adaptive Design, and changes therein
* Protocol Deviations/Violations
  * Can they be identified automatically from the Activities
* ServiceRequests can be shipped offsite 
  * or sent direct to patient
* Re-evaluate 
  * more examples
  * Windowing Extension in the frame of relativeTiming (https://build.fhir.org/datatypes.html#RelativeTime)
  * relatedAction.endRelationship


* Patient Context (emergent) [LEAVE]
  * patient events 
    * Adverse Event (study intervention related or not) - These may be adjudicated independently of any study protocol, so don't model.
    * add a 'review ad interim encounters'
  * conditional on outcomes
    * if ALT/SGPT > some value, hepatic function retested weekly (compared to per schedule where encounters occur every 14 days)
      * Update the Lab Order


#### Embedded Protocol
* The entirety of the Protocol is implemented in the EMR/EHR system, (eg EBM-on-FHIR sample) 

#### TODO
* using semantically equivalent terms from CDISC to FHIR concepts
  * where does that sit
  * who maintains it?
* get a set of terminology from a protocol
  * eg CDISC Terminology
  * CPT
  * SNOMED
* Scripts from CSIRO
  * check the CSIRO github (README.md?)

### Planning an Encounter

1.	The [Patient] drives to their primary care offices [Organization], [Location] to meet their primary doctor [Practitioner], [PractionerRole]
    a.	Prior to the [Patient] arrival, the office receptionist [Practitioner], [PractionerRole] and verifies appointment [Appointment], [AppointmentResponse], and may also check insurance coverage [Coverage], [CoverageEligibilityRequest], [CoverageEligibilityResponse] any get services arranged [ServiceRequest]
2.	The [Patient] checks in with the receptionist [Encounter] who checks their insurance details [InsurancePlan]
3.	The office does pre-treatment assessment such as medications [MedicationStatement], [Immunization], family history [FamilyMemberHistory], well-being questionnaire [Questionnaire], [QuestionnaireResponse], allergies issues/risks [AllergyIntolerance], vital signs [Observation], setup any procedures [Procedure], and consent [Consent] with some help from the nurse [Practitioner], [PractionerRole]
4.	During the procedure itself, the [Patient] meets the doctor [Practitioner], [PractionerRole] and checks overall care [CarePlan], [Goal] and any existing conditions [Condition], medicine use [Medication], vital measures that were just taken and previous lab results [Observation]
5.	After the procedure, the doctor [Practitioner], [PractionerRole] evaluates any risks [RiskAssessment], prescribes continued treatment [MedicationRequest], future follow-up [Appointment], [Schedule], [Slot], diagnosis details [DiagnosticReport], then charges the insurance company [Claim], [ClaimResponse], [Invoice]
6.	The [Patient] confirms the appointment [AppointmentResponse] which gets scheduled [Schedule], then receives an invoice with the remaining balance that is paid [Invoice], [PaymentNotice]