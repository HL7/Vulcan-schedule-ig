# H2Q-MC-LZZT Study Design

Herein is the ODM for the study design for the H2Q-MC-LZZT study.

A couple of notes:
* the `sdm` namespace is for the study design model.  It has not been a primary focus for the team up to now
* the `cdash` namespace is an extension for accomodating CDASH elements.  It can be ignored for the moment

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ODM xmlns="http://www.cdisc.org/ns/odm/v1.3" xmlns:sdm="http://www.cdisc.org/ns/studydesign/v1.0" xmlns:cdash="http://www.cdisc.org/ns/cdash/v1.1" CreationDateTime="2010-12-08T14:31:28+01:00" Description="LZZT Study Design, CDISC ODM version 1.3 format" FileOID="LZZT_STUDY" FileType="Snapshot" Granularity="Metadata" ODMVersion="1.3" SourceSystem="XML4Pharma CDISC ODM Study Designer" SourceSystemVersion="2010-R2">
	<Study OID="LZZT">
		<GlobalVariables>
			<StudyName>Xanomeline (LY246708)</StudyName>
			<StudyDescription>Safety and Efficacy of the Xanomeline Transdermal Therapeutic System (TTS) in Patients with Mild to Moderate Alzheimer's Disease</StudyDescription>
			<ProtocolName>H2Q-MC-LZZT(c)</ProtocolName>
		</GlobalVariables>
		<BasicDefinitions/>
		<MetaDataVersion Description="LZZT study design version 1" Name="LZZT study design version 1" OID="LZZT_1">
			<Protocol>
				<Description>
					<TranslatedText xml:lang="en">A randomized, double-blind, parallel (3 arm), placebo-controlled trial of 26 weeks duration.</TranslatedText>
				</Description>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.SCREENING_VISIT"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.AMB_ECG_VISIT"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.RANDOMIZATION_VISIT"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_01"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_02"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_03"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_04"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_05"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_06"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_07"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_08"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_09"/>
				<StudyEventRef Mandatory="Yes" StudyEventOID="SE.TRT_VISIT_10"/>
				<StudyEventRef Mandatory="No" StudyEventOID="SE.EARLY_TERM_VISIT"/>
				<StudyEventRef Mandatory="No" StudyEventOID="SE.RETRIEVAL_TERM_VISIT"/>
				<sdm:Summary>
					<sdm:Parameter OID="PAR.ADDON" ShortName="ADDON" Term="Test product is added on to existing treatment">
						<sdm:Value>Y</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.AEDICT" ShortName="AEDICT" Term="Adverse event dictionary">
						<sdm:Value>MedDRA version 8.0 (partially masked by request of MSSO)</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.AGEMAX" ShortName="AGEMAX" Term="Planned maximum age of subjects">
						<sdm:Value>No maximum</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.AGEMIN" ShortName="AGEMIN" Term="Planned minimum age of subjects">
						<sdm:Value>50 years</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.AGESPAN" ShortName="AGESPAN" Term="Age span">
						<sdm:Value>ADULT (18-65)</sdm:Value>
						<sdm:Value>ELDERLY (&gt; 65)</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.BLIND" ShortName="BLIND" Term="Trial blinding scheme">
						<sdm:Value>DOUBLE BLIND</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.COMPTRT" ShortName="COMPTRT" Term="Comparative Treatment Name">
						<sdm:Value>Placebo</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.CONTROL" ShortName="CONTROL" Term="Type of control">
						<sdm:Value>PLACEBO</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.DIAGGRP" ShortName="DIAGGRP" Term="Diagnosis group">
						<sdm:Value>Patients with Probable Mild to Moderate Alzheimer's Disease</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.DOSE" ShortName="DOSE" Term="Test product dose per administration">
						<sdm:Value>54</sdm:Value>
						<sdm:Value>81</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.DOSFRQ" ShortName="DOSFRQ" Term="Test product dosing frequency">
						<sdm:Value>QD; 12 to 14 hours transdermal application</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.DOSU" ShortName="DOSU" Term="Test product dose units">
						<sdm:Value>mg</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.DRUGDICT" ShortName="DRUGDICT" Term="Drug dictionary">
						<sdm:Value>WHO Drug Dictionary Enhanced 2006-04-26 (downloaded sample)</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.INDIC" ShortName="INDIC" Term="Trial indications">
						<sdm:Value>Mild to Moderate Alzheimer's Disease</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.INDICTYP" ShortName="INDICTYP" Term="Trial indication type">
						<sdm:Value>TREATMENT</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.LENGTH" ShortName="LENGTH" Term="Length of trial">
						<sdm:Value>26 weeks</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.MHDICT" ShortName="MHDICT" Term="Medical history dictionary">
						<sdm:Value>MedDRA version 8.0 (partially masked by request of MSSO)</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.OBJPRIM" ShortName="OBJPRIM" Term="Trial primary objective">
						<sdm:Value>To determine if there is a statistically significant relationship between the change in both ADAS-Cog and CIBIC+ scores, and drug dose (0, 50 cm2 [54 mg], and 75 cm2 [81 mg])</sdm:Value>
						<sdm:Value>To document the safety profile of the xanomeline TTS.</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.OBJSEC" ShortName="OBJSEC" Term="Trial secondary objective">
						<sdm:Value>To assess the dose-dependent improvement in behavior. Improved scores on the Revised Neuropsychiatric Inventory (NPI-X) will indicate improvement in these areas.</sdm:Value>
						<sdm:Value>To assess the dose-dependent improvements in activities of daily living. Improved scores on the Disability Assessment for Dementia (DAD) will indicate improvement in these areas.</sdm:Value>
						<sdm:Value>To assess the dose-dependent improvements in an extended assessment of cognition that integrates attention/concentration tasks. The ADAS-Cog (14) will be used for this assessment.</sdm:Value>
						<sdm:Value>To assess the treatment response as a function of Apo E genotype.</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.PHASE" ShortName="PHASE" Term="Trial phase">
						<sdm:Value>2</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.PLANSUB" ShortName="PLANSUB" Term="Planned number of subjects">
						<sdm:Value>300</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.RANDOM" ShortName="RANDOM" Term="Trial is randomized">
						<sdm:Value>Y</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.ROUTE" ShortName="ROUTE" Term="Test product route of administration">
						<sdm:Value>transdermal</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.SEXPOP" ShortName="SEXPOP" Term="Sex of participants">
						<sdm:Value>BOTH</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.SPONSOR" ShortName="SPONSOR" Term="Sponsoring organisation">
						<sdm:Value>CDISCPILOT01</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.TITLE" ShortName="TITLE" Term="Trial title">
						<sdm:Value>Safety and Efficacy of the Xanomeline Transdermal Therapeutic System (TTS) in Patients with Mild to Moderate Alzheimer's Disease.</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.TRT" ShortName="TRT" Term="Reported name of test product">
						<sdm:Value>Xanomeline</sdm:Value>
					</sdm:Parameter>
					<sdm:Parameter OID="PAR.TYPE" ShortName="TYPE" Term="Type of trial">
						<sdm:Value>SAFETY</sdm:Value>
						<sdm:Value>EFFICACY</sdm:Value>
						<sdm:Value>PHARMACOKINETICS</sdm:Value>
					</sdm:Parameter>
				</sdm:Summary>
				<sdm:InclusionExclusionCriteria>
					<Description>
						<TranslatedText xml:lang="en">Include subjects which ...</TranslatedText>
					</Description>
					<sdm:InclusionCriteria>
						<sdm:Criterion ConditionOID="COND.MIN_AGE" Name="Inclusion criterion for age" OID="CRIT.MIN_AGE"/>
						<sdm:Criterion ConditionOID="COND.ALZHEIMER_DISEASE" Name="Inclusion criterion: subject has AD" OID="CRIT.ALZHEIMER_DISEASE"/>
						<sdm:Criterion ConditionOID="COND.MMSE_10-23" Name="Inclusion criterion: MMSE between 10 and 23" OID="CRIT.MMSE_10-23"/>
						<sdm:Criterion ConditionOID="COND.HACHINSKI" Name="Inclusion criterion: Hachinski score &lt;= 4" OID="CRIT.HACHINSKI"/>
						<sdm:Criterion ConditionOID="COND.CNS_1_YEAR" Name="Inclusion criterion: CNS in past year compatible with AD" OID="CRIT.CNS_1_YEAR"/>
					</sdm:InclusionCriteria>
					<sdm:ExclusionCriteria>
						<sdm:Criterion ConditionOID="COND.MAX_AGE" Name="Exclusion criterion for age" OID="CRIT.MAX_AGE"/>
					</sdm:ExclusionCriteria>
				</sdm:InclusionExclusionCriteria>
				<sdm:Structure>
					<sdm:Epoch Name="Screening epoch" OID="EP.SCREPOCH" OrderNumber="1">
						<Description>
							<TranslatedText xml:lang="en">Screening Epoch</TranslatedText>
						</Description>
					</sdm:Epoch>
					<sdm:Epoch Name="Treatment epoch" OID="EP.TREPOCH" OrderNumber="2">
						<Description>
							<TranslatedText xml:lang="en">Treatment Epoch</TranslatedText>
						</Description>
					</sdm:Epoch>
					<sdm:Epoch Name="Follow-up epoch" OID="EP.FUPEPOCH" OrderNumber="3">
						<Description>
							<TranslatedText xml:lang="en">Follow-up Epoch</TranslatedText>
						</Description>
					</sdm:Epoch>
					<sdm:Arm Name="Placebo arm" OID="ARM.PLACEBO">
						<Description>
							<TranslatedText xml:lang="en">Placebo arm: a placebo is being administered</TranslatedText>
						</Description>
					</sdm:Arm>
					<sdm:Arm Name="Low dose arm" OID="ARM.LOWDOSE">
						<Description>
							<TranslatedText xml:lang="en">Low-dose arm: 50 cm2 TTS Formulation E, 54 mg xanomeline</TranslatedText>
						</Description>
					</sdm:Arm>
					<sdm:Arm Name="High dose arm" OID="ARM.HIGHDOSE">
						<Description>
							<TranslatedText xml:lang="en">High-dose arm: 75 cm2 TTS Formulation E, 81 mg xanomeline</TranslatedText>
						</Description>
					</sdm:Arm>
					<sdm:CellDef EpochOID="EP.SCREPOCH" Name="Screening Cell" OID="CELL.SCREEN">
						<sdm:ArmAssociation Type="Unblinded">
							<sdm:ArmRef ArmOID="ARM.PLACEBO"/>
							<sdm:ArmRef ArmOID="ARM.LOWDOSE"/>
							<sdm:ArmRef ArmOID="ARM.HIGHDOSE"/>
						</sdm:ArmAssociation>
						<sdm:SegmentRef OrderNumber="1" SegmentOID="SCREENSEG"/>
					</sdm:CellDef>
					<sdm:CellDef EpochOID="EP.TREPOCH" Name="Treatment Cell" OID="CELL.TREATMENT">
						<sdm:ArmAssociation Type="Blinded">
							<sdm:ArmRef ArmOID="ARM.PLACEBO"/>
							<sdm:ArmRef ArmOID="ARM.LOWDOSE"/>
							<sdm:ArmRef ArmOID="ARM.HIGHDOSE"/>
						</sdm:ArmAssociation>
						<sdm:SegmentRef OrderNumber="1" SegmentOID="SEG.TREATMENT"/>
					</sdm:CellDef>
					<sdm:CellDef EpochOID="EP.FUPEPOCH" Name="Follow-up Cell" OID="CELL.FOLLOWUP">
						<sdm:ArmAssociation Type="Blinded">
							<sdm:ArmRef ArmOID="ARM.PLACEBO"/>
							<sdm:ArmRef ArmOID="ARM.LOWDOSE"/>
							<sdm:ArmRef ArmOID="ARM.HIGHDOSE"/>
						</sdm:ArmAssociation>
						<sdm:SegmentRef OrderNumber="1" SegmentOID="SEG.FOLLOWUP"/>
					</sdm:CellDef>
					<sdm:SegmentDef Name="Screening segment" OID="SCREENSEG">
						<Description>
							<TranslatedText xml:lang="en">Screening Segment</TranslatedText>
						</Description>
						<sdm:ActivityRef ActivityOID="ACT.INFORMEDCONSENT" OrderNumber="1"/>
						<sdm:ActivityRef ActivityOID="ACT.PATIENTNUMBERASSIGNMENT" OrderNumber="2"/>
						<sdm:ActivityRef ActivityOID="ACT.MEDICALHISTORY_01" OrderNumber="3"/>
						<sdm:ActivityRef ActivityOID="ACT.VITALSIGNS_01" OrderNumber="4"/>
						<sdm:ActivityRef ActivityOID="ACT.AMB_ECG_PLACEMENT_01" OrderNumber="5"/>
						<sdm:ActivityRef ActivityOID="ACT.AMB_ECG_REMOVAL_01" OrderNumber="6"/>
						<sdm:ActivityRef ActivityOID="ACT.VITALSIGNS_02" OrderNumber="7"/>
						<sdm:ActivityRef ActivityOID="ACT.PATIENTRANDOMIZATION" OrderNumber="8"/>
						<sdm:ActivityRef ActivityOID="ACT.HACHINSKI" OrderNumber="9"/>
					</sdm:SegmentDef>
					<sdm:SegmentDef Name="Treatment segment" OID="SEG.TREATMENT">
						<Description>
							<TranslatedText xml:lang="en">Treatment Segment</TranslatedText>
						</Description>
					</sdm:SegmentDef>
					<sdm:SegmentDef Name="Follow-up segment" OID="SEG.FOLLOWUP">
						<Description>
							<TranslatedText xml:lang="en">Follow-up Segment</TranslatedText>
						</Description>
					</sdm:SegmentDef>
					<sdm:ActivityDef OID="ACT.TRIALSTART" Name="trial start activity">
						<FormRef FormOID="FO.INCLUSIONEXCLUSION" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.INFORMEDCONSENT" Name="informed consent activity">
						<FormRef FormOID="FO.INFORMEDCONSENT" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.PATIENTNUMBERASSIGNMENT" Name="patient number assignment activity"/>
					<sdm:ActivityDef OID="ACT.DEMOGR_EDU_HABITS" Name="Demographics, Education and Habits data collection activity">
						<FormRef FormOID="FO.DEMOGR_EDUC_HABITS" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.MMS" Name="Mini-mental state activity">
						<FormRef FormOID="FO.MMS" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.HACHINSKI" Name="Hachinski test Activity">
						<FormRef FormOID="FO.HACHINSKI" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.MEDICALHISTORY_01" Name="medical history activity">
						<FormRef FormOID="FO.MEDICALHISTORY" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.VITALSIGNS_01" Name="vital signs activity">
						<FormRef FormOID="FO.VS" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.AMB_ECG_PLACEMENT_01" Name="ambulatory ECG placement activity"/>
					<sdm:ActivityDef OID="ACT.AMB_ECG_REMOVAL_01" Name="ambulatory ECG removal activity"/>
					<sdm:ActivityDef OID="ACT.PATIENTRANDOMIZATION" Name="patient randomization activity"/>
					<sdm:ActivityDef OID="ACT.VITALSIGNS_02" Name="vital signs activity"/>
					<sdm:ActivityDef OID="ACT.TRIALFINISH" Name="trial finish activity"/>
					<sdm:ActivityDef OID="ACT.ASSESS_FEVER" Name="assess fever activity"/>
					<sdm:ActivityDef OID="ACT.ASSESS_HIGH_FEVER" Name="assess high fever activity"/>
					<sdm:ActivityDef OID="ACT.ECG_01" Name="ECG activity">
						<FormRef FormOID="FO.ECG" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.CHEST_X-RAY" Name="Chest X-Ray Activity">
						<FormRef FormOID="FO.CHEST_X-RAY" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.MRI" Name="MRI of brain Activity">
						<FormRef FormOID="FO.MRI" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.CT_SCAN" Name="CT Scan Activity">
						<FormRef FormOID="FO.CT_SCAN" Mandatory="Yes"/>
					</sdm:ActivityDef>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_01_START" Name="Start of treatment visit 1 (visit 4)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_02_START" Name="Start of treatment visit 2 (visit 5)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_03_START" Name="Start of treatment visit 3 (visit 6)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_04_START" Name="Start of treatment visit 4 (visit 7)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_05_START" Name="Start of treatment visit 5 (visit 8)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_06_START" Name="Start of treatment visit 6 (visit 9)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_07_START" Name="Start of treatment visit 7 (visit 10)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_08_START" Name="Start of treatment visit 8 (visit 11)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_09_START" Name="Start of treatment visit 9 (visit 12)"/>
					<sdm:ActivityDef OID="ACT.TRT_VISIT_10_START" Name="Start of treatment visit 10 (visit 9)"/>
					<sdm:ActivityDef OID="ACT.ASSESS_HEADACHE" Name="Assess headache"/>
				</sdm:Structure>
				<sdm:Workflow>
					<sdm:StudyStart>
						<sdm:ActivityRef ActivityOID="ACT.TRIALSTART"/>
					</sdm:StudyStart>
					<sdm:StudyFinish>
						<sdm:ActivityRef ActivityOID="ACT.TRIALFINISH"/>
					</sdm:StudyFinish>
					<sdm:EntryExitCriteria Name="Entry/exit criteria for treatment epoch" OID="CRIT.TREATMENT_EPOCH" StructuralElementOID="EP.TREPOCH" StructuralElementType="Epoch">
						<sdm:EntryCriteria>
							<sdm:IncludeInclusionExclusionCriteria/>
							<sdm:Criterion ConditionOID="COND.TREATMENT_EPOCH_ENTRY" Name="Entry criterion for treatment epoch" OID="CRIT.TREATMENT_EPOCH_ENTRY"/>
						</sdm:EntryCriteria>
						<sdm:ExitCriteria>
							<sdm:Criterion ConditionOID="COND.TREATMENT_EPOCH_EXIT" Name="Exit criterion for treatment epoch" OID="CRIT.TREATMENT_EPOCH_EXIT"/>
						</sdm:ExitCriteria>
					</sdm:EntryExitCriteria>
					<sdm:EntryExitCriteria Name="Entry/exit criteria for ECG activity" OID="CRIT.AMB_ECG_PLACEMENT" StructuralElementOID="ACT.AMB_ECG_PLACEMENT_01" StructuralElementType="Activity">
						<sdm:EntryCriteria>
							<sdm:Criterion ConditionOID="COND.ECG_ACTIVITY_ENTRY" Name="Entry criterion for ECG activity" OID="CRIT.AMB_ECG_PLACEMENT_ENTRY"/>
						</sdm:EntryCriteria>
						<sdm:ExitCriteria>
							<sdm:Criterion ConditionOID="COND.ECG_ACTIVITY_EXIT" Name="Exit criterion for ECG activity" OID="CRIT.AMB_ECG_PLACEMENT_EXIT"/>
						</sdm:ExitCriteria>
					</sdm:EntryExitCriteria>
					<sdm:Transition OID="TRANS.TRIAL_START" Name="Trial start transition" SourceActivityOID="ACT.TRIALSTART">
						<sdm:Switch>
							<sdm:TransitionDefault Name="(default) transition to informed consent" OID="TRANS.TRIAL_START_TO_INFCONSENT" TargetActivityOID="ACT.INFORMEDCONSENT"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Transition Name="Transition from informed consent activity" OID="TRANS.INFCONSENT" SourceActivityOID="ACT.INFORMEDCONSENT">
						<sdm:Switch>
							<sdm:TransitionDestination ConditionOID="COND.INFCONSENT" Name="conditional transition from informed consent to patient number assigned" OID="TRANS.INFCONSENT_TO_PATIENTNUMBERASSIGNMENT" TargetActivityOID="ACT.PATIENTNUMBERASSIGNMENT"/>
							<sdm:TransitionDefault Name="default transition from informed consent to study finish" OID="TRANS.INFCONSENT_TO_STUDYFINISH" TargetActivityOID="ACT.TRIALFINISH"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Transition Name="transition to activity taking demographics, education and habits" OID="TRANS.DEMOGR_EDU_HABITS" SourceActivityOID="ACT.PATIENTNUMBERASSIGNMENT">
						<sdm:Switch>
							<sdm:TransitionDefault Name="default transition to transition to activity taking demographics, education and habits" OID="TRD.DEMOGR_EDU_HABITS" TargetActivityOID="ACT.DEMOGR_EDU_HABITS"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Transition Name="Transition to mini-mental state test activity" OID="TRANS.MMS" SourceActivityOID="ACT.DEMOGR_EDU_HABITS">
						<sdm:Switch>
							<sdm:TransitionDefault Name="Default transition to mini-mental state test activity" OID="TRD.MMS" TargetActivityOID="ACT.MMS"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Transition Name="transition to Hachinski test" OID="TRANS.HACHINSKI" SourceActivityOID="ACT.MMS">
						<sdm:Switch>
							<sdm:TransitionDestination ConditionOID="COND.MMSE_10-23" Name="conditional transition to Hachinski test" OID="TRD.HACHINSKI" TargetActivityOID="ACT.HACHINSKI"/>
							<sdm:TransitionDefault Name="Transition to Trial Finish as MMS leads to exclusion" OID="TRD.MMS_EXCLUSION" TargetActivityOID="ACT.TRIALFINISH"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Transition Name="Transition between Hachinski test and Medical History" OID="TRANS.MEDICALHISTORY_01" SourceActivityOID="ACT.HACHINSKI">
						<sdm:Switch>
							<sdm:TransitionDestination ConditionOID="COND.HACHINSKI" Name="Conditional Transition between Hachinski test and Medical History" OID="TRD.MEDICALHISTORY_01" TargetActivityOID="ACT.MEDICALHISTORY_01"/>
							<sdm:TransitionDefault Name="Defaut transition to Trial Finish due to Hachinski score exclusion" OID="TRD.HACHINSKI_EXCLUSION" TargetActivityOID="ACT.TRIALFINISH"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Transition Name="Transitions from Medical History Activity" OID="TRANS.MEDHISTORY" SourceActivityOID="ACT.MEDICALHISTORY_01">
						<sdm:Switch>
							<sdm:TransitionDefault Name="Transition to Vital Signs Activity" OID="TRANS.MEDHISTORY_TO_VITAL_SIGNS" TargetActivityOID="ACT.VITALSIGNS_01"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Transition Name="Trial finish due to high fever" OID="TRANS.HIGH_FEVER_TRIALFINISH" SourceActivityOID="ACT.ASSESS_HIGH_FEVER">
						<sdm:Switch>
							<sdm:TransitionDefault Name="Trial finish due to high fever" OID="TRANSDEF.HIGH_FEVER_TRIALFINISH" TargetActivityOID="ACT.TRIALFINISH"/>
						</sdm:Switch>
					</sdm:Transition>
					<sdm:Trigger ConditionOID="COND.FEVER_OLD" Name="Fever trigger" OID="TRIG.FEVER" StructuralElementOID="EP.TREPOCH" StructuralElementType="Epoch">
						<sdm:Switch>
							<sdm:TransitionDestination ConditionOID="COND.HIGH_FEVER" Name="conditional transition when subject has high fever" OID="TRANS.HIGH_FEVER_TRIGGER" TargetActivityOID="ACT.ASSESS_HIGH_FEVER"/>
							<sdm:TransitionDefault Name="default transition from when subject has fever" OID="TRANS.FEVER_TRIGGER" TargetActivityOID="ACT.ASSESS_FEVER"/>
						</sdm:Switch>
					</sdm:Trigger>
					<sdm:Trigger ConditionOID="COND.HEADACHE" Name="Headache trigger" OID="TRIG.HEADACHE" StructuralElementOID="EP.TREPOCH" StructuralElementType="Epoch">
						<sdm:Switch>
							<sdm:TransitionDefault Name="Default transition upon headache" OID="TRANS.HEADACHE_TRIGGER" TargetActivityOID="ACT.ASSESS_HEADACHE"/>
						</sdm:Switch>
					</sdm:Trigger>
				</sdm:Workflow>
				<sdm:Timing>
					<sdm:AbsoluteTimingConstraint ActivityOID="ACT.INFORMEDCONSENT" Name="Absolute timing constraint on informed consent activity" OID="TCA.INFCONSENT" TimepointTarget="2009-09-20T11:07:23-05:00"/>
					<sdm:RelativeTimingConstraint Name="relative timing constraint between activity informed consent and activity patient number assignment" OID="TCR.INFCONSENT_TO_PATIENTNUMBERASSIGNMENT" PredecessorActivityOID="ACT.INFORMEDCONSENT" SuccessorActivityOID="ACT.PATIENTNUMBERASSIGNMENT" TimepointRelativeTarget="P7D"/>
					<sdm:RelativeTimingConstraint Name="Timing constraint between ambulatory ECG placement and removal" OID="TCR.AMB_ECG_PLACEMENT_REMOVAL" PredecessorActivityOID="ACT.AMB_ECG_PLACEMENT_01" SuccessorActivityOID="ACT.AMB_ECG_REMOVAL_01" TimepointPreWindow="PT16H" TimepointRelativeTarget="PT24H" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">All patients will undergo a 24-hour Ambulatory ECG at Visit 2 (prior to the initiation of study medication). Although every effort will be made to obtain the entire 24-hour ambulatory ECG recording, this may not always be feasible because of patient behavior or technical difficulties. The minimal recording period for an ambulatory ECG to be considered interpretable will be 8 hours, of which at least 3 hours must be sleep.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 1 (visit 4)" OID="TCR.VISIT4" PredecessorActivityOID="ACT.PATIENTRANDOMIZATION" SuccessorActivityOID="ACT.TRT_VISIT_01_START" TimepointRelativeTarget="P14D" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 2 (visit 5)" OID="TCR.VISIT5" PredecessorActivityOID="ACT.PATIENTRANDOMIZATION" SuccessorActivityOID="ACT.TRT_VISIT_02_START" TimepointRelativeTarget="P28D" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 3 (visit 6)" OID="TCR.VISIT6" PredecessorActivityOID="ACT.PATIENTRANDOMIZATION" SuccessorActivityOID="ACT.TRT_VISIT_03_START" TimepointRelativeTarget="P42D" Type="StartToStart">
						<Description>
							<TranslatedText>For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 4 (visit 7)" OID="TCR.VISIT7" PredecessorActivityOID="ACT.PATIENTRANDOMIZATION" SuccessorActivityOID="ACT.TRT_VISIT_04_START" TimepointRelativeTarget="P56D" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 5 (visit 8)" OID="TCR.VISIT8" PredecessorActivityOID="ACT.TRT_VISIT_04_START" SuccessorActivityOID="ACT.TRT_VISIT_05_START" TimepointRelativeTarget="P28D" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks and, thereafter, at clinic visits every 4 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 6 (visit 9)" OID="TCR.VISIT9" PredecessorActivityOID="ACT.TRT_VISIT_05_START" SuccessorActivityOID="ACT.TRT_VISIT_06_START" TimepointRelativeTarget="P28D" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks and, thereafter, at clinic visits every 4 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 7 (visit 10)" OID="TCR.VISIT10" PredecessorActivityOID="ACT.TRT_VISIT_06_START" SuccessorActivityOID="ACT.TRT_VISIT_07_START" TimepointRelativeTarget="P28D" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks and, thereafter, at clinic visits every 4 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:RelativeTimingConstraint Name="Timing constraint for treatment visit 8 (visit 11)" OID="TCR.VISIT11" PredecessorActivityOID="ACT.TRT_VISIT_07_START" SuccessorActivityOID="ACT.TRT_VISIT_08_START" TimepointRelativeTarget="P28D" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks and, thereafter, at clinic visits every 4 weeks.</TranslatedText>
						</Description>
					</sdm:RelativeTimingConstraint>
					<sdm:TransitionTimingConstraint Name="Transition timing constraint 1 name" OID="TCT.INFCONSENT_TO_PATIENTNUMBERASSIGNMENT" TimepointRelativeTarget="PT24H" TransitionDestinationOID="TRANS.INFCONSENT_TO_PATIENTNUMBERASSIGNMENT" Type="StartToStart">
						<Description>
							<TranslatedText xml:lang="en">english description</TranslatedText>
							<TranslatedText xml:lang="fr">french description</TranslatedText>
						</Description>
					</sdm:TransitionTimingConstraint>
					<sdm:TransitionTimingConstraint Name="Transition timing constraint 2" OID="TCT.FEVER_TRIGGER" TimepointRelativeTarget="PT1H" TransitionDestinationOID="TRANS.FEVER_TRIGGER">
						<Description>
							<TranslatedText xml:lang="en">Upon fever, react within one hour</TranslatedText>
							<TranslatedText xml:lang="fr">En cas de fievre, reaction en moins d'une heure</TranslatedText>
						</Description>
					</sdm:TransitionTimingConstraint>
					<sdm:TransitionTimingConstraint Name="at high fever, go to trial finish within 1 day" OID="TCT.FEVER_TRIAL_FINISH" TimepointRelativeTarget="P1D" TransitionDestinationOID="TRANSDEF.HIGH_FEVER_TRIALFINISH" Type="StartToStart"/>
				</sdm:Timing>
			</Protocol>
			<StudyEventDef OID="SE.SCREENING_VISIT" Name="Screening Visit (Visit 1)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Screening Visit at day -14</TranslatedText>
				</Description>
				<sdm:ActivityRef ActivityOID="ACT.TRIALSTART"/>
				<sdm:ActivityRef ActivityOID="ACT.INFORMEDCONSENT"/>
				<sdm:ActivityRef ActivityOID="ACT.PATIENTNUMBERASSIGNMENT"/>
				<sdm:ActivityRef ActivityOID="ACT.DEMOGR_EDU_HABITS"/>
				<sdm:ActivityRef ActivityOID="ACT.MMS"/>
				<sdm:ActivityRef ActivityOID="ACT.HACHINSKI"/>
				<sdm:ActivityRef ActivityOID="ACT.MEDICALHISTORY_01"/>
				<sdm:ActivityRef ActivityOID="ACT.VITALSIGNS_01"/>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.DS_IC" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.IE" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.DM_1" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.MHIS-NACC" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.MH_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.SU_ALCOHOL" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.SU_CAFFEINE" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.SU_SMOKING" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.PR_CHESTXRAY" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.VS_1" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="13"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="14"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="15"/>
				<FormRef FormOID="F.PR_CTSCAN" Mandatory="Yes" OrderNumber="16"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="17"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="18"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="19"/>
				<FormRef FormOID="F.LB_URINE" Mandatory="Yes" OrderNumber="20"/>
				<FormRef FormOID="F.ADAS-COG" Mandatory="Yes" OrderNumber="21"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="22"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="23"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="24"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="25"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.AMB_ECG_VISIT" Name="Ambulatory ECG (Visit 2)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">24-Hour Ambulatory ECG Applied</TranslatedText>
				</Description>
				<sdm:ActivityRef ActivityOID="ACT.AMB_ECG_PLACEMENT_01"/>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_2" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_OTHER" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="12"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.RANDOMIZATION_VISIT" Name="Randomization Visit (Visit 3)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">ECG Removal, Randomization</TranslatedText>
				</Description>
				<sdm:ActivityRef ActivityOID="ACT.AMB_ECG_REMOVAL_01"/>
				<sdm:ActivityRef ActivityOID="ACT.PATIENTRANDOMIZATION"/>
				<sdm:ActivityRef ActivityOID="ACT.VITALSIGNS_02"/>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_2" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.ADAS-COG" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="12"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_01" Name="Treatment Visit 1 (Visit 4)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 1</TranslatedText>
				</Description>
				<sdm:ActivityRef ActivityOID="ACT.TRT_VISIT_01_START"/>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_URINE" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.LB_OTHER" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="13"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_02" Name="Treatment Visit 2 (Visit 5)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 2</TranslatedText>
				</Description>
				<sdm:ActivityRef ActivityOID="ACT.TRT_VISIT_02_START"/>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_OTHER" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="12"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_03" Name="Treatment Visit 3 (Visit 6)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 3</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_3" Mandatory="No" OrderNumber="2"/>
				<FormRef FormOID="F.VS_4" Mandatory="No" OrderNumber="3"/>
				<FormRef FormOID="F.EX_1" Mandatory="No" OrderNumber="4"/>
				<FormRef FormOID="F.AE_1" Mandatory="No" OrderNumber="5"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_04" Name="Treatment Visit 4 (Visit 7)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 4</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="11"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_05" Name="Treatment Visit 5 (Visit 8)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 5</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.ADAS-COG" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="13"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="14"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="15"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_06" Name="Treatment Visit 6 (Visit 9)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 6</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_URINE" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.LB_OTHER" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="13"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_07" Name="Treatment Visit 7 (Visit 10)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 7</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.ADAS-COG" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="13"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="14"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="15"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_08" Name="Treatment Visit 8 (Visit 11)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 8</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_URINE" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.LB_OTHER" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="13"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_09" Name="Treatment Visit 9 (Visit 12)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 9</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_URINE" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.ADAS-COG" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="13"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="14"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="15"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.TRT_VISIT_10" Name="Treatment Visit 10 (Visit 13)" Repeating="No" Type="Scheduled">
				<Description>
					<TranslatedText xml:lang="en">Treatment Visit 10</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.TTSACC" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.DS_SUMMARY" Mandatory="Yes" OrderNumber="13"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.EARLY_TERM_VISIT" Name="Early Termination Visit" Repeating="No" Type="Unscheduled">
				<Description>
					<TranslatedText xml:lang="en">Early Termination Visit</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.VS_2" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.VS_3" Mandatory="Yes" OrderNumber="3"/>
				<FormRef FormOID="F.VS_4" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.PR_ECG_1" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.LB_CHEM" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.LB_HEM" Mandatory="Yes" OrderNumber="8"/>
				<FormRef FormOID="F.LB_URINE" Mandatory="Yes" OrderNumber="9"/>
				<FormRef FormOID="F.LB_OTHER" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.EX_1" Mandatory="Yes" OrderNumber="10"/>
				<FormRef FormOID="F.TTSACC" Mandatory="Yes" OrderNumber="11"/>
				<FormRef FormOID="F.ADAS-COG" Mandatory="Yes" OrderNumber="12"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="13"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="14"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="15"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="16"/>
				<FormRef FormOID="F.DS_SUMMARY" Mandatory="Yes" OrderNumber="17"/>
			</StudyEventDef>
			<StudyEventDef OID="SE.RETRIEVAL_TERM_VISIT" Name="Retrieval of Early Discontinuations Visit" Repeating="No" Type="Unscheduled">
				<Description>
					<TranslatedText xml:lang="en">Retrieval of Early Discontinuations Visit. If possible, patients who have terminated early will be retrieved on the date which would have represented Visit 12 (Week 24).</TranslatedText>
				</Description>
				<FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
				<FormRef FormOID="F.CM_1" Mandatory="Yes" OrderNumber="2"/>
				<FormRef FormOID="F.ADAS-COG" Mandatory="Yes" OrderNumber="32"/>
				<FormRef FormOID="F.CIBIC+" Mandatory="Yes" OrderNumber="4"/>
				<FormRef FormOID="F.DAD" Mandatory="Yes" OrderNumber="5"/>
				<FormRef FormOID="F.NPI-X" Mandatory="Yes" OrderNumber="6"/>
				<FormRef FormOID="F.AE_1" Mandatory="Yes" OrderNumber="7"/>
				<FormRef FormOID="F.DS_SUMMARY" Mandatory="Yes" OrderNumber="8"/>
			</StudyEventDef>
			<FormDef OID="F.ADAS-COG" Name="Alzheimer's Disease Assessment Scale - Cognitive" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Alzheimer's Disease Assessment Scale - Cognitive</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.ADAS-COG" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef Name="Adverse Events" OID="F.AE_1" Repeating="Yes">
				<Description>
					<TranslatedText xml:lang="en-US">Defines the variables to support the collection of adverse events and relevant surgeries or other procedures that started after study Informed Consent.    The Adverse Events dataset includes clinical data describing 'any untoward medical occurrence in a patient or clinical investigation subject administered a pharmaceutical product and which does not necessarily have to have a causal relationship with this treatment' (ICH E2A). The adverse events dataset also includes any events related to protocol procedure (regardless of the administration of a pharmaceutical product).  Adverse events may be captured either as free text or via a pre-specified list of terms.</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.AE_1_1" Mandatory="Yes" OrderNumber="1"/>
				<ItemGroupRef ItemGroupOID="IG.AE_1_2" Mandatory="Yes" OrderNumber="2"/>
				<ItemGroupRef ItemGroupOID="IG.AE_1_3" Mandatory="Yes" OrderNumber="3"/>
			</FormDef>
			<FormDef OID="F.CIBIC+" Name="Clinician's Interview-Based Impression of Change" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Clinician's Interview-Based Impression of Change</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.CIBIC+" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.CM_1" Name="Concomitant Medications" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Concomitant Medications</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.CM_1" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.DAD" Name="Disability Assessment for Dementia" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Disability Assessment for Dementia</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.DAD" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.DM_1" Name="Demographics" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Definition of the variables needed to support the collection of a subject's date of birth, gender, race and ethnicity.</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.DM_1" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.DOV" Name="Date of Visit" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Subject Visits consolidates information about the timing of subject visits that is otherwise spread over domains that include the visit variables (VISITNUM and possibly VISIT and/or VISITDY).</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.DOV" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.DS_IC" Name="Informed Consent" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Defines the variables needed to account for when a subject completes the protocol milestone of Informed Consent for the study or a particular phase or segment of the study.</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.DS_IC" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.DS_SUMMARY" Name="Patient Summary" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Patient Summary</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.DS_SUMMARY" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.EX_1" Name="Study Drug Exposure" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Study Drug Exposure</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.EX_1" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.IE" Name="Inclusion / Exclusion Criteria" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en">Inclusion / Exclusion Criteria</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.IE_IN" OrderNumber="1" Mandatory="Yes"/>
				<ItemGroupRef ItemGroupOID="IG.IE_EX" OrderNumber="2" Mandatory="Yes"/>
			</FormDef>
			<FormDef OID="F.LB_CHEM" Name="Laboratory: Chemistry" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Laboratory: Chemistry</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.LB_CHEM" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.LB_HEM" Name="Laboratory: Hematology" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Laboratory: Hematology</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.LB_HEM" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.LB_OTHER" Name="Laboratory: Other" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Laboratory: Other</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.LB_OTHER" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.LB_URINE" Name="Laboratory: Urinalysis" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Laboratory: Urinalysis</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.LB_URINE" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.MH_1" Name="Significant Historical Diagnosis" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Significant Historical Diagnosis</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.MH_1" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.MHIS-NACC" Name="Modified Hachinski Ischemic Scale" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Modified Hachinski Ischemic Scale</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.MHIS-NACC" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.MMSE" Name="Mini-Mental State Examination" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Mini-Mental State Examination</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.MMSE" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.NPI-X" Name="Neuropsychiatric Inventory Questionnaire - Revised" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Neuropsychiatric Inventory Questionnaire - Revised</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.NPI-X" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.PR_CHESTXRAY" Name="Procedure: Chest X-RAY" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure: Chest X-RAY</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.PR_CHESTXRAY" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.PR_CTSCAN" Name="Procedure: CT Scan" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure: CT Scan</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.PR_CTSCAN" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.PR_ECG_1" Name="Procedure: ECG" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure: ECG</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.PR_ECG_1" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.PR_ECG_2" Name="Procedure: Ambulatory ECG" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure: Ambulatory ECG Place</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.PR_ECG_2" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.PR_MRI" Name="Procedure: MRI" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure: MRI</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.PR_MRI" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.SC_EDUCATION" Name="Education" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en">Education</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.SC_EDUCATION" OrderNumber="1" Mandatory="Yes"/>
			</FormDef>
			<FormDef OID="F.SU_ALCOHOL" Name="Substance Use - Alcohol" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Defines the variables needed to capture a subject's alcohol consumption that may be used to assess the efficacy and/or safety of therapies that look to mitigate the effects of chronic substance use, or that could be used as covariates in other efficacy and/or safety analyses.</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.SU_ALCOHOL" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.SU_CAFFEINE" Name="Substance Use - Caffeine" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Defines the variables needed to capture a subject's caffeine consumption that may be used to assess the efficacy and/or safety of therapies that look to mitigate the effects of chronic substance use, or that could be used as covariates in other efficacy and/or safety analyses.</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.SU_CAFFEINE" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.SU_CAFFEINE" Name="Habits: Caffeine" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Habits: Caffeine</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.SU_CAFFEINE" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.SU_SMOKING" Name="Habits: Smoking" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Defines the variables needed to capture a subject's tobacco consumption that may be used to assess the efficacy and/or safety of therapies that look to mitigate the effects of chronic substance use, or that could be used as covariates in other efficacy and/or safety analyses.</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.SU_SMOKING" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.TTSACC" Name="TTS Acceptability Survey" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">TTS Acceptability Survey</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.TTSACC" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.VS_1" Name="Vital Signs: Height" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Vital Signs: Height</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.VS_1" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.VS_2" Name="Vital Signs: Weight" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Vital Signs: Weight</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.VS_2" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.VS_3" Name="Vital Signs: Temperature" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Vital Signs: Temperature</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.VS_3" Mandatory="Yes" OrderNumber="1"/>
			</FormDef>
			<FormDef OID="F.VS_4" Name="Vital Signs: Heart Rate and Blood Pressure" Repeating="No">
				<Description>
					<TranslatedText xml:lang="en-US">Vital Signs: Heart Rate and Blood Pressure</TranslatedText>
				</Description>
				<ItemGroupRef ItemGroupOID="IG.VS_4_1" Mandatory="Yes" OrderNumber="1"/>
				<ItemGroupRef ItemGroupOID="IG.VS_4_2" Mandatory="Yes" OrderNumber="2"/>
				<ItemGroupRef ItemGroupOID="IG.VS_4_3" Mandatory="Yes" OrderNumber="3"/>
			</FormDef>
			<ItemGroupDef OID="IG.ADAS-COG" Name="Alzheimer's Disease Assessment Scale - Cognitive" Repeating="No" SASDatasetName="ADASCOG">
				<ItemRef ItemOID="I.ACITM01" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM02" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM03" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM04" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM05" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM06" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM07" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM08" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM09" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM10" OrderNumber="10" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM11" OrderNumber="11" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM12" OrderNumber="12" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM13" OrderNumber="13" Mandatory="No"/>
				<ItemRef ItemOID="I.ACITM14" OrderNumber="14" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.AE_1_1" Name="Adverse Events Present" SASDatasetName="AEYN" Repeating="No">
				<ItemRef ItemOID="I.AEYN" Mandatory="Yes" OrderNumber="1"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.AE_1_2" Name="Adverse Events Header" SASDatasetName="AEH" Repeating="No">
				<ItemRef ItemOID="I.AETERM" Mandatory="Yes" OrderNumber="1"/>
				<ItemRef ItemOID="I.AEGRPID" Mandatory="Yes" OrderNumber="2"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.AE_1_3" Name="Adverse Events Details" SASDatasetName="AED" Repeating="Yes">
				<ItemRef ItemOID="I.AEGRPID" Mandatory="Yes" OrderNumber="1"/>
				<ItemRef ItemOID="I.AESPID" Mandatory="Yes" OrderNumber="2"/>
				<ItemRef ItemOID="I.AESTDAT" Mandatory="Yes" OrderNumber="3"/>
				<ItemRef ItemOID="I.AEONGO" Mandatory="Yes" OrderNumber="5"/>
				<ItemRef ItemOID="I.AEENDAT" Mandatory="Yes" OrderNumber="6"/>
				<ItemRef ItemOID="I.AESEV" Mandatory="Yes" OrderNumber="8"/>
				<ItemRef ItemOID="I.AEREL" Mandatory="Yes" OrderNumber="9"/>
				<ItemRef ItemOID="I.AESER" Mandatory="Yes" OrderNumber="10"/>
				<ItemRef ItemOID="I.AESDTH" Mandatory="Yes" OrderNumber="11"/>
				<ItemRef ItemOID="I.AESLIFE" Mandatory="Yes" OrderNumber="12"/>
				<ItemRef ItemOID="I.AESHOSP" Mandatory="Yes" OrderNumber="13"/>
				<ItemRef ItemOID="I.AESDISAB" Mandatory="Yes" OrderNumber="14"/>
				<ItemRef ItemOID="I.AESCONG" Mandatory="Yes" OrderNumber="15"/>
				<ItemRef ItemOID="I.AESINV" Mandatory="No" OrderNumber="16"/>
				<ItemRef ItemOID="I.AESMIE" Mandatory="Yes" OrderNumber="17"/>
				<ItemRef ItemOID="I.AEACN" Mandatory="Yes" OrderNumber="18"/>
				<ItemRef ItemOID="I.AEOUT" Mandatory="Yes" OrderNumber="19"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.CIBIC+" Name="Clinician's Interview-Based Impression of Change" Repeating="No" SASDatasetName="CIBIC">
				<ItemRef ItemOID="I.CIBIC" OrderNumber="1" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.CM_1" Name="Concomitant Medications" Repeating="No" SASDatasetName="CM">
				<ItemRef ItemOID="I.CMSPID" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.CMTRT" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.CMSTDAT" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.CMINDC" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.CMDOSE" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.CMDOSU" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.CMDOSFRQ" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.CMROUTE" OrderNumber="8" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.DAD" Name="Disability Assessment for Dementia" Repeating="No" SASDatasetName="DAD">
				<ItemRef ItemOID="I.DAITM01" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM02" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM03" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM04" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM05" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM06" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM07" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM08" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM09" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM10" OrderNumber="10" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM11" OrderNumber="11" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM12" OrderNumber="12" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM13" OrderNumber="13" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM14" OrderNumber="14" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM15" OrderNumber="15" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM16" OrderNumber="16" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM17" OrderNumber="17" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM18" OrderNumber="18" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM19" OrderNumber="19" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM20" OrderNumber="20" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM21" OrderNumber="21" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM22" OrderNumber="22" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM23" OrderNumber="23" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM24" OrderNumber="24" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM25" OrderNumber="25" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM26" OrderNumber="26" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM27" OrderNumber="27" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM28" OrderNumber="28" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM29" OrderNumber="29" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM30" OrderNumber="30" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM31" OrderNumber="31" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM32" OrderNumber="32" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM33" OrderNumber="33" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM34" OrderNumber="34" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM35" OrderNumber="35" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM36" OrderNumber="36" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM37" OrderNumber="37" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM38" OrderNumber="38" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM39" OrderNumber="39" Mandatory="No"/>
				<ItemRef ItemOID="I.DAITM40" OrderNumber="40" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.DM_1" Name="Demographics" SASDatasetName="DMSUBJ" Repeating="No">
				<ItemRef ItemOID="I.BRTHDAT" Mandatory="No" OrderNumber="1"/>
				<ItemRef ItemOID="I.SEX" Mandatory="Yes" OrderNumber="2"/>
				<ItemRef ItemOID="I.ETHNIC" Mandatory="Yes" OrderNumber="3"/>
				<ItemRef ItemOID="I.RACE" Mandatory="Yes" OrderNumber="4"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.DOV" Name="Visit Date" Repeating="No" SASDatasetName="DOV">
				<ItemRef ItemOID="I.VISDAT" Mandatory="Yes" OrderNumber="1"/>
				<ItemRef ItemOID="I.VISITNUM" Mandatory="Yes" OrderNumber="2"/>
				<ItemRef ItemOID="I.VISIT" Mandatory="Yes" OrderNumber="3"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.DS1001" Name="Disposition - Summary" SASDatasetName="DS_SUM" Repeating="No">
				<ItemRef ItemOID="I.DSSTDAT" Mandatory="Yes" OrderNumber="1"/>
				<ItemRef ItemOID="I.DSDECOD" Mandatory="Yes" OrderNumber="2"/>
				<ItemRef ItemOID="I.DSEVAL_DSDECOD_13" Mandatory="No" OrderNumber="3"/>
				<ItemRef ItemOID="I.DSTERM" Mandatory="Yes" OrderNumber="4"/>
				<ItemRef ItemOID="I.AEGRPID_RELREC" Mandatory="Yes" OrderNumber="5"/>
				<ItemRef ItemOID="I.DTHDAT" Mandatory="Yes" OrderNumber="6"/>
				<ItemRef ItemOID="I.DSTERM_PRICOD" Mandatory="No" OrderNumber="7"/>
				<ItemRef ItemOID="I.DSDCDSCAT_SUBJ_SPCFY" Mandatory="No" OrderNumber="8"/>
				<ItemRef ItemOID="I.DSDCDSCAT_CAREGIVER" Mandatory="No" OrderNumber="9"/>
				<ItemRef ItemOID="I.DSDCDSCAT_CGVR_SPCFY" Mandatory="No" OrderNumber="10"/>
				<ItemRef ItemOID="I.DSDCDSCAT_PHYSDEC_SPCFY" Mandatory="No" OrderNumber="11"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.DS2001" Name="Disposition - Informed Consent" SASDatasetName="DS_CNSNT" Repeating="No">
				<ItemRef ItemOID="I.DSSTDAT_IC" Mandatory="No" OrderNumber="1"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.EDUCATION" Name="Education" Repeating="No" SASDatasetName="SCEDUC">
				<ItemRef ItemOID="I.EDUYRNUM" OrderNumber="1" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.EX_1" Name="Study Drug Exposure" Repeating="No" SASDatasetName="EX">
				<ItemRef ItemOID="I.EXTRT" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.EXSTDAT" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.EXDOSE" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.EXDOSU" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.EXDOSFRM" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.EXDOSFRQ" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.EXROUTE" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.EXENDAT" OrderNumber="8" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.IE_EX" Name="Exclusion Criteria" Repeating="No" SASDatasetName="IEEX">
				<ItemRef ItemOID="I.IECAN" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.IECARDI" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.IECOMM" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.IEDEPRESS" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.IEDISEAS" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.IEECG" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.IEENDO" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.IEEXP" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.IEGASTRO" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.IEGU" OrderNumber="10" Mandatory="No"/>
				<ItemRef ItemOID="I.IEHIV" OrderNumber="11" Mandatory="No"/>
				<ItemRef ItemOID="I.IEHOSP" OrderNumber="12" Mandatory="No"/>
				<ItemRef ItemOID="I.IEID" OrderNumber="13" Mandatory="No"/>
				<ItemRef ItemOID="I.IELAB1" OrderNumber="14" Mandatory="No"/>
				<ItemRef ItemOID="I.IELAB2" OrderNumber="15" Mandatory="No"/>
				<ItemRef ItemOID="I.IELAB3" OrderNumber="16" Mandatory="No"/>
				<ItemRef ItemOID="I.IELAB4" OrderNumber="17" Mandatory="No"/>
				<ItemRef ItemOID="I.IELAB5" OrderNumber="18" Mandatory="No"/>
				<ItemRef ItemOID="I.IELAB6" OrderNumber="19" Mandatory="No"/>
				<ItemRef ItemOID="I.IEMEDHIST" OrderNumber="20" Mandatory="No"/>
				<ItemRef ItemOID="I.IENEURO" OrderNumber="21" Mandatory="No"/>
				<ItemRef ItemOID="I.IERESP" OrderNumber="22" Mandatory="No"/>
				<ItemRef ItemOID="I.IERHEU" OrderNumber="23" Mandatory="No"/>
				<ItemRef ItemOID="I.IESYNC" OrderNumber="24" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.IE_IN" Name="Inclusion Criteria" Repeating="No" SASDatasetName="IEIN">
				<ItemRef ItemOID="I.IEADDIAG" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.IECARE1" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.IECARE2" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.IECARE3" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.IECTMRI" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.IEGEO" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.IEIC" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.IEMMSE1" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.IEMMSE2" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.IESEXAGE" OrderNumber="10" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.LB_CHEM" Name="Laboratory: Chemistry" Repeating="No" SASDatasetName="LBCHEM">
				<ItemRef ItemOID="I.ALB" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.ALP" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.ALT" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.AST" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.BILI" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.BUN" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.CA" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.CHOL" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.CK" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.CL" OrderNumber="10" Mandatory="No"/>
				<ItemRef ItemOID="I.CREAT" OrderNumber="11" Mandatory="No"/>
				<ItemRef ItemOID="I.GGT" OrderNumber="12" Mandatory="No"/>
				<ItemRef ItemOID="I.GLUC" OrderNumber="13" Mandatory="No"/>
				<ItemRef ItemOID="I.K" OrderNumber="15" Mandatory="No"/>
				<ItemRef ItemOID="I.NA" OrderNumber="16" Mandatory="No"/>
				<ItemRef ItemOID="I.PHOS" OrderNumber="17" Mandatory="No"/>
				<ItemRef ItemOID="I.PROT" OrderNumber="18" Mandatory="No"/>
				<ItemRef ItemOID="I.URATE" OrderNumber="19" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.LB_HEM" Name="Laboratory: Hematology" Repeating="No" SASDatasetName="LBHEM">
				<ItemRef ItemOID="I.ANISO" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.BASO" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.EOS" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.HCT" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.HGB" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.LYM" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.MACROCY" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.MCH" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.MCHC" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.MCV" OrderNumber="10" Mandatory="No"/>
				<ItemRef ItemOID="I.MICROCY" OrderNumber="11" Mandatory="No"/>
				<ItemRef ItemOID="I.MONO" OrderNumber="12" Mandatory="No"/>
				<ItemRef ItemOID="I.PLAT" OrderNumber="13" Mandatory="No"/>
				<ItemRef ItemOID="I.POIKILO" OrderNumber="14" Mandatory="No"/>
				<ItemRef ItemOID="I.POLYCHR" OrderNumber="15" Mandatory="No"/>
				<ItemRef ItemOID="I.RBC" OrderNumber="16" Mandatory="No"/>
				<ItemRef ItemOID="I.WBC" OrderNumber="17" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.LB_OTHER" Name="Laboratory: Other" Repeating="No" SASDatasetName="LBOTHER">
				<ItemRef ItemOID="I.TSH" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.VITB12" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.HBA1C" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.HBA1C" OrderNumber="14" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.LB_URINE" Name="Laboratory: Urinalysis" Repeating="No" SASDatasetName="LBURING">
				<ItemRef ItemOID="I.COLOR" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.KETONES" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.PH" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.SPGRAV" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.UROBIL" OrderNumber="5" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.MH_1" Name="Significant Historical Diagnosis" Repeating="No" SASDatasetName="MH">
				<ItemRef ItemOID="I.MHYN" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.MHSPID" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.MHTERM" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.MHSTDAT" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.MHENDAT" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.MHSEV" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.MHDAT" OrderNumber="7" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.MHIS-NACC" Name="Modified Hachinski Ischemic Scale" Repeating="No" SASDatasetName="MHISNACC">
				<ItemRef ItemOID="I.MHITM01" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM02" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM03" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM04" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM05" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM06" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM07" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM08" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM09" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM10" OrderNumber="10" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM11" OrderNumber="11" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM12" OrderNumber="12" Mandatory="No"/>
				<ItemRef ItemOID="I.MHITM13" OrderNumber="13" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.MMSE" Name="Mini-Mental State Examination" Repeating="No" SASDatasetName="MMSE">
				<ItemRef ItemOID="I.MMITM01" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.MMITM02" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.MMITM03" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.MMITM04" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.MMITM05" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.MMITM06" OrderNumber="6" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.NPI-X" Name="Neuropsychiatric Inventory Questionnaire - Revised" Repeating="No" SASDatasetName="NPI-X">
				<ItemRef ItemOID="I.NPITM01P" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM01F" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM01S" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM01D" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM01" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM02P" OrderNumber="6" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM02F" OrderNumber="7" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM02S" OrderNumber="8" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM02D" OrderNumber="9" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM02" OrderNumber="10" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM03P" OrderNumber="11" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM03F" OrderNumber="12" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM03S" OrderNumber="13" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM03D" OrderNumber="14" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM03" OrderNumber="15" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM04P" OrderNumber="16" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM04F" OrderNumber="17" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM04S" OrderNumber="18" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM04D" OrderNumber="19" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM04" OrderNumber="20" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM05P" OrderNumber="21" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM05F" OrderNumber="22" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM05S" OrderNumber="23" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM05D" OrderNumber="24" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM05" OrderNumber="25" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM06P" OrderNumber="26" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM06F" OrderNumber="27" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM06S" OrderNumber="28" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM06D" OrderNumber="29" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM06" OrderNumber="30" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM07P" OrderNumber="31" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM07F" OrderNumber="32" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM07S" OrderNumber="33" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM07D" OrderNumber="34" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM07" OrderNumber="35" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM08P" OrderNumber="36" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM08F" OrderNumber="37" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM08S" OrderNumber="38" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM08D" OrderNumber="39" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM08" OrderNumber="40" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM09P" OrderNumber="41" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM09F" OrderNumber="42" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM09S" OrderNumber="43" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM09D" OrderNumber="44" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM09" OrderNumber="45" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM10P" OrderNumber="46" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM10F" OrderNumber="47" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM10S" OrderNumber="48" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM10D" OrderNumber="49" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM10" OrderNumber="50" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM11P" OrderNumber="51" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM11F" OrderNumber="52" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM11S" OrderNumber="53" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM11D" OrderNumber="54" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM11" OrderNumber="55" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM12P" OrderNumber="56" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM12F" OrderNumber="57" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM12S" OrderNumber="58" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM12D" OrderNumber="59" Mandatory="No"/>
				<ItemRef ItemOID="I.NPITM12" OrderNumber="60" Mandatory="No"/>
				<ItemRef ItemOID="I.NPTOT" OrderNumber="61" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.PR_CHESTXRAY" Name="Procedure: Chest X-RAY" Repeating="No" SASDatasetName="CHSTXRAY">
				<ItemRef ItemOID="I.CHESTXRAY_PROCCUR" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.CHESTXRAY_PRTRT" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.CHESTXRAY_PRSTDAT" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.CHESTXRAY_PRCEVINT" OrderNumber="4" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.PR_CTSCAN" Name="Procedure: CT Scan" Repeating="No" SASDatasetName="CTSCAN">
				<ItemRef ItemOID="I.CT SCAN_PROCCUR" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.CT SCAN_PRTRT" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.CT SCAN_PRSTDAT" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.CT SCAN_PRCEVINT" OrderNumber="4" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.PR_ECG_1" Name="Procedure: ECG" Repeating="No" SASDatasetName="ECG">
				<ItemRef ItemOID="I.ECG_PROCCUR" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.ECG_PROCCUR" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.ECG_PRTRT" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.ECG_PRSTDAT" OrderNumber="3" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.PR_ECG_2" Name="Procedure: Ambulatory ECG" Repeating="No" SASDatasetName="ECGAMB">
				<ItemRef ItemOID="I.ECG_PRTRT" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.ECG_PRSTDAT" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.ECG_INTP" OrderNumber="4" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.PR_MRI" Name="Procedure: ECG" Repeating="No" SASDatasetName="MRI">
				<ItemRef ItemOID="I.MRI_PROCCUR" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.MRI_PRTRT" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.MRI_PRSTDAT" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.MRI_PRCEVINT" OrderNumber="4" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.SU_ALCOHOL" Name="Substance Use - Alcohol" SASDatasetName="SUALC" Repeating="No">
				<ItemRef ItemOID="I.SUNCF_ALCOHOL" Mandatory="Yes" OrderNumber="1"/>
				<ItemRef ItemOID="I.SUSTDAT_ALCOHOL" Mandatory="No" OrderNumber="2"/>
				<ItemRef ItemOID="I.SUENDAT_ALCOHOL" Mandatory="No" OrderNumber="3"/>
				<ItemRef ItemOID="I.SUDOSE_BEER" Mandatory="No" OrderNumber="4"/>
				<ItemRef ItemOID="I.SUDOSFRQ_BEER" Mandatory="No" OrderNumber="5"/>
				<ItemRef ItemOID="I.SUDOSE_WINE" Mandatory="No" OrderNumber="6"/>
				<ItemRef ItemOID="I.SUDOSFRQ_WINE" Mandatory="No" OrderNumber="7"/>
				<ItemRef ItemOID="I.SUDOSE_SPIRITS" Mandatory="No" OrderNumber="8"/>
				<ItemRef ItemOID="I.SUDOSFRQ_SPIRITS" Mandatory="No" OrderNumber="9"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.SU_CAFFEINE" Name="Substance Use - Caffeine" SASDatasetName="SUCAF" Repeating="No">
				<ItemRef ItemOID="I.SUNCF_CAFFEINE" Mandatory="Yes" OrderNumber="1"/>
				<ItemRef ItemOID="I.SUSTDAT_CAFFEINE" Mandatory="No" OrderNumber="2"/>
				<ItemRef ItemOID="I.SUENDAT_CAFFEINE" Mandatory="No" OrderNumber="3"/>
				<ItemRef ItemOID="I.SUDOSE_COFFEE" Mandatory="No" OrderNumber="4"/>
				<ItemRef ItemOID="I.SUDOSFRQ_COFFEE" Mandatory="No" OrderNumber="5"/>
				<ItemRef ItemOID="I.SUDOSE_SODA" Mandatory="No" OrderNumber="6"/>
				<ItemRef ItemOID="I.SUDOSFRQ_SODA" Mandatory="No" OrderNumber="7"/>
				<ItemRef ItemOID="I.SUDOSE_TEA" Mandatory="No" OrderNumber="8"/>
				<ItemRef ItemOID="I.SUDOSFRQ_TEA" Mandatory="No" OrderNumber="9"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.SU_SMOKING" Name="Habits: Smoking" SASDatasetName="SUTOB" Repeating="No">
				<ItemRef ItemOID="I.SUNCF_TOBACCO" Mandatory="Yes" OrderNumber="1"/>
				<ItemRef ItemOID="I.SUSTDAT_TOBACCO" Mandatory="No" OrderNumber="2"/>
				<ItemRef ItemOID="I.SUENDAT_TOBACCO" Mandatory="No" OrderNumber="3"/>
				<ItemRef ItemOID="I.SUDOSE_CIGARETTES" Mandatory="No" OrderNumber="4"/>
				<ItemRef ItemOID="I.SUDOSFRQ_CIGARETTE" Mandatory="No" OrderNumber="5"/>
				<ItemRef ItemOID="I.SUDOSE_CIGAR" Mandatory="No" OrderNumber="6"/>
				<ItemRef ItemOID="I.SUDOSFRQ_CIGAR" Mandatory="No" OrderNumber="7"/>
				<ItemRef ItemOID="I.SUDOSE_PIPES" Mandatory="No" OrderNumber="8"/>
				<ItemRef ItemOID="I.SUDOSFRQ_PIPES" Mandatory="No" OrderNumber="9"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.TTSACC" Name="TTS Acceptability Survey" Repeating="No" SASDatasetName="TTSACC">
				<ItemRef ItemOID="I.TTSACC01" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.TTSACC02" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.TTSACC03" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.TTSACC04" OrderNumber="4" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.VS_1" Name="Vital Signs: Height" Repeating="No" SASDatasetName="VSHEIGHT">
				<ItemRef ItemOID="I.HEIGHT" OrderNumber="1" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.VS_2" Name="Vital Signs: Weight" Repeating="No" SASDatasetName="VSWEIGHT">
				<ItemRef ItemOID="I.WEIGHT" OrderNumber="1" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.VS_3" Name="Vital Signs: Temperature" Repeating="No" SASDatasetName="VSTEMP">
				<ItemRef ItemOID="I.TEMP" OrderNumber="1" Mandatory="No"/>
			</ItemGroupDef>
			<ItemGroupDef OID="IG.VS_4_1" Name="Vital Signs: Heart Rate and Blood Pressure" Repeating="Yes" SASDatasetName="VSHRBP">
				<ItemRef ItemOID="I.PULSE_SUPINE" OrderNumber="1" Mandatory="No"/>
				<ItemRef ItemOID="I.SYSBP_SUPINE" OrderNumber="2" Mandatory="No"/>
				<ItemRef ItemOID="I.DIABP_SUPINE" OrderNumber="3" Mandatory="No"/>
				<ItemRef ItemOID="I.PULSE_STANDING" OrderNumber="4" Mandatory="No"/>
				<ItemRef ItemOID="I.SYSBP_STANDING" OrderNumber="5" Mandatory="No"/>
				<ItemRef ItemOID="I.DIABP_STANDING" OrderNumber="5" Mandatory="No"/>
			</ItemGroupDef>
			<ItemDef OID="I.ACITM01" Name="WORD RECALL TASK" DataType="integer" Origin="CRF" SASFieldName="ACITM01">
				<Description>
					<TranslatedText xml:lang="en-US">WORD RECALL TASK</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Word Recall Task</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Word Recall Task</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM02" Name="NAMING OBJECTS AND FINGERS (REFER TO 5 C" DataType="integer" Origin="CRF" SASFieldName="ACITM02">
				<Description>
					<TranslatedText xml:lang="en-US">NAMING OBJECTS AND FINGERS (REFER TO 5 C</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Naming Objects And Fingers (Refer To 5 categories in manual)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Naming Objects And Fingers</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM03" Name="DELAYED WORD RECALL" DataType="integer" Origin="CRF" SASFieldName="ACITM03">
				<Description>
					<TranslatedText xml:lang="en-US">DELAYED WORD RECALL</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Delayed Word Recall</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Delayed Word Recall</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM04" Name="COMMANDS" DataType="integer" Origin="CRF" SASFieldName="ACITM04">
				<Description>
					<TranslatedText xml:lang="en-US">COMMANDS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Commands</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Commands</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM05" Name="CONSTRUCTIONAL PRAXIS" DataType="integer" Origin="CRF" SASFieldName="ACITM05">
				<Description>
					<TranslatedText xml:lang="en-US">CONSTRUCTIONAL PRAXIS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Constructional Praxis</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Constructional Praxis</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM06" Name="IDEATIONAL PRAXIS" DataType="integer" Origin="CRF" SASFieldName="ACITM06">
				<Description>
					<TranslatedText xml:lang="en-US">IDEATIONAL PRAXIS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Ideational Praxis</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ideational Praxis</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM07" Name="ORIENTATION" DataType="integer" Origin="CRF" SASFieldName="ACITM07">
				<Description>
					<TranslatedText xml:lang="en-US">ORIENTATION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Orientation</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Orientation</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM08" Name="WORD RECOGNITION" DataType="integer" Origin="CRF" SASFieldName="ACITM08">
				<Description>
					<TranslatedText xml:lang="en-US">WORD RECOGNITION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Word Recognition</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Word Recognition</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM09" Name="ATTENTION/VISUAL SEARCH TASK" DataType="integer" Origin="CRF" SASFieldName="ACITM09">
				<Description>
					<TranslatedText xml:lang="en-US">ATTENTION/VISUAL SEARCH TASK</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Attention/Visual Search Task</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Attention/Visual Search Task</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM10" Name="MAZE SOLUTION" DataType="integer" Origin="CRF" SASFieldName="ACITM10">
				<Description>
					<TranslatedText xml:lang="en-US">MAZE SOLUTION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Maze Solution</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Maze Solution</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM11" Name="SPOKEN LANGUAGE ABILITY" DataType="integer" Origin="CRF" SASFieldName="ACITM11">
				<Description>
					<TranslatedText xml:lang="en-US">SPOKEN LANGUAGE ABILITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Spoken Language Ability</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Spoken Language Ability</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM12" Name="COMPREHENSION OF SPOKEN LANGUAGE" DataType="integer" Origin="CRF" SASFieldName="ACITM12">
				<Description>
					<TranslatedText xml:lang="en-US">COMPREHENSION OF SPOKEN LANGUAGE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Comprehension Of Spoken Language</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Comprehension Of Spoken Language</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM13" Name="WORD FINDING DIFFICULTY IN SPONTANEOUS S" DataType="integer" Origin="CRF" SASFieldName="ACITM13">
				<Description>
					<TranslatedText xml:lang="en-US">WORD FINDING DIFFICULTY IN SPONTANEOUS S</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Word Finding Difficulty In Spontaneous Speech</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Word Finding Difficulty In Spontaneous Speech</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ACITM14" Name="RECALL OF TEST INSTRUCTIONS" DataType="integer" Origin="CRF" SASFieldName="ACITM14">
				<Description>
					<TranslatedText xml:lang="en-US">RECALL OF TEST INSTRUCTIONS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Recall Of Test Instructions</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Recall Of Test Instructions</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEACN" Name="Action Taken with Study Treatment" SASFieldName="AEACN" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Changes made to the study treatment in response to the adverse event.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What action was taken with study treatment?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.AEACN"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Action Taken with Study Treatment</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEENDAT" Name="End Date of Adverse Event" SASFieldName="AEENDAT" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date when the adverse event resolved.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the adverse event end date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>End Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEGRPID" Name="AE Group ID" SASFieldName="AEGRPID" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">AE Group ID is used to tie together a block of related records in a single domain for a subject.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">AE Group ID</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>AE Group ID</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEGRPID_RELREC" Name="AE Group ID Related Records" SASFieldName="AEGRPREL" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">Used to create RELREC to link observations from the AE domain to other observations in domains within the Interventions Class, Findings Class or Events Class.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">AE Group ID</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>AE Group ID</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEONGO" Name="Event Ongoing Flag" SASFieldName="AEONGO" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates AE is ongoing when no End Date is provided.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Is the adverse event ongoing?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ongoing</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEOUT" Name="Event Outcome" SASFieldName="AEOUT" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Event Outcome defines a subject's status associated with an event.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the outcome of this adverse event?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.OUT"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Outcome</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEREL" Name="Causality" SASFieldName="AEREL" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indication of whether the study treatment had a causal effect on the adverse event, as determined by the clinician/investigator.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was this adverse event related to study treatment?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Relationship to Study Treatment</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESCONG" Name="Congenital Anomaly or Birth Defect" SASFieldName="AESCONG" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates if a 'serious' adverse event was associated with a congenital anomaly or birth defect.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was the adverse event associated with a congenital anomaly or birth defect?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Congenital Anomaly or Birth Defect</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESDISAB" Name="Persist or Signif Disability/Incapacity" SASFieldName="AESDISAB" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates if a 'serious' adverse event was associated with a persistent or significant disability or incapacity.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Disability or Permanent Damage</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Disability or Permanent Damage</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESDTH" Name="Results in Death" SASFieldName="AESDTH" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates if a 'serious' adverse event resulted in death.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Death</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Death</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESER" Name="Serious Event" SASFieldName="AESER" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates whether or not the adverse event is determined to be "serious" based on what is defined in the protocol.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Is the adverse event serious?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESEV" Name="Severity/Intensity" SASFieldName="AESEV" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Description of the severity of the adverse event.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the severity of the adverse event?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.AESEV"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESHOSP" Name="Requires or Prolongs Hospitalization" SASFieldName="AESHOSP" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates if a 'serious' adverse event resulted in an initial or prolonged hospitalization.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Hospitalization (initial or prolonged)</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hospitalization (Initial or Prolonged)</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESINV" Name="Requires Intervention" SASFieldName="AESINV" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates if a 'serious' adverse event required medical or surgical intervention to preclude permanent impairment of a body function, or prevent permanent damage to a body structure, due to the use of a medical product.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Did the adverse event require intervention to prevent permanent impairment or damage due to the use of a medical product?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Required Device Intervention</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESLIFE" Name="Is Life Threatening" SASFieldName="AESLIFE" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates if a 'serious' adverse event was life threatening.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was the adverse event life threatening?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Life Threatening</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESMIE" Name="Other Medically Important Serious Event" SASFieldName="AESMIE" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Indicates if a 'serious' adverse event is associated with other serious or important medical events.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was the adverse event a medically important event not covered by other serious criteria?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Other Serious (Important Medical Events)</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESPID" Name="AE Number" SASFieldName="AESPID" DataType="integer" Origin="CRF" Length="5">
				<Description>
					<TranslatedText xml:lang="en-US">A sponsor-defined identifier that can be used for pre-printed numbers on the CRF.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the adverse event identifier?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>AE Number</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AESTDAT" Name="Start Date of Adverse Event" SASFieldName="AESTDAT" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date when the adverse event started.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the adverse event start date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Start Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AETERM" Name="Reported Event Term" SASFieldName="AETERM" DataType="text" Origin="CRF" Length="200">
				<Description>
					<TranslatedText xml:lang="en-US">Event Term is the initial free text description of a subject's Event provided by the investigator or reporter.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the adverse event term?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Adverse Event</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AEYN" Name="Event Experienced Flag" SASFieldName="AEYN" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">General prompt question regarding whether or not any AEs were experienced during the study.  This provides verification that all other fields on the CRF were deliberately left blank.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Were any adverse events experienced?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Any Adverse Events</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ALB" Name="ALBUMIN" DataType="text" Origin="eDT" SASFieldName="ALB">
				<Description>
					<TranslatedText xml:lang="en-US">ALBUMIN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Albumin test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Albumin</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ALP" Name="ALKALINE PHOSPHATASE" DataType="text" Origin="eDT" SASFieldName="ALP">
				<Description>
					<TranslatedText xml:lang="en-US">ALKALINE PHOSPHATASE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Alkaline Phosphatase test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Alkaline Phosphatase</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ALT" Name="ALANINE AMINOTRANSFERASE" DataType="text" Origin="eDT" SASFieldName="ALT">
				<Description>
					<TranslatedText xml:lang="en-US">ALANINE AMINOTRANSFERASE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Alanine Aminotransferase test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Alanine Aminotransferase</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ANISO" Name="ANISOCYTOSIS" DataType="text" Origin="eDT" SASFieldName="ANISO">
				<Description>
					<TranslatedText xml:lang="en-US">ANISOCYTOSIS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Anisocytosis test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Anisocytosis</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.AST" Name="ASPARTATE AMINOTRANSFERASE" DataType="text" Origin="eDT" SASFieldName="AST">
				<Description>
					<TranslatedText xml:lang="en-US">ASPARTATE AMINOTRANSFERASE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Aspartate Aminotransferase test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Aspartate Aminotransferase</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.BASO" Name="BASOPHILS" DataType="text" Origin="eDT" SASFieldName="BASO">
				<Description>
					<TranslatedText xml:lang="en-US">BASOPHILS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Basophils test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Basophils</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.BILI" Name="BILIRUBIN" DataType="text" Origin="eDT" SASFieldName="BILI">
				<Description>
					<TranslatedText xml:lang="en-US">BILIRUBIN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Bilirubin test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Bilirubin</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.BRTHDAT" SASFieldName="BRTHDAT" Name="Birth Date" DataType="date">
				<Description>
					<TranslatedText xml:lang="en-US">A subject's date of birth. The complete Date of Birth is made from the temporal components of Birth Year, Birth Month, and Birth Day.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the subject's date of birth?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Birth Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.BUN" Name="UREA NITROGEN" DataType="text" Origin="eDT" SASFieldName="BUN">
				<Description>
					<TranslatedText xml:lang="en-US">UREA NITROGEN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Urea Nitrogen test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Urea Nitrogen</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CA" Name="CALCIUM" DataType="text" Origin="eDT" SASFieldName="CA">
				<Description>
					<TranslatedText xml:lang="en-US">CALCIUM</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Calcium test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Calcium</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CHESTXRAY_PRCEVINT" Name="PR Collected Evaluation Interval" DataType="text" Origin="CRF" SASFieldName="PRCEVINT">
				<Description>
					<TranslatedText xml:lang="en-US">PR Collected Evaluation Interval</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Chest X-Ray Evaluation Interval</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Chest X-Ray Evaluation Interval</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CHESTXRAY_PROCCUR" Name="Procedure Occurrence" DataType="text" Origin="CRF" SASFieldName="PROCCUR">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Occurrence</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was the chext x-ray performed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Chest X-Ray Performed</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CHESTXRAY_PRSTDAT" Name="Procedure Start Date" DataType="date" Origin="CRF" SASFieldName="PRSTDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Start Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the electrocardiogram date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Chest X-Ray Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CHESTXRAY_PRTRT" Name="Reported Name of Procedure" DataType="text" Origin="CRF" SASFieldName="PRTRT">
				<Description>
					<TranslatedText xml:lang="en-US">Reported Name of Procedure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the procedure name?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Chest X-RAY</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CHOL" Name="CHOLESTEROL" DataType="text" Origin="eDT" SASFieldName="CHOL">
				<Description>
					<TranslatedText xml:lang="en-US">CHOLESTEROL</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Cholesterol test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Cholesterol</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CIBIC" Name="EXTENT OF CHANGE, IF ANY, SINCE BASELINE" DataType="text" Origin="CRF" SASFieldName="CIBIC">
				<Description>
					<TranslatedText xml:lang="en-US">EXTENT OF CHANGE, IF ANY, SINCE BASELINE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the extent of change, if any, since baseline?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Extent of Change If Any Since Baseline</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CK" Name="CREATINE KINASE" DataType="text" Origin="eDT" SASFieldName="CK">
				<Description>
					<TranslatedText xml:lang="en-US">CREATINE KINASE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Creatine Kinase test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Creatine Kinase</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CL" Name="CHLORIDE" DataType="text" Origin="eDT" SASFieldName="CL">
				<Description>
					<TranslatedText xml:lang="en-US">CHLORIDE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Chloride test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Chloride</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMDOSE" Name="CM Dose per Administration" DataType="float" Origin="CRF" SASFieldName="CMDOSE">
				<Description>
					<TranslatedText xml:lang="en-US">CM Dose per Administration</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the dose?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Dose</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMDOSFRQ" Name="CM Dosing Frequency per Interval" DataType="text" Origin="CRF" SASFieldName="CMDOSFRQ">
				<Description>
					<TranslatedText xml:lang="en-US">CM Dosing Frequency per Interval</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of dosing?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMDOSU" Name="CM Dose Units" DataType="text" Origin="CRF" SASFieldName="CMDOSU">
				<Description>
					<TranslatedText xml:lang="en-US">CM Dose Units</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What were the units for the dose?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Units</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMINDC" Name="CM Indication" DataType="text" Origin="CRF" SASFieldName="CMINDC">
				<Description>
					<TranslatedText xml:lang="en-US">CM Indication</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">For what indication was the treatment taken?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Indication</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMROUTE" Name="CM Route of Administration" DataType="text" Origin="CRF" SASFieldName="CMROUTE">
				<Description>
					<TranslatedText xml:lang="en-US">CM Route of Administration</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the route of administration?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Route</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMSPID" Name="CM Sponsor-Defined Identifier" DataType="integer" Origin="CRF" SASFieldName="CMSPID">
				<Description>
					<TranslatedText xml:lang="en-US">CM Sponsor-Defined Identifier</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Sequence Number</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Sequence Number</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMSTDAT" Name="Concomitant Meds Start Date" DataType="date" Origin="CRF" SASFieldName="CMSTDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Concomitant Meds Start Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the start date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Start Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CMTRT" Name="Reported Name of Drug, Med, or Therapy" DataType="text" Origin="CRF" SASFieldName="CMTRT">
				<Description>
					<TranslatedText xml:lang="en-US">Reported Name of Drug, Med, or Therapy</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the medication name?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Concomitant Medication</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.COLOR" Name="COLOR" DataType="text" Origin="eDT" SASFieldName="COLOR">
				<Description>
					<TranslatedText xml:lang="en-US">COLOR</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Color test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Color</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CREAT" Name="CREATININE" DataType="text" Origin="eDT" SASFieldName="CREAT">
				<Description>
					<TranslatedText xml:lang="en-US">CREATININE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Creatinine test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Creatinine</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CT SCAN_PRCEVINT" Name="PR Collected Evaluation Interval" DataType="text" Origin="CRF" SASFieldName="PRCEVINT">
				<Description>
					<TranslatedText xml:lang="en-US">PR Collected Evaluation Interval</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">CT SCAN Evaluation Interval</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>CT Scan Evaluation Interval</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CT SCAN_PROCCUR" Name="Procedure Occurrence" DataType="text" Origin="CRF" SASFieldName="PROCCUR">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Occurrence</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was the CT SCAN performed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>CT Scan Performed</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CT SCAN_PRSTDAT" Name="Procedure Start Date" DataType="date" Origin="CRF" SASFieldName="PRSTDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Start Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the CT SCAN date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>CT Scan Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.CT SCAN_PRTRT" Name="Reported Name of Procedure" DataType="text" Origin="CRF" SASFieldName="PRTRT">
				<Description>
					<TranslatedText xml:lang="en-US">Reported Name of Procedure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the procedure name?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>CT Scan</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM01" Name="UNDERTAKE TO WASH HIMSELF/HERSELF" DataType="text" Origin="CRF" SASFieldName="DAITM01">
				<Description>
					<TranslatedText xml:lang="en-US">UNDERTAKE TO WASH HIMSELF/HERSELF</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Undertake to wash himself/herself or to take a bath or shower</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Undertake To Wash Himself/Herself</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM02" Name="UNDERTAKE TO BRUSH HIS/HER TEETH" DataType="text" Origin="CRF" SASFieldName="DAITM02">
				<Description>
					<TranslatedText xml:lang="en-US">UNDERTAKE TO BRUSH HIS/HER TEETH</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Undertake to brush his/her teeth or care for his/her dentures</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Undertake To Brush His/Her Teeth</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM03" Name="DECIDE TO CARE FOR HIS/HER HAIR" DataType="text" Origin="CRF" SASFieldName="DAITM03">
				<Description>
					<TranslatedText xml:lang="en-US">DECIDE TO CARE FOR HIS/HER HAIR</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Decide to care for his/her hair (wash and comb)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Decide To Care For His/Her Hair</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM04" Name="PREPARE FOR WASHING, TAKING A BATH" DataType="text" Origin="CRF" SASFieldName="DAITM04">
				<Description>
					<TranslatedText xml:lang="en-US">PREPARE FOR WASHING, TAKING A BATH</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Prepare for the water, towels, and soap for washing, taking a bath, or a shower</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Prepare For Washing, Taking A Bath</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM05" Name="WASH AND DRY COMPLETELY SAFELY" DataType="text" Origin="CRF" SASFieldName="DAITM05">
				<Description>
					<TranslatedText xml:lang="en-US">WASH AND DRY COMPLETELY SAFELY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Wash and dry completely all parts of his/her body safely</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Wash And Dry Completely Safely</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM06" Name="BRUSH HIS/HER TEETH" DataType="text" Origin="CRF" SASFieldName="DAITM06">
				<Description>
					<TranslatedText xml:lang="en-US">BRUSH HIS/HER TEETH</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Brush his/her teeth or care for his/her dentures appropriately</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Brush His/Her Teeth</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM07" Name="CARE FOR HIS/HER HAIR" DataType="text" Origin="CRF" SASFieldName="DAITM07">
				<Description>
					<TranslatedText xml:lang="en-US">CARE FOR HIS/HER HAIR</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Care for his/her hair (wash and comb)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Care For His/Her Hair</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM08" Name="UNDERTAKE TO DRESS HIMSELF/HERSELF" DataType="text" Origin="CRF" SASFieldName="DAITM08">
				<Description>
					<TranslatedText xml:lang="en-US">UNDERTAKE TO DRESS HIMSELF/HERSELF</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Undertake to dress himself/herself</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Undertake To Dress Himself/Herself</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM09" Name="CHOOSE APPROPRIATE CLOTHING" DataType="text" Origin="CRF" SASFieldName="DAITM09">
				<Description>
					<TranslatedText xml:lang="en-US">CHOOSE APPROPRIATE CLOTHING</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Choose appropriate clothing (with regard to the occasion, neatness, the weather, and color combination)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Choose Appropriate Clothing</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM10" Name="DRESS HIMSELF/HERSELF" DataType="text" Origin="CRF" SASFieldName="DAITM10">
				<Description>
					<TranslatedText xml:lang="en-US">DRESS HIMSELF/HERSELF</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Dress himself/herself in the appropriate order (undergarments, pant/dress, shoes)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Dress Himself/Herself</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM11" Name="DRESS HIMSELF/HERSELF COMPLETELY" DataType="text" Origin="CRF" SASFieldName="DAITM11">
				<Description>
					<TranslatedText xml:lang="en-US">DRESS HIMSELF/HERSELF COMPLETELY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Dress himself/herself completely</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Dress Himself/Herself Completely</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM12" Name="UNDRESS HIMSELF/HERSELF COMPLETELY" DataType="text" Origin="CRF" SASFieldName="DAITM12">
				<Description>
					<TranslatedText xml:lang="en-US">UNDRESS HIMSELF/HERSELF COMPLETELY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Undress himself/herself completely</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Undress Himself/Herself Completely</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM13" Name="DECIDE TO USE THE TOILET AT APPROPRIATE" DataType="text" Origin="CRF" SASFieldName="DAITM13">
				<Description>
					<TranslatedText xml:lang="en-US">DECIDE TO USE THE TOILET AT APPROPRIATE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Decide to use the toilet at appropriate times</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Decide To Use The Toilet At Appropriate</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM14" Name="USE THE TOILET WITHOUT ACCIDENTS" DataType="text" Origin="CRF" SASFieldName="DAITM14">
				<Description>
					<TranslatedText xml:lang="en-US">USE THE TOILET WITHOUT "ACCIDENTS"</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Use the toilet without accidents</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Use The Toilet Without Accidents</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM15" Name="DECIDE THAT HE/SHE NEEDS TO EAT" DataType="text" Origin="CRF" SASFieldName="DAITM15">
				<Description>
					<TranslatedText xml:lang="en-US">DECIDE THAT HE/SHE NEEDS TO EAT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Decide that he/she needs to eat</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Decide That He/She Needs To Eat</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM16" Name="CHOOSE APPROPRIATE UTENSILS" DataType="text" Origin="CRF" SASFieldName="DAITM16">
				<Description>
					<TranslatedText xml:lang="en-US">CHOOSE APPROPRIATE UTENSILS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Choose appropriate utensils when eating</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Choose Appropriate Utensils</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM17" Name="EAT HIS/HER MEALS AT A NORMAL PACE" DataType="text" Origin="CRF" SASFieldName="DAITM17">
				<Description>
					<TranslatedText xml:lang="en-US">EAT HIS/HER MEALS AT A NORMAL PACE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Eat his/her meals at a normal pace and with appropriate manners</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Eat His/Her Meals At A Normal Pace</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM18" Name="UNDERTAKE TO PREPARE A LIGHT MEAL" DataType="text" Origin="CRF" SASFieldName="DAITM18">
				<Description>
					<TranslatedText xml:lang="en-US">UNDERTAKE TO PREPARE A LIGHT MEAL</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Undertake to prepare a light meal or snack for himself/herself</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Undertake To Prepare A Light Meal</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM19" Name="ADEQUATELY PLAN A LIGHT MEAL OR SNACK" DataType="text" Origin="CRF" SASFieldName="DAITM19">
				<Description>
					<TranslatedText xml:lang="en-US">ADEQUATELY PLAN A LIGHT MEAL OR SNACK</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Adequately plan a light meal or snack (ingredients, cookware)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Adequately Plan A Light Meal Or Snack</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM20" Name="PREPARE OR COOK A LIGHT MEAL OR A SNACK" DataType="text" Origin="CRF" SASFieldName="DAITM20">
				<Description>
					<TranslatedText xml:lang="en-US">PREPARE OR COOK A LIGHT MEAL OR A SNACK</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Prepare or cook a light meal or a snack safely</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Prepare Or Cook A Light Meal Or A Snack</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM21" Name="ATTEMPT TO TELEPHONE SOMEONE" DataType="text" Origin="CRF" SASFieldName="DAITM21">
				<Description>
					<TranslatedText xml:lang="en-US">ATTEMPT TO TELEPHONE SOMEONE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Attempt to telephone someone at a suitable time</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Attempt To Telephone Someone</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM22" Name="FIND AND DIAL A TELEPHONE NUMBER CORRECT" DataType="text" Origin="CRF" SASFieldName="DAITM22">
				<Description>
					<TranslatedText xml:lang="en-US">FIND AND DIAL A TELEPHONE NUMBER CORRECT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Find and dial a telephone number correctly</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Find And Dial A Telephone Number Correct</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM23" Name="CARRY OUT A TELEPHONE CONVERSATION" DataType="text" Origin="CRF" SASFieldName="DAITM23">
				<Description>
					<TranslatedText xml:lang="en-US">CARRY OUT A TELEPHONE CONVERSATION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Carry out an appropriate telephone conversation</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Carry Out A Telephone Conversation</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM24" Name="WRITE AND CONVEY A TELEPHONE MESSAGE" DataType="text" Origin="CRF" SASFieldName="DAITM24">
				<Description>
					<TranslatedText xml:lang="en-US">WRITE AND CONVEY A TELEPHONE MESSAGE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Write and convey a telephone message adequately</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Write And Convey A Telephone Message</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM25" Name="UNDERTAKE TO GO OUT" DataType="text" Origin="CRF" SASFieldName="DAITM25">
				<Description>
					<TranslatedText xml:lang="en-US">UNDERTAKE TO GO OUT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Undertake to go out (walk, visit, shop) at an appropriate time</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Undertake To Go Out</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM26" Name="ADEQUATELY ORGANIZE AN OUTING" DataType="text" Origin="CRF" SASFieldName="DAITM26">
				<Description>
					<TranslatedText xml:lang="en-US">ADEQUATELY ORGANIZE AN OUTING</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Adequately organize an outing with respect to transportation, keys, destination, weather, necessary money, shopping list</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Adequately Organize An Outing</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM27" Name="GO OUT AND REACH A FAMILIAR DESTINATION" DataType="text" Origin="CRF" SASFieldName="DAITM27">
				<Description>
					<TranslatedText xml:lang="en-US">GO OUT AND REACH A FAMILIAR DESTINATION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Go out and reach a familiar destination without getting lost</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Go Out And Reach A Familiar Destination</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM28" Name="SAFELY TAKE CAR, BUS, TAXI" DataType="text" Origin="CRF" SASFieldName="DAITM28">
				<Description>
					<TranslatedText xml:lang="en-US">SAFELY TAKE CAR, BUS, TAXI</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Safely take the adequate mode of transportation (car, bus, taxi)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Safely Take Car, Bus, Taxi</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM29" Name="RETURN FROM THE STORE" DataType="text" Origin="CRF" SASFieldName="DAITM29">
				<Description>
					<TranslatedText xml:lang="en-US">RETURN FROM THE STORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Return from the store with the appropriate items</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Return From The Store</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM30" Name="INTEREST IN HIS/HER PERSONAL AFFAIRS" DataType="text" Origin="CRF" SASFieldName="DAITM30">
				<Description>
					<TranslatedText xml:lang="en-US">INTEREST IN HIS/HER PERSONAL AFFAIRS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Show an interest in his/her personal affairs such as his/her finances and written correspondence</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Interest In His/Her Personal Affairs</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM31" Name="PAY HIS/HER BILLS" DataType="text" Origin="CRF" SASFieldName="DAITM31">
				<Description>
					<TranslatedText xml:lang="en-US">PAY HIS/HER BILLS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Organize his/her finances to pay his/her bills (cheques, bankbook, bills)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Pay His/Her Bills</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM32" Name="ORGANIZE HIS/HER CORRESPONDENCE" DataType="text" Origin="CRF" SASFieldName="DAITM32">
				<Description>
					<TranslatedText xml:lang="en-US">ORGANIZE HIS/HER CORRESPONDENCE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Adequately organize his/her correspondence with respect to stationery, address, stamps</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Organize His/Her Correspondence</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM33" Name="HANDLE ADEQUATELY HIS/HER MONEY" DataType="text" Origin="CRF" SASFieldName="DAITM33">
				<Description>
					<TranslatedText xml:lang="en-US">HANDLE ADEQUATELY HIS/HER MONEY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Handle adequately his/her money (make change)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Handle Adequately His/Her Money</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM34" Name="DECIDE TO TAKE HIS/HER MEDICATIONS" DataType="text" Origin="CRF" SASFieldName="DAITM34">
				<Description>
					<TranslatedText xml:lang="en-US">DECIDE TO TAKE HIS/HER MEDICATIONS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Decide to take his/her medications at the correct time</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Decide To Take His/Her Medications</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM35" Name="TAKE HIS/HER MEDICATIONS AS PRESCRIBED" DataType="text" Origin="CRF" SASFieldName="DAITM35">
				<Description>
					<TranslatedText xml:lang="en-US">TAKE HIS/HER MEDICATIONS AS PRESCRIBED</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Take his/her medications as prescribed (according to the right dosage)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Take His/Her Medications As Prescribed</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM36" Name="SHOW AN INTEREST IN LEISURE ACTIVITY" DataType="text" Origin="CRF" SASFieldName="DAITM36">
				<Description>
					<TranslatedText xml:lang="en-US">SHOW AN INTEREST IN LEISURE ACTIVITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Show an interest in leisure activity(ies)</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Show An Interest In Leisure Activity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM37" Name="TAKE AN INTEREST IN HOUSEHOLD CHORES" DataType="text" Origin="CRF" SASFieldName="DAITM37">
				<Description>
					<TranslatedText xml:lang="en-US">TAKE AN INTEREST IN HOUSEHOLD CHORES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Take an interest in household chores that he/she used to perform in the past</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Take An Interest In Household Chores</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM38" Name="PLAN AND ORGANIZE HOUSEHOLD CHORES" DataType="text" Origin="CRF" SASFieldName="DAITM38">
				<Description>
					<TranslatedText xml:lang="en-US">PLAN AND ORGANIZE HOUSEHOLD CHORES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Plan and organize adequately household chores that he/she used to perform in the past</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Plan And Organize Household Chores</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM39" Name="COMPLETE HOUSEHOLD CHORES" DataType="text" Origin="CRF" SASFieldName="DAITM39">
				<Description>
					<TranslatedText xml:lang="en-US">COMPLETE HOUSEHOLD CHORES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Complete household chores adequately as he/she used to perform in the past</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Complete Household Chores</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DAITM40" Name="STAY SAFELY AT HOME BY HIMSELF/HERSELF" DataType="text" Origin="CRF" SASFieldName="DAITM40">
				<Description>
					<TranslatedText xml:lang="en-US">STAY SAFELY AT HOME BY HIMSELF/HERSELF</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Stay safely at home by himself/herself when needed</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Stay Safely At Home By Himself/Herself</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DIABP_STANDING" Name="Standing Diastolic Blood Pressure" DataType="integer" Origin="CRF" SASFieldName="DIABP">
				<Description>
					<TranslatedText xml:lang="en-US">Standing Diastolic Blood Pressure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the standing blood pressure pressure measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Standing Diastolic Blood Pressure</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DIABP_SUPINE" Name="Supine Diastolic Blood Pressure" DataType="integer" Origin="CRF" SASFieldName="DIABP">
				<Description>
					<TranslatedText xml:lang="en-US">Supine Diastolic Blood Pressure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the supine blood pressure pressure measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Supine Diastolic Blood Pressure</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSDCDSCAT_CAREGIVER" Name="Withdrawal due to Caregiver Subcategory" SASFieldName="DSDCODL2" DataType="text" Origin="CRF" Length="63">
				<Description>
					<TranslatedText xml:lang="en-US">Withdrawal due to Caregiver Subcategory specifies additional reasons, due to caregiver circumstances, why the subject has withdrawn participation from a trial.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Withdrawal due to Caregiver Circumstances</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.DSDCCGVR"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Withdrawal Subcategory</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSDCDSCAT_CGVR_SPCFY" Name="Withdrawal due to Caregiver Subcategory - Specify" SASFieldName="DSDCGVRS" DataType="text" Origin="CRF" Length="100">
				<Description>
					<TranslatedText xml:lang="en-US">Withdrawal due to Caregiver Subcategory - Specify is free text to further describe additional reasons, due to the caregiver's circumstances, the subject has withdrawn participation from a trial.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Specify reason for caregiver decision</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Specify Withdrawal due Caregiver Subcat</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSDCDSCAT_PHYSDEC_SPCFY" Name="Reason for Discontinuing - Physician Decision - Specify" SASFieldName="DSDCPDCS" DataType="text" Origin="CRF" Length="100">
				<Description>
					<TranslatedText xml:lang="en-US">Reason for Discontinuing - Physician Decision Subcategory specifies additional reasons a subject has discontinued.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Specify Other Reason for Discontinuing - Physician Decision</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Specify Discontinue by Physician Subcat</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSDCDSCAT_SUBJ_SPCFY" Name="Withdrawal by Subject Subcategory - Specify" SASFieldName="DSDCSUBS" DataType="text" Origin="CRF" Length="100">
				<Description>
					<TranslatedText xml:lang="en-US">Withdrawal by Subject Subcategory specifies additional reasons a subject has withdrawn participation from a trial.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Specify Other Withdrawal by Subject Subcategory</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Specify Withdrawal by Subject Subcat</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSDECOD" DataType="text" Length="63" Name="Standardized Disposition Term" Origin="CRF" SASFieldName="DSDECOD">
				<Description>
					<TranslatedText xml:lang="en-US">The standardized terminology of the disposition term that describes whether a subject completed the study or a portion of a study (epoch) or the reason they did not complete.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the reason for discontinuing?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NCOMPLT"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Status</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSEVAL_DSDECOD_13" Name="Lack of Efficacy Evaluator" SASFieldName="DSEVALLE" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Denotes the person who determined that that the study subject should withdrawl due to Lack of Efficacy.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Lack of Efficacy Evaluator</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.EVAL_DSDECOD13"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Evaluator</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSSTDAT" Name="Disposition Date" SASFieldName="DSSTDAT" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">The date of the specified protocol milestone (e.g. informed consent, randomization) or disposition event (e.g. study completion or discontinuation).</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the &lt;screening / treatment / treatment phase / study / follow-up (EPOCH)&gt; discontinuation date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>&lt;Disposition event&gt; Discontinuation Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSSTDAT_IC" Name="Informed Consent Date" SASFieldName="ICDAT" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date of the informed consent.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the date of Informed Consent?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Informed Consent Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSTERM" Name="Reported Term for the Disposition Event" SASFieldName="DSTERM" DataType="text" Origin="CRF" Length="100">
				<Description>
					<TranslatedText xml:lang="en-US">A free text field that captures how a subject completed the study or a portion of a study (epoch) or the reason they did not complete.  May be used to specify additional information about a selected DSDECOD.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Specify</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Specify</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DSTERM_PRICOD" Name="Primary Cause of Death" SASFieldName="PRICOD" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Primary Cause of Death is the principal reason for a subject's death.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Primary Cause of Death</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.COD"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Primary Cause of Death</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.DTHDAT" Name="Death Date" SASFieldName="DTHDAT" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date of death for the subject.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the subject's date of death?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Death Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ECG_INTP" Name="ECG Interpretation" DataType="text" Origin="CRF" SASFieldName="PRCEVINT">
				<Description>
					<TranslatedText xml:lang="en-US">ECG Interpretation</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">ECG Interpretation</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>ECG Interpretation</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ECG_PROCCUR" Name="Procedure Occurrence" DataType="text" Origin="CRF" SASFieldName="PROCCUR">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Occurrence</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was the ECG performed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>ECG Performed</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ECG_PRSTDAT" Name="Procedure Start Date" DataType="date" Origin="CRF" SASFieldName="PRSTDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Start Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the electrocardiogram date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Electrocardiogram Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ECG_PRTRT" Name="Reported Name of Procedure" DataType="text" Origin="CRF" SASFieldName="PRTRT">
				<Description>
					<TranslatedText xml:lang="en-US">Reported Name of Procedure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the procedure name?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Electrocardiogram</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EDUYRNUM" Name="Number of Years of Education" DataType="integer" Origin="CRF" SASFieldName="EDUYRNUM">
				<Description>
					<TranslatedText xml:lang="en-US">Number of Years of Education</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Number of Years of Education</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Number of Years of Education</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EOS" Name="EOSINOPHILS" DataType="text" Origin="eDT" SASFieldName="EOS">
				<Description>
					<TranslatedText xml:lang="en-US">EOSINOPHILS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Eosinophils test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Eosinophils</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.ETHNIC" SASFieldName="ETHNIC" Name="Ethnicity" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Ethnicity is a category of people according to common racial, tribal, religious, linguistic, or cultural origin or background.Ethnicity categories:</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Do you consider yourself Hispanic/Latino or not Hispanic/Latino?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.ETHNIC"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ethnicity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXDOSE" Name="EX Dose per Administration" DataType="float" Origin="CRF" SASFieldName="EXDOSE">
				<Description>
					<TranslatedText xml:lang="en-US">EX Dose per Administration</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the dose?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Dose</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXDOSFRM" Name="Exposure Dose Form" DataType="text" Origin="CRF" SASFieldName="EXDOSFRM">
				<Description>
					<TranslatedText xml:lang="en-US">Exposure Dose Form</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the dose form of the study treatment?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Dose Form</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXDOSFRQ" Name="EX Dosing Frequency per Interval" DataType="text" Origin="CRF" SASFieldName="EXDOSFRQ">
				<Description>
					<TranslatedText xml:lang="en-US">EX Dosing Frequency per Interval</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of dosing?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXDOSU" Name="EX Dose Units" DataType="text" Origin="CRF" SASFieldName="EXDOSU">
				<Description>
					<TranslatedText xml:lang="en-US">EX Dose Units</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What were the units for the dose?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Units</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXENDAT" Name="Exposure End Date" DataType="date" Origin="CRF" SASFieldName="EXENDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Exposure End Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the end date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>End Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXROUTE" Name="EX Route of Administration" DataType="text" Origin="CRF" SASFieldName="EXROUTE">
				<Description>
					<TranslatedText xml:lang="en-US">EX Route of Administration</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the route of administration?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Route</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXSTDAT" Name="Exposure Start Date" DataType="date" Origin="CRF" SASFieldName="EXSTDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Exposure Start Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the start date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Start Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.EXTRT" Name="Name of Treatment" DataType="text" Origin="CRF" SASFieldName="EXTRT">
				<Description>
					<TranslatedText xml:lang="en-US">Name of Treatment</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the study treatment name?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Study Treatment/Investigational Product Name</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.GGT" Name="GAMMA GLUTAMYL TRANSFERASE" DataType="text" Origin="eDT" SASFieldName="GGT">
				<Description>
					<TranslatedText xml:lang="en-US">GAMMA GLUTAMYL TRANSFERASE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Gamma Glutamyl Transferase test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Gamma Glutamyl Transferase</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.GLUC" Name="GLUCOSE" DataType="text" Origin="eDT" SASFieldName="GLUC">
				<Description>
					<TranslatedText xml:lang="en-US">GLUCOSE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Glucose test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Glucose</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.HBA1C" Name="HEMOGLOBIN A1C" DataType="text" Origin="eDT" SASFieldName="HBA1C">
				<Description>
					<TranslatedText xml:lang="en-US">HEMOGLOBIN A1C</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Hemoglobin A1C test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hemoglobin A1C</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.HBA1C" Name="HEMOGLOBIN A1C" DataType="text" Origin="eDT" SASFieldName="HBA1C">
				<Description>
					<TranslatedText xml:lang="en-US">HEMOGLOBIN A1C</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Hemoglobin A1C test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hemoglobin A1C</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.HCT" Name="HEMATOCRIT" DataType="text" Origin="eDT" SASFieldName="HCT">
				<Description>
					<TranslatedText xml:lang="en-US">HEMATOCRIT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Hematocrit test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hematocrit</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.HEIGHT" Name="Height" DataType="float" Origin="CRF" SASFieldName="HEIGHT">
				<Description>
					<TranslatedText xml:lang="en-US">Height</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the height measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Height</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.HGB" Name="HEMOGLOBIN" DataType="text" Origin="eDT" SASFieldName="HGB">
				<Description>
					<TranslatedText xml:lang="en-US">HEMOGLOBIN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Hemoglobin test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hemoglobin</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEADDIAG" Name="Diagnosis of Probable AD" DataType="text" Origin="CRF" SASFieldName="IEADDIAG">
				<Description>
					<TranslatedText xml:lang="en-US">Diagnosis of Probable AD</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Diagnosis of probable AD as defined by NINCDS and the ADRDA guidelines (Protocol Attachment LZZT.7).</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Diagnosis of Probable AD</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IECAN" Name="Primary or Recurrent Malignant Disease" DataType="text" Origin="CRF" SASFieldName="IECAN">
				<Description>
					<TranslatedText xml:lang="en-US">Primary or Recurrent Malignant Disease</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a primary or recurrent malignant disease (with exceptions, see list in protocol)</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Primary or Recurrent Malignant Disease</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IECARDI" Name="Serious Cardiovascular Disorder" DataType="text" Origin="CRF" SASFieldName="IECARDI">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Cardiovascular Disorder</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a serious cardiovascular disorder</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Cardiovascular Disorder</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IECARE1" Name="Reliable Caregiver" DataType="text" Origin="CRF" SASFieldName="IECARE1">
				<Description>
					<TranslatedText xml:lang="en-US">Reliable Caregiver</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A reliable caregiver who is in frequent or daily contact with the patient and who will accompany the patient to the office and/or be available by telephone at designated times.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Reliable Caregiver</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IECARE2" Name="Caregiver Will Monitor Meds and Care" DataType="text" Origin="CRF" SASFieldName="IECARE2">
				<Description>
					<TranslatedText xml:lang="en-US">Caregiver Will Monitor Meds and Care</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Caregiver will monitor administration of prescribed medications, and will be responsible for the overall care of the patient at home.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Caregiver Will Monitor Meds and Care</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IECARE3" Name="Caregiver Patient Communicate in English" DataType="text" Origin="CRF" SASFieldName="IECARE3">
				<Description>
					<TranslatedText xml:lang="en-US">Caregiver Patient Communicate in English</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">The caregiver and the patient must be able to communicate in English and willing to comply with 26 weeks of transdermal therapy.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Caregiver Patient Communicate in English</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IECOMM" Name="Impaired Visual, Hearing, Communication" DataType="text" Origin="CRF" SASFieldName="IECOMM">
				<Description>
					<TranslatedText xml:lang="en-US">Impaired Visual, Hearing, Communication</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Visual, hearing, or communication disabilities impairing the ability to participate in the study; (for example, inability to speak or understand English, illiteracy).</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Impaired Visual, Hearing, Communication</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IECTMRI" Name="CNS Imaging Compatible with AD Past Year" DataType="text" Origin="CRF" SASFieldName="IECTMRI">
				<Description>
					<TranslatedText xml:lang="en-US">CNS Imaging Compatible with AD Past Year</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">CNS imaging (CT scan or MRI of brain) compatible with AD within past 1 year.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>CNS Imaging Compatible with AD Past Year</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEDEPRESS" Name="Depression Episode Within Past 3 Months" DataType="text" Origin="CRF" SASFieldName="IEDEPRESS">
				<Description>
					<TranslatedText xml:lang="en-US">Depression Episode Within Past 3 Months</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Episode of depression meeting DSM-IV criteria within 3 months of screening.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Depression Episode Within Past 3 Months</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEDISEAS" Name="Mental Illness Within Past 5 Years" DataType="text" Origin="CRF" SASFieldName="IEDISEAS">
				<Description>
					<TranslatedText xml:lang="en-US">Mental Illness Within Past 5 Years</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history of mental illness within the last 5 years</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Mental Illness Within Past 5 Years</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEECG" Name="Screening ECG Evidence Listed Conditions" DataType="text" Origin="CRF" SASFieldName="IEECG">
				<Description>
					<TranslatedText xml:lang="en-US">Screening ECG Evidence Listed Conditions</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Evidence from ECG recording at screening of any listed condition</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Screening ECG Evidence Listed Conditions</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEENDO" Name="Serious Endocrine Disorder Within 5 Yrs" DataType="text" Origin="CRF" SASFieldName="IEENDO">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Endocrine Disorder Within 5 Yrs</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a serious endocrine disorder</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Endocrine Disorder Within 5 Yrs</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEEXP" Name="Previous Exposure to Xanomeline Study" DataType="text" Origin="CRF" SASFieldName="IEEXP">
				<Description>
					<TranslatedText xml:lang="en-US">Previous Exposure to Xanomeline Study</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Persons who have previously completed or withdrawn from this study or any other investigating xanomeline TTS or the oral formulation of xanomeline.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Previous Exposure to Xanomeline Study</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEGASTRO" Name="Serious Gastrointestinal Disorder 5 Yrs" DataType="text" Origin="CRF" SASFieldName="IEGASTRO">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Gastrointestinal Disorder 5 Yrs</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a serious gastrointestinal disorder</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Gastrointestinal Disorder 5 Yrs</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEGEO" Name="Proximate to Inv Site for Follow-up" DataType="text" Origin="CRF" SASFieldName="IEGEO">
				<Description>
					<TranslatedText xml:lang="en-US">Proximate to Inv Site for Follow-up</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Geographic proximity to investigator's site that allows adequate follow-up.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Proximate to Inv Site for Follow-up</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEGU" Name="Serious Genitourinary Disorder 5 Yrs" DataType="text" Origin="CRF" SASFieldName="IEGU">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Genitourinary Disorder 5 Yrs</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a serious genitourinary disorder,</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Genitourinary Disorder 5 Yrs</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEHIV" Name="HIV Within Past 5 Years" DataType="text" Origin="CRF" SASFieldName="IEHIV">
				<Description>
					<TranslatedText xml:lang="en-US">HIV Within Past 5 Years</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A known history of human immunodeficiency virus (HIV) within the last 5 years.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>HIV Within Past 5 Years</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEHOSP" Name="Serious Hosp Illness Past 3 Months" DataType="text" Origin="CRF" SASFieldName="IEHOSP">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Hosp Illness Past 3 Months</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Serious illness which required hospitalization within 3 months of screening.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Hosp Illness Past 3 Months</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEIC" Name="Consent Signed by Patient and Caregiver" DataType="text" Origin="CRF" SASFieldName="IEIC">
				<Description>
					<TranslatedText xml:lang="en-US">Consent Signed by Patient and Caregiver</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Investigator has obtained informed consent signed by the patient (and/or legal representative) and by the caregiver.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Consent Signed by Patient and Caregiver</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEID" Name="Serious Infections Disease Past 5 Yrs" DataType="text" Origin="CRF" SASFieldName="IEID">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Infections Disease Past 5 Yrs</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a serious infectious disease (see list in protocol)</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Infections Disease Past 5 Yrs</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IELAB1" Name="CRT, BIL, SGOT, SGPT, GGT Out Ref Range" DataType="text" Origin="CRF" SASFieldName="IELAB1">
				<Description>
					<TranslatedText xml:lang="en-US">CRT, BIL, SGOT, SGPT, GGT Out Ref Range</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Laboratory test values exceeding the Lilly Reference Range III for the patient's age in any of the following analytes: creatinine, total bilirubin, SGOT, SGPT, alkaline phosphatase, GGT.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>CRT, BIL, SGOT, SGPT, GGT Out Ref Range</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IELAB2" Name="Hem, WBC, Platelet Values Out Ref Range" DataType="text" Origin="CRF" SASFieldName="IELAB2">
				<Description>
					<TranslatedText xml:lang="en-US">Hem, WBC, Platelet Values Out Ref Range</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Laboratory test values exceeding the Lilly Reference Range III for the patient's age in any of the following analytes: hemoglobin, white blood cell count, platelet count.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hem, WBC, Platelet Values Out Ref Range</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IELAB3" Name="Serum NA, K, CA Lab Out Ref Range" DataType="text" Origin="CRF" SASFieldName="IELAB3">
				<Description>
					<TranslatedText xml:lang="en-US">Serum NA, K, CA Lab Out Ref Range</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Laboratory test values exceeding the Lilly Reference Range III for the patient's age in any of the following analytes: serum sodium, potassium or calcium.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serum NA, K, CA Lab Out Ref Range</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IELAB4" Name="Confirmed Syphilis" DataType="text" Origin="CRF" SASFieldName="IELAB4">
				<Description>
					<TranslatedText xml:lang="en-US">Confirmed Syphilis</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Positive syphilis screening with confirmatory testing.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Confirmed Syphilis</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IELAB5" Name="Folate, B12, Thyroid Lab Out Ref Range" DataType="text" Origin="CRF" SASFieldName="IELAB5">
				<Description>
					<TranslatedText xml:lang="en-US">Folate, B12, Thyroid Lab Out Ref Range</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Central laboratory test values below reference range for folate, and vitamin B12, and outside reference range for thyroid function tests.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Folate, B12, Thyroid Lab Out Ref Range</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IELAB6" Name="A1C Lab Above Reference Range" DataType="text" Origin="CRF" SASFieldName="IELAB6">
				<Description>
					<TranslatedText xml:lang="en-US">A1C Lab Above Reference Range</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Central laboratory test value above reference range for glycosylated hemoglobin (A1C) (insulin dependent diabetes mellitus patients only)</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>A1C Lab Above Reference Range</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEMEDHIST" Name="Treatment with Restricted Med Past Month" DataType="text" Origin="CRF" SASFieldName="IEMEDHIST">
				<Description>
					<TranslatedText xml:lang="en-US">Treatment with Restricted Med Past Month</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Treatment with medications within 1 month prior to enrollment (see list)</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Treatment with Restricted Med Past Month</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEMMSE1" Name="MMSE Score of 10 to 23" DataType="text" Origin="CRF" SASFieldName="IEMMSE1">
				<Description>
					<TranslatedText xml:lang="en-US">MMSE Score of 10 to 23</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">MMSE score of 10 to 23.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>MMSE Score of 10 to 23</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IEMMSE2" Name="MHIS Score Less Than or Equal to 5" DataType="text" Origin="CRF" SASFieldName="IEMMSE2">
				<Description>
					<TranslatedText xml:lang="en-US">MHIS Score Less Than or Equal to 5</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Modified Hachinski Ischemic Scale score of &lt;= 4. (Protocol Attachment LZZT.8).</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>MHIS Score Less Than or Equal to 5</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IENEURO" Name="Serious Neurological Condition Diagnosis" DataType="text" Origin="CRF" SASFieldName="IENEURO">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Neurological Condition Diagnosis</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Diagnosis of serious neurological conditions.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Neurological Condition Diagnosis</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IERESP" Name="Serious Respiratory Disorder Past 5 Yrs" DataType="text" Origin="CRF" SASFieldName="IERESP">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Respiratory Disorder Past 5 Yrs</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a serious respiratory disorder (see list)</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Respiratory Disorder Past 5 Yrs</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IERHEU" Name="Serious Rheumatologic Disorder Past 5 Yr" DataType="text" Origin="CRF" SASFieldName="IERHEU">
				<Description>
					<TranslatedText xml:lang="en-US">Serious Rheumatologic Disorder Past 5 Yr</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history within the last 5 years of a serious rheumatologic disorder</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serious Rheumatologic Disorder Past 5 Yr</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IESEXAGE" Name="At Least 50 Years Old and Postmenopausal" DataType="text" Origin="CRF" SASFieldName="IESEXAGE">
				<Description>
					<TranslatedText xml:lang="en-US">At Least 50 Years Old and Postmenopausal</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Males and postmenopausal females at least 50 years of age.</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>At Least 50 Years Old and Postmenopausal</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.IESYNC" Name="Syncope History Past 5 Years" DataType="text" Origin="CRF" SASFieldName="IESYNC">
				<Description>
					<TranslatedText xml:lang="en-US">Syncope History Past 5 Years</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">A history of syncope within the last 5 years</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NY"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Syncope History Past 5 Years</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.K" Name="POTASSIUM" DataType="text" Origin="eDT" SASFieldName="K">
				<Description>
					<TranslatedText xml:lang="en-US">POTASSIUM</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Potassium test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Potassium</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.KETONES" Name="KETONES" DataType="text" Origin="eDT" SASFieldName="KETONES">
				<Description>
					<TranslatedText xml:lang="en-US">KETONES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Ketones test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ketones</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.LYM" Name="LYMPHOCYTES" DataType="text" Origin="eDT" SASFieldName="LYM">
				<Description>
					<TranslatedText xml:lang="en-US">LYMPHOCYTES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Lymphocytes test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Lymphocytes</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MACROCY" Name="MACROCYTES" DataType="text" Origin="eDT" SASFieldName="MACROCY">
				<Description>
					<TranslatedText xml:lang="en-US">MACROCYTES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Macrocytes test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Macrocytes</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MCH" Name="ERY. MEAN CORPUSCULAR HEMOGLOBIN" DataType="text" Origin="eDT" SASFieldName="MCH">
				<Description>
					<TranslatedText xml:lang="en-US">ERY. MEAN CORPUSCULAR HEMOGLOBIN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Ery. Mean Corpuscular Hemoglobin test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ery. Mean Corpuscular Hemoglobin</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MCHC" Name="ERY. MEAN CORPUSCULAR HB CONCENTRATION" DataType="text" Origin="eDT" SASFieldName="MCHC">
				<Description>
					<TranslatedText xml:lang="en-US">ERY. MEAN CORPUSCULAR HB CONCENTRATION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Ery. Mean Corpuscular Hb Concentration test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ery. Mean Corpuscular Hb Concentration</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MCV" Name="ERY. MEAN CORPUSCULAR VOLUME" DataType="text" Origin="eDT" SASFieldName="MCV">
				<Description>
					<TranslatedText xml:lang="en-US">ERY. MEAN CORPUSCULAR VOLUME</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Ery. Mean Corpuscular Volume test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ery. Mean Corpuscular Volume</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHDAT" Name="Medical History Collection Date" DataType="date" Origin="CRF" SASFieldName="MHDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Medical History Collection Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the date the medical history was collected?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Collection Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHENDAT" Name="Medical History Event End Date" DataType="date" Origin="CRF" SASFieldName="MHENDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Medical History Event End Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was medical event end date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>End Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM01" Name="ABRUPT ONSET" DataType="text" Origin="CRF" SASFieldName="MHITM01">
				<Description>
					<TranslatedText xml:lang="en-US">ABRUPT ONSET</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Abrupt onset</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Abrupt Onset</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM02" Name="STEPWISE DETERIORATION" DataType="text" Origin="CRF" SASFieldName="MHITM02">
				<Description>
					<TranslatedText xml:lang="en-US">STEPWISE DETERIORATION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Stepwise deterioration</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Stepwise Deterioration</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM03" Name="FLUCTUATING COURSE" DataType="text" Origin="CRF" SASFieldName="MHITM03">
				<Description>
					<TranslatedText xml:lang="en-US">FLUCTUATING COURSE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Fluctuating course</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Fluctuating Course</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM04" Name="NOCTURNAL CONFUSION" DataType="text" Origin="CRF" SASFieldName="MHITM04">
				<Description>
					<TranslatedText xml:lang="en-US">NOCTURNAL CONFUSION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Nocturnal confusion</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Nocturnal Confusion</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM05" Name="RELATIVE PRESERVATION OF PERSONALITY" DataType="text" Origin="CRF" SASFieldName="MHITM05">
				<Description>
					<TranslatedText xml:lang="en-US">RELATIVE PRESERVATION OF PERSONALITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Relative preservation of personality</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Relative Preservation of Personality</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM06" Name="DEPRESSION" DataType="text" Origin="CRF" SASFieldName="MHITM06">
				<Description>
					<TranslatedText xml:lang="en-US">DEPRESSION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Depression</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Depression</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM07" Name="SOMATIC COMPLAINTS" DataType="text" Origin="CRF" SASFieldName="MHITM07">
				<Description>
					<TranslatedText xml:lang="en-US">SOMATIC COMPLAINTS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Somatic complaints</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Somatic Complaints</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM08" Name="EMOTIONAL INCONTINENCE" DataType="text" Origin="CRF" SASFieldName="MHITM08">
				<Description>
					<TranslatedText xml:lang="en-US">EMOTIONAL INCONTINENCE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Emotional incontinence</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Emotional Incontinence</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM09" Name="HISTORY OF HYPERTENSION" DataType="text" Origin="CRF" SASFieldName="MHITM09">
				<Description>
					<TranslatedText xml:lang="en-US">HISTORY OF HYPERTENSION</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">History of hypertension</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>History of Hypertension</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM10" Name="HISTORY OF STROKES" DataType="text" Origin="CRF" SASFieldName="MHITM10">
				<Description>
					<TranslatedText xml:lang="en-US">HISTORY OF STROKES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">History of strokes</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>History of Strokes</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM11" Name="EVIDENCE OF ASSOCIATED ATHEROSCLEROSIS" DataType="text" Origin="CRF" SASFieldName="MHITM11">
				<Description>
					<TranslatedText xml:lang="en-US">EVIDENCE OF ASSOCIATED ATHEROSCLEROSIS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Evidence of associated atherosclerosis</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Evidence of Associated Atherosclerosis</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM12" Name="FOCAL NEUROLOGICAL SYMPTOMS" DataType="text" Origin="CRF" SASFieldName="MHITM12">
				<Description>
					<TranslatedText xml:lang="en-US">FOCAL NEUROLOGICAL SYMPTOMS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Focal neurological symptoms</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Focal Neurological Symptoms</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHITM13" Name="FOCAL NEUROLOGICAL SIGNS" DataType="text" Origin="CRF" SASFieldName="MHITM13">
				<Description>
					<TranslatedText xml:lang="en-US">FOCAL NEUROLOGICAL SIGNS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Focal neurological signs</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Focal Neurological Signs</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHSEV" Name="Medical History Severity/Intensity" DataType="text" Origin="CRF" SASFieldName="MHSEV">
				<Description>
					<TranslatedText xml:lang="en-US">Medical History Severity/Intensity</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the severity?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHSPID" Name="MH Sponsor-Defined Identifier" DataType="integer" Origin="CRF" SASFieldName="MHSPID">
				<Description>
					<TranslatedText xml:lang="en-US">MH Sponsor-Defined Identifier</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Sequence Number</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Sequence Number</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHSTDAT" Name="Medical History Event Start Date" DataType="date" Origin="CRF" SASFieldName="MHSTDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Medical History Event Start Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was medical event start date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Start Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHTERM" Name="Reported Term for the Medical History" DataType="text" Origin="CRF" SASFieldName="MHTERM">
				<Description>
					<TranslatedText xml:lang="en-US">Reported Term for the Medical History</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the medical condition or event term?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Medical History Term</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MHYN" Name="Any Medical History Event" DataType="text" Origin="CRF" SASFieldName="MHYN">
				<Description>
					<TranslatedText xml:lang="en-US">Any Medical History Event</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Were any medical conditions or events reported?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Any Medical History</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MICROCY" Name="MICROCYTES" DataType="text" Origin="eDT" SASFieldName="MICROCY">
				<Description>
					<TranslatedText xml:lang="en-US">MICROCYTES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Microcytes test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Microcytes</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MMITM01" Name="WHAT IS THE (YEAR) (SEASON) (DATE)" DataType="integer" Origin="CRF" SASFieldName="MMITM01">
				<Description>
					<TranslatedText xml:lang="en-US">WHAT IS THE (YEAR) (SEASON) (DATE)</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the (year) (season) (date) (day) (month)?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>What Is The (Year) (Season) (Date)</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MMITM02" Name="WHERE ARE WE: (STATE) (COUNTRY) (TOWN)" DataType="integer" Origin="CRF" SASFieldName="MMITM02">
				<Description>
					<TranslatedText xml:lang="en-US">WHERE ARE WE: (STATE) (COUNTRY) (TOWN)</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Where are we: (state) (county) (town) (hospital) (floor)?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Where Are We: (State) (Country) (Town)</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MMITM03" Name="NAME 3 OBJECTS: 1 SECOND TO SAY EACH." DataType="integer" Origin="CRF" SASFieldName="MMITM03">
				<Description>
					<TranslatedText xml:lang="en-US">NAME 3 OBJECTS: 1 SECOND TO SAY EACH.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Name 3 objects: 1 second to say each. Then ask the patient all 3 after you have said them. Give 1 point for each correct answer. Then repeat them until he learns all 3. Count trials and record.</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Name 3 Objects: 1 Second To Say Each.</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MMITM04" Name="SERIAL 7'S. 1 POINT FOR EACH CORRECT." DataType="integer" Origin="CRF" SASFieldName="MMITM04">
				<Description>
					<TranslatedText xml:lang="en-US">SERIAL 7'S. 1 POINT FOR EACH CORRECT.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Serial 7's. 1 point for each correct. Stop after 5 answers.  Alternatively, spell "world" backwards.</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Serial 7'S. 1 Point For Each Correct.</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MMITM05" Name="ASK FOR THE 3 OBJECTS REPEATED ABOVE." DataType="integer" Origin="CRF" SASFieldName="MMITM05">
				<Description>
					<TranslatedText xml:lang="en-US">ASK FOR THE 3 OBJECTS REPEATED ABOVE.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Ask for the 3 objects repeated above. Give 1 point for each correct.</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ask For The 3 Objects Repeated Above.</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MMITM06" Name="NAME A PENCIL, AND WATCH (2 POINTS)" DataType="integer" Origin="CRF" SASFieldName="MMITM06">
				<Description>
					<TranslatedText xml:lang="en-US">NAME A PENCIL, AND WATCH (2 POINTS)</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Name a pencil, and watch (2 points).  Repeat the following "No ifs, ands, or buts." (1 point).  Follow a 3-stage command: "Take a paper in your right hand, fold it in half, and put it on the floor" (3 points). Read and obey the following: Close your eyes</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Name A Pencil, And Watch (2 Points)</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MONO" Name="MONOCYTES" DataType="text" Origin="eDT" SASFieldName="MONO">
				<Description>
					<TranslatedText xml:lang="en-US">MONOCYTES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Monocytes test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Monocytes</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MRI_PRCEVINT" Name="PR Collected Evaluation Interval" DataType="text" Origin="CRF" SASFieldName="PRCEVINT">
				<Description>
					<TranslatedText xml:lang="en-US">PR Collected Evaluation Interval</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">MRI Evaluation Interval</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>MRI Evaluation Interval</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MRI_PROCCUR" Name="Procedure Occurrence" DataType="text" Origin="CRF" SASFieldName="PROCCUR">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Occurrence</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Was the MRI performed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>MRI Performed</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MRI_PRSTDAT" Name="Procedure Start Date" DataType="date" Origin="CRF" SASFieldName="PRSTDAT">
				<Description>
					<TranslatedText xml:lang="en-US">Procedure Start Date</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the MRI date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>MRI Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.MRI_PRTRT" Name="Reported Name of Procedure" DataType="text" Origin="CRF" SASFieldName="PRTRT">
				<Description>
					<TranslatedText xml:lang="en-US">Reported Name of Procedure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the procedure name?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>MRI X-RAY</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NA" Name="SODIUM" DataType="text" Origin="eDT" SASFieldName="NA">
				<Description>
					<TranslatedText xml:lang="en-US">SODIUM</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Sodium test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Sodium</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM01" Name="DELUSIONS SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM01">
				<Description>
					<TranslatedText xml:lang="en-US">DELUSIONS SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Delusions Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Delusions Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM01D" Name="DELUSIONS DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM01D">
				<Description>
					<TranslatedText xml:lang="en-US">DELUSIONS DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Delusions Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Delusions Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM01F" Name="DELUSIONS FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM01F">
				<Description>
					<TranslatedText xml:lang="en-US">DELUSIONS FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Delusions Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Delusions Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM01P" Name="DELUSIONS PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM01P">
				<Description>
					<TranslatedText xml:lang="en-US">DELUSIONS PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Delusions Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Delusions Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM01S" Name="DELUSIONS SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM01S">
				<Description>
					<TranslatedText xml:lang="en-US">DELUSIONS SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Delusions Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Delusions Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM02" Name="HALLUCINATIONS SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM02">
				<Description>
					<TranslatedText xml:lang="en-US">HALLUCINATIONS SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Hallucinations Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hallucinations Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM02D" Name="HALLUCINATIONS DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM02D">
				<Description>
					<TranslatedText xml:lang="en-US">HALLUCINATIONS DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Hallucinations Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hallucinations Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM02F" Name="HALLUCINATIONS FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM02F">
				<Description>
					<TranslatedText xml:lang="en-US">HALLUCINATIONS FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Hallucinations Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hallucinations Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM02P" Name="HALLUCINATIONS PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM02P">
				<Description>
					<TranslatedText xml:lang="en-US">HALLUCINATIONS PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Hallucinations Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hallucinations Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM02S" Name="HALLUCINATIONS SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM02S">
				<Description>
					<TranslatedText xml:lang="en-US">HALLUCINATIONS SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Hallucinations Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Hallucinations Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM03" Name="AGITATION/AGRESSION SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM03">
				<Description>
					<TranslatedText xml:lang="en-US">AGITATION/AGRESSION SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Agitation/Agression Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Agitation/Agression Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM03D" Name="AGITATION/AGRESSION DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM03D">
				<Description>
					<TranslatedText xml:lang="en-US">AGITATION/AGRESSION DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Agitation/Agression Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Agitation/Agression Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM03F" Name="AGITATION/AGRESSION FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM03F">
				<Description>
					<TranslatedText xml:lang="en-US">AGITATION/AGRESSION FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Agitation/Agression Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Agitation/Agression Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM03P" Name="AGITATION/AGRESSION PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM03P">
				<Description>
					<TranslatedText xml:lang="en-US">AGITATION/AGRESSION PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Agitation/Agression Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Agitation/Agression Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM03S" Name="AGITATION/AGRESSION SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM03S">
				<Description>
					<TranslatedText xml:lang="en-US">AGITATION/AGRESSION SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Agitation/Agression Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Agitation/Agression Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM04" Name="DEPRESSION/DYSPHORIA SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM04">
				<Description>
					<TranslatedText xml:lang="en-US">DEPRESSION/DYSPHORIA SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Depression/Dysphoria Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Depression/Dysphoria Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM04D" Name="DEPRESSION/DYSPHORIA DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM04D">
				<Description>
					<TranslatedText xml:lang="en-US">DEPRESSION/DYSPHORIA DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Depression/Dysphoria Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Depression/Dysphoria Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM04F" Name="DEPRESSION/DYSPHORIA FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM04F">
				<Description>
					<TranslatedText xml:lang="en-US">DEPRESSION/DYSPHORIA FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Depression/Dysphoria Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Depression/Dysphoria Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM04P" Name="DEPRESSION/DYSPHORIA PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM04P">
				<Description>
					<TranslatedText xml:lang="en-US">DEPRESSION/DYSPHORIA PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Depression/Dysphoria Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Depression/Dysphoria Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM04S" Name="DEPRESSION/DYSPHORIA SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM04S">
				<Description>
					<TranslatedText xml:lang="en-US">DEPRESSION/DYSPHORIA SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Depression/Dysphoria Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Depression/Dysphoria Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM05" Name="ANXIETY SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM05">
				<Description>
					<TranslatedText xml:lang="en-US">ANXIETY SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Anxiety Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Anxiety Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM05D" Name="ANXIETY DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM05D">
				<Description>
					<TranslatedText xml:lang="en-US">ANXIETY DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Anxiety Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Anxiety Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM05F" Name="ANXIETY FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM05F">
				<Description>
					<TranslatedText xml:lang="en-US">ANXIETY FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Anxiety Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Anxiety Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM05P" Name="ANXIETY PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM05P">
				<Description>
					<TranslatedText xml:lang="en-US">ANXIETY PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Anxiety Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Anxiety Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM05S" Name="ANXIETY SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM05S">
				<Description>
					<TranslatedText xml:lang="en-US">ANXIETY SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Anxiety Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Anxiety Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM06" Name="EUPHORIA/ELATION SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM06">
				<Description>
					<TranslatedText xml:lang="en-US">EUPHORIA/ELATION SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Euphoria/Elation Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Euphoria/Elation Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM06D" Name="EUPHORIA/ELATION DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM06D">
				<Description>
					<TranslatedText xml:lang="en-US">EUPHORIA/ELATION DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Euphoria/Elation Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Euphoria/Elation Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM06F" Name="EUPHORIA/ELATION FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM06F">
				<Description>
					<TranslatedText xml:lang="en-US">EUPHORIA/ELATION FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Euphoria/Elation Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Euphoria/Elation Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM06P" Name="EUPHORIA/ELATION PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM06P">
				<Description>
					<TranslatedText xml:lang="en-US">EUPHORIA/ELATION PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Euphoria/Elation Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Euphoria/Elation Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM06S" Name="EUPHORIA/ELATION SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM06S">
				<Description>
					<TranslatedText xml:lang="en-US">EUPHORIA/ELATION SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Euphoria/Elation Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Euphoria/Elation Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM07" Name="APATHY/INDIFFERENCE SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM07">
				<Description>
					<TranslatedText xml:lang="en-US">APATHY/INDIFFERENCE SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Apathy/Indifference Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Apathy/Indifference Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM07D" Name="APATHY/INDIFFERENCE DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM07D">
				<Description>
					<TranslatedText xml:lang="en-US">APATHY/INDIFFERENCE DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Apathy/Indifference Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Apathy/Indifference Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM07F" Name="APATHY/INDIFFERENCE FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM07F">
				<Description>
					<TranslatedText xml:lang="en-US">APATHY/INDIFFERENCE FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Apathy/Indifference Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Apathy/Indifference Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM07P" Name="APATHY/INDIFFERENCE PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM07P">
				<Description>
					<TranslatedText xml:lang="en-US">APATHY/INDIFFERENCE PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Apathy/Indifference Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Apathy/Indifference Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM07S" Name="APATHY/INDIFFERENCE SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM07S">
				<Description>
					<TranslatedText xml:lang="en-US">APATHY/INDIFFERENCE SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Apathy/Indifference Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Apathy/Indifference Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM08" Name="DISINHIBITION SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM08">
				<Description>
					<TranslatedText xml:lang="en-US">DISINHIBITION SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Disinhibition Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Disinhibition Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM08D" Name="DISINHIBITION  DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM08D">
				<Description>
					<TranslatedText xml:lang="en-US">DISINHIBITION  DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Disinhibition  Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Disinhibition  Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM08F" Name="DISINHIBITION FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM08F">
				<Description>
					<TranslatedText xml:lang="en-US">DISINHIBITION FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Disinhibition Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Disinhibition Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM08P" Name="DISINHIBITION PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM08P">
				<Description>
					<TranslatedText xml:lang="en-US">DISINHIBITION PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Disinhibition Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Disinhibition Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM08S" Name="DISINHIBITION SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM08S">
				<Description>
					<TranslatedText xml:lang="en-US">DISINHIBITION SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Disinhibition Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Disinhibition Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM09" Name="IRRITABILITY/LABILITY SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM09">
				<Description>
					<TranslatedText xml:lang="en-US">IRRITABILITY/LABILITY SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Irritability/Lability Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Irritability/Lability Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM09D" Name="IRRITABILITY/LABILITY DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM09D">
				<Description>
					<TranslatedText xml:lang="en-US">IRRITABILITY/LABILITY DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Irritability/Lability Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Irritability/Lability Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM09F" Name="IRRITABILITY/LABILITY FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM09F">
				<Description>
					<TranslatedText xml:lang="en-US">IRRITABILITY/LABILITY FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Irritability/Lability Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Irritability/Lability Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM09P" Name="IRRITABILITY/LABILITY PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM09P">
				<Description>
					<TranslatedText xml:lang="en-US">IRRITABILITY/LABILITY PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Irritability/Lability Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Irritability/Lability Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM09S" Name="IRRITABILITY/LABILITY SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM09S">
				<Description>
					<TranslatedText xml:lang="en-US">IRRITABILITY/LABILITY SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Irritability/Lability Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Irritability/Lability Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM10" Name="ABERRANT MOTOR BEHAVIOR SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM10">
				<Description>
					<TranslatedText xml:lang="en-US">ABERRANT MOTOR BEHAVIOR SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Aberrant Motor Behavior Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Aberrant Motor Behavior Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM10D" Name="ABERRANT MOTOR BEHAVIOR DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM10D">
				<Description>
					<TranslatedText xml:lang="en-US">ABERRANT MOTOR BEHAVIOR DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Aberrant Motor Behavior Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Aberrant Motor Behavior Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM10F" Name="ABERRANT MOTOR BEHAVIOR FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM10F">
				<Description>
					<TranslatedText xml:lang="en-US">ABERRANT MOTOR BEHAVIOR FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Aberrant Motor Behavior Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Aberrant Motor Behavior Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM10P" Name="ABERRANT MOTOR BEHAVIOR PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM10P">
				<Description>
					<TranslatedText xml:lang="en-US">ABERRANT MOTOR BEHAVIOR PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Aberrant Motor Behavior Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Aberrant Motor Behavior Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM10S" Name="ABERRANT MOTOR BEHAVIOR SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM10S">
				<Description>
					<TranslatedText xml:lang="en-US">ABERRANT MOTOR BEHAVIOR SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Aberrant Motor Behavior Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Aberrant Motor Behavior Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM11" Name="NIGHT-TIME BEHAVIOR SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM11">
				<Description>
					<TranslatedText xml:lang="en-US">NIGHT-TIME BEHAVIOR SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Night-Time Behavior Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Night-Time Behavior Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM11D" Name="NIGHT-TIME BEHAVIOR DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM11D">
				<Description>
					<TranslatedText xml:lang="en-US">NIGHT-TIME BEHAVIOR DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Night-Time Behavior Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Night-Time Behavior Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM11F" Name="NIGHT-TIME BEHAVIOR FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM11F">
				<Description>
					<TranslatedText xml:lang="en-US">NIGHT-TIME BEHAVIOR FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Night-Time Behavior Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Night-Time Behavior Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM11P" Name="NIGHT-TIME BEHAVIOR PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM11P">
				<Description>
					<TranslatedText xml:lang="en-US">NIGHT-TIME BEHAVIOR PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Night-Time Behavior Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Night-Time Behavior Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM11S" Name="NIGHT-TIME BEHAVIOR SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM11S">
				<Description>
					<TranslatedText xml:lang="en-US">NIGHT-TIME BEHAVIOR SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Night-Time Behavior Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Night-Time Behavior Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM12" Name="APPETITE/EATING CHANGE SCORE" DataType="integer" Origin="CRF" SASFieldName="NPITM12">
				<Description>
					<TranslatedText xml:lang="en-US">APPETITE/EATING CHANGE SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Appetite/Eating Change Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Appetite/Eating Change Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM12D" Name="APPETITE/EATING CHANGE DISTRESS" DataType="integer" Origin="CRF" SASFieldName="NPITM12D">
				<Description>
					<TranslatedText xml:lang="en-US">APPETITE/EATING CHANGE DISTRESS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Appetite/Eating Change Distress</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Appetite/Eating Change Distress</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM12F" Name="APPETITE/EATING CHANGE FREQUENCY" DataType="integer" Origin="CRF" SASFieldName="NPITM12F">
				<Description>
					<TranslatedText xml:lang="en-US">APPETITE/EATING CHANGE FREQUENCY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Appetite/Eating Change Frequency</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Appetite/Eating Change Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM12P" Name="APPETITE/EATING CHANGE PRESENT" DataType="text" Origin="CRF" SASFieldName="NPITM12P">
				<Description>
					<TranslatedText xml:lang="en-US">APPETITE/EATING CHANGE PRESENT</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Appetite/Eating Change Present</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Appetite/Eating Change Present</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPITM12S" Name="APPETITE/EATING CHANGE SEVERITY" DataType="integer" Origin="CRF" SASFieldName="NPITM12S">
				<Description>
					<TranslatedText xml:lang="en-US">APPETITE/EATING CHANGE SEVERITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Appetite/Eating Change Severity</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Appetite/Eating Change Severity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.NPTOT" Name="NPI-X (9) TOTAL SCORE" DataType="integer" Origin="CRF" SASFieldName="NPTOT">
				<Description>
					<TranslatedText xml:lang="en-US">NPI-X (9) TOTAL SCORE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">NPI-X (9) Total Score</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>NPI-X (9) Total Score</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.PH" Name="PH" DataType="text" Origin="eDT" SASFieldName="PH">
				<Description>
					<TranslatedText xml:lang="en-US">PH</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Ph test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Ph</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.PHOS" Name="PHOSPHATE" DataType="text" Origin="eDT" SASFieldName="PHOS">
				<Description>
					<TranslatedText xml:lang="en-US">PHOSPHATE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Phosphate test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Phosphate</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.PLAT" Name="PLATELET" DataType="text" Origin="eDT" SASFieldName="PLAT">
				<Description>
					<TranslatedText xml:lang="en-US">PLATELET</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Platelet test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Platelet</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.POIKILO" Name="POIKILOCYTOSIS" DataType="text" Origin="eDT" SASFieldName="POIKILO">
				<Description>
					<TranslatedText xml:lang="en-US">POIKILOCYTOSIS</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Poikilocytosis test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Poikilocytosis</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.POLYCHR" Name="POLYCHROMASIA" DataType="text" Origin="eDT" SASFieldName="POLYCHR">
				<Description>
					<TranslatedText xml:lang="en-US">POLYCHROMASIA</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Polychromasia test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Polychromasia</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.PROT" Name="PROTEIN" DataType="text" Origin="eDT" SASFieldName="PROT">
				<Description>
					<TranslatedText xml:lang="en-US">PROTEIN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Protein test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Protein</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.PULSE_STANDING" Name="Standing Pulse" DataType="integer" Origin="CRF" SASFieldName="PULSE">
				<Description>
					<TranslatedText xml:lang="en-US">Standing Pulse</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the standing pulse measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Standing Pulse</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.PULSE_SUPINE" Name="Supine Pulse" DataType="integer" Origin="CRF" SASFieldName="PULSE">
				<Description>
					<TranslatedText xml:lang="en-US">Supine Pulse</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the supine pulse measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Supine Pulse</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.RACE" SASFieldName="RACE" Name="Race" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">An arbitrary classification based on physical characteristics; a group of persons related by common descent or heredity (U.S. Center for Disease Control).</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Which of the following racial designations best describes you? (More than one choice is acceptable.)</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.RACE"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Race</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.RBC" Name="ERYTHROCYTES" DataType="text" Origin="eDT" SASFieldName="RBC">
				<Description>
					<TranslatedText xml:lang="en-US">ERYTHROCYTES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Erythrocytes test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Erythrocytes</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SEX" SASFieldName="SEX" Name="Sex" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Sex captures a subject's or non-subject's chromosomal characteristic.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the sex of the subject?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.SEX"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Sex</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SPGRAV" Name="SPECIFIC GRAVITY" DataType="text" Origin="eDT" SASFieldName="SPGRAV">
				<Description>
					<TranslatedText xml:lang="en-US">SPECIFIC GRAVITY</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Specific Gravity test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Specific Gravity</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_BEER" DataType="float" Origin="CRF" Length="6" Name="Beer Amount" SASFieldName="SUDOSBER" SignificantDigits="2">
				<Description>
					<TranslatedText xml:lang="en-US">Beer consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of beer consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Beer Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_CIGAR" Name="Cigar Amount" SASFieldName="SUDOSCGR" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">Cigar consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of cigars consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Cigars Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_CIGARETTES" Name="Cigarettes Amount" SASFieldName="SUDOSCGT" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">Cigarette consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of cigarettes consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Cigarettes Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_COFFEE" Name="Coffee Amount" SASFieldName="SUDOSCOF" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">Coffee consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of coffee consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Coffee Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_PIPES" Name="Pipes Amount" SASFieldName="SUDOSPIP" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">Pipe consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of pipefuls consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Pipefuls Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_SODA" Name="Soda Amount" SASFieldName="SUDOSSDA" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">Soda consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of soda consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Soda Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_SPIRITS" DataType="float" Origin="CRF" Length="6" Name="Spirits Amount" SASFieldName="SUDOSSPR" SignificantDigits="2">
				<Description>
					<TranslatedText xml:lang="en-US">Spirit consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of spirits consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Spirits Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_TEA" Name="Tea Amount" SASFieldName="SUDOSTEA" DataType="integer" Origin="CRF" Length="4">
				<Description>
					<TranslatedText xml:lang="en-US">Tea consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of tea consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Tea Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSE_WINE" DataType="float" Origin="CRF" Length="6" Name="Wine Amount" SASFieldName="SUDOSWIN" SignificantDigits="2">
				<Description>
					<TranslatedText xml:lang="en-US">Wine consumption amount.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the amount of wine consumed?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Wine Amount</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSFRQ_BEER" DataType="text" Origin="CRF" Length="50" Name="Beer Frequency" SASFieldName="SUFRQBER">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of beer use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef DataType="text" Origin="CRF" Length="50" Name="Cigar Frequency" OID="I.SUDOSFRQ_CIGAR" SASFieldName="SUFRQCGR">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of cigar use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef DataType="text" Origin="CRF" Length="50" Name="Cigarette Frequency" OID="I.SUDOSFRQ_CIGARETTE" SASFieldName="SUFRQCGT">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of cigarette use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSFRQ_COFFEE" Name="Coffee Frequency" SASFieldName="SUFRQCOF" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of coffee use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef DataType="text" Origin="CRF" Length="50" Name="Pipes Frequency" OID="I.SUDOSFRQ_PIPES" SASFieldName="SUFRQPIP">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of pipes use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSFRQ_SODA" Name="Soda Frequency" SASFieldName="SUFRQSDA" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of soda use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSFRQ_SPIRITS" DataType="text" Origin="CRF" Length="50" Name="Spirits Frequency" SASFieldName="SUFRQSPR">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of spirits use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSFRQ_TEA" Name="Tea Frequency" SASFieldName="SUFRQTEA" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of tea use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUDOSFRQ_WINE" DataType="text" Origin="CRF" Length="50" Name="Wine Frequency" SASFieldName="SUFRQWIN">
				<Description>
					<TranslatedText xml:lang="en-US">Number of uses consumed per a specific interval.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the frequency of wine use?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.FREQ_SU"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Frequency</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUENDAT_ALCOHOL" DataType="date" Origin="CRF" Name="Alcohol End Date" SASFieldName="ENDATALC">
				<Description>
					<TranslatedText xml:lang="en-US">Date alcohol use ended.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the end date of alcohol consumption?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>End Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUENDAT_CAFFEINE" Name="Caffeine End Date" SASFieldName="ENDATCAF" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">End Date of Caffeine Use.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the end date of caffeine consumption?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>End Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUENDAT_TOBACCO" Name="Tobacco End Date" SASFieldName="ENDATTOB" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date tobacco use ended.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the end date of tobacco consumption?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>End Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUNCF_ALCOHOL" DataType="text" Origin="CRF" Length="50" Name="Alcohol Usage" SASFieldName="SUNCFALC">
				<Description>
					<TranslatedText xml:lang="en-US">Alcohol Use Occurrence.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Has the subject ever consumed alcohol?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NCF"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Substance Usage</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUNCF_CAFFEINE" Name="Caffeine Usage" SASFieldName="SUNCFCAF" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Caffeine Use Occurrence.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Has the subject ever consumed caffeine?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NCF"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Substance Usage</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUNCF_TOBACCO" Name="Tobacco Usage" SASFieldName="SUNCFTOB" DataType="text" Origin="CRF" Length="50">
				<Description>
					<TranslatedText xml:lang="en-US">Tobacco Use Occurrence.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Has the subject ever consumed tobacco products?</TranslatedText>
				</Question>
				<CodeListRef CodeListOID="CL.NCF"/>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Substance Usage</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUSTDAT_ALCOHOL" DataType="date" Origin="CRF" Name="Alcohol Start Date" SASFieldName="STDATALC">
				<Description>
					<TranslatedText xml:lang="en-US">Date alcohol use started.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the start date of alcohol consumption?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Start Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUSTDAT_CAFFEINE" Name="Caffeine Start Date" SASFieldName="STDATCAF" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date caffeine use started.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the start date of caffeine consumption?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Start Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SUSTDAT_TOBACCO" Name="Tobacco Start Date" SASFieldName="STDATTOB" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date tobacco use started.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the start date of tobacco consumption?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Start Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SYSBP_STANDING" Name="Standing Systolic Blood Pressure" DataType="integer" Origin="CRF" SASFieldName="SYSBP">
				<Description>
					<TranslatedText xml:lang="en-US">Standing Systolic Blood Pressure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the standing blood pressure pressure measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Standing Systolic Blood Pressure</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.SYSBP_SUPINE" Name="Supine Systolic Blood Pressure" DataType="integer" Origin="CRF" SASFieldName="SYSBP">
				<Description>
					<TranslatedText xml:lang="en-US">Supine Systolic Blood Pressure</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the supine blood pressure measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Supine Systolic Blood Pressure</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.TEMP" Name="Temperature" DataType="float" Origin="CRF" SASFieldName="TEMP">
				<Description>
					<TranslatedText xml:lang="en-US">Temperature</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the temperature measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Temperature</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.TSH" Name="THYROTROPIN" DataType="text" Origin="eDT" SASFieldName="TSH">
				<Description>
					<TranslatedText xml:lang="en-US">THYROTROPIN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Thyrotropin test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Thyrotropin</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.TTSACC01" Name="PATCH OR ORAL PILL PREFERENCE" DataType="text" Origin="CRF" SASFieldName="TTSACC01">
				<Description>
					<TranslatedText xml:lang="en-US">PATCH OR ORAL PILL PREFERENCE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">Based on the experience of applying and wearing this patch, if the patient were prescribed a drug for Alzheimer's disease and was given the choice of this patch or an oral pill given twice daily (assume that both formulations are equally effective), would</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Patch or Oral Pill Preference</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.TTSACC02" Name="APPEARANCE OF PATCH ACCEPTABLE" DataType="text" Origin="CRF" SASFieldName="TTSACC02">
				<Description>
					<TranslatedText xml:lang="en-US">APPEARANCE OF PATCH ACCEPTABLE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">The appearance of the patch while being worn is acceptable:</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Appearance of Patch Acceptable</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.TTSACC03" Name="SIZE OF PATCH ACCEPTABLE" DataType="text" Origin="CRF" SASFieldName="TTSACC03">
				<Description>
					<TranslatedText xml:lang="en-US">SIZE OF PATCH ACCEPTABLE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">The size of the patch is acceptable:</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Size of Patch Acceptable</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.TTSACC04" Name="PATCHES WERE DURABLE WHILE WORN" DataType="text" Origin="CRF" SASFieldName="TTSACC04">
				<Description>
					<TranslatedText xml:lang="en-US">PATCHES WERE DURABLE WHILE WORN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">The patches were durable (eg, did not discolor, tear) while being worn:</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Patches Were Durable While Worn</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.URATE" Name="URATE" DataType="text" Origin="eDT" SASFieldName="URATE">
				<Description>
					<TranslatedText xml:lang="en-US">URATE</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Urate test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Urate</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.UROBIL" Name="UROBILINOGEN" DataType="text" Origin="eDT" SASFieldName="UROBIL">
				<Description>
					<TranslatedText xml:lang="en-US">UROBILINOGEN</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Urobilinogen test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Urobilinogen</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.VISDAT" Name="Visit Date" SASFieldName="VISDAT" DataType="date" Origin="CRF">
				<Description>
					<TranslatedText xml:lang="en-US">Date the clinical encounter occurred (or started).</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the visit date?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Visit Date</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.VISIT" Name="VISIT" DataType="text" Length="30" Origin="CRF" SASFieldName="VISIT">
				<Description>
					<TranslatedText xml:lang="en-US">A clinical encounter that encompasses planned and unplanned trial inventions, procedures, and assessments that may be performed on a subject.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the visit name?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Visit</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.VISITNUM" Name="VISIT NUMBER" DataType="integer" Length="8" Origin="DERIVED" SASFieldName="VISITNUM">
				<Description>
					<TranslatedText xml:lang="en-US">A number assigned to a clinical encounter.  Numeric version of VISIT, used for sorting.</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What is the visit number?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Visit Number</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.VITB12" Name="VITAMIN B12" DataType="text" Origin="eDT" SASFieldName="VITB12">
				<Description>
					<TranslatedText xml:lang="en-US">VITAMIN B12</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Vitamin B12 test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Vitamin B12</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.WBC" Name="LEUKOCYTES" DataType="text" Origin="eDT" SASFieldName="WBC">
				<Description>
					<TranslatedText xml:lang="en-US">LEUKOCYTES</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the Leukocytes test?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Leukocytes</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<ItemDef OID="I.WEIGHT" Name="Weight" DataType="float" Origin="CRF" SASFieldName="WEIGHT">
				<Description>
					<TranslatedText xml:lang="en-US">Weight</TranslatedText>
				</Description>
				<Question>
					<TranslatedText xml:lang="en-US">What was the result of the weight measurement?</TranslatedText>
				</Question>
				<cdash:CustomAttributeSet>
					<cdash:CustomAttribute DisplayName="Item Prompt" Name="ItemPrompt">
						<cdash:Value>Weight</cdash:Value>
					</cdash:CustomAttribute>
				</cdash:CustomAttributeSet>
			</ItemDef>
			<CodeList OID="CL.AEACN" Name="Action Taken with Study Treatment" DataType="text">
				<CodeListItem CodedValue="DOSE INCREASED" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Dose Increased</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="DOSE NOT CHANGED" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Dose Not Changed</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="DOSE REDUCED" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Dose Reduced</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="DRUG INTERRUPTED" OrderNumber="4">
					<Decode>
						<TranslatedText xml:lang="en-US">Drug Interrupted</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="DRUG WITHDRAWN" OrderNumber="5">
					<Decode>
						<TranslatedText xml:lang="en-US">Drug Withdrawn</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="NOT APPLICABLE" OrderNumber="6">
					<Decode>
						<TranslatedText xml:lang="en-US">Not Applicable</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="UNKNOWN" OrderNumber="7">
					<Decode>
						<TranslatedText xml:lang="en-US">Unknown</TranslatedText>
					</Decode>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.AESEV" Name="Severity/Intensity Scale for Adverse Events" DataType="text">
				<CodeListItem CodedValue="MILD" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Mild</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="MODERATE" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Moderate</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="SEVERE" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Severe</TranslatedText>
					</Decode>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.NY" Name="No Yes Response" DataType="text">
				<CodeListItem CodedValue="N" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">No</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="Y" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Yes</TranslatedText>
					</Decode>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.OUT" Name="Outcome of Event" DataType="text">
				<CodeListItem CodedValue="RECOVERED/RESOLVED" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Recovered/Resolved</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="RECOVERING/RESOLVING" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Recovering/Resolving</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="NOT RECOVERED/NOT RESOLVED" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Not Recovered/Not Resolved</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="RECOVERED/RESOLVED WITH SEQUELAE" OrderNumber="4">
					<Decode>
						<TranslatedText xml:lang="en-US">Recovered/Resolved With Sequelae</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="FATAL" OrderNumber="5">
					<Decode>
						<TranslatedText xml:lang="en-US">Fatal</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="UNKNOWN" OrderNumber="6">
					<Decode>
						<TranslatedText xml:lang="en-US">Unknown</TranslatedText>
					</Decode>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.ETHNIC" Name="Ethnic Group" DataType="text">
				<CodeListItem CodedValue="HISPANIC OR LATINO" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Hispanic or Latino</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="NOT HISPANIC OR LATINO" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Not Hispanic or Latino</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="NOT REPORTED" OrderNumber="4">
					<Decode>
						<TranslatedText xml:lang="en-US">Not Reported</TranslatedText>
					</Decode>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.RACE" Name="Race" DataType="text">
				<CodeListItem CodedValue="AMERICAN INDIAN OR ALASKA NATIVE" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">American Indian or Alaska Native</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="ASIAN" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Asian</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="BLACK OR AFRICAN AMERICAN" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Black or African American</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER" OrderNumber="5">
					<Decode>
						<TranslatedText xml:lang="en-US">Native Hawaiian or Other Pacific Islander</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="WHITE" OrderNumber="6">
					<Decode>
						<TranslatedText xml:lang="en-US">White</TranslatedText>
					</Decode>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.SEX" Name="Sex" DataType="text">
				<CodeListItem CodedValue="F" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Female</TranslatedText>
					</Decode>
				</CodeListItem>
				<CodeListItem CodedValue="M" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Male</TranslatedText>
					</Decode>
				</CodeListItem>
			</CodeList>
			<CodeList DataType="text" Name="Frequency (Subset for Substance Use)" OID="CL.FREQ_SU">
				<CodeListItem CodedValue="QD" OrderNumber="35">
					<Decode>
						<TranslatedText xml:lang="en-US">Daily</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>QD</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="QM" OrderNumber="50">
					<Decode>
						<TranslatedText xml:lang="en-US">Monthly</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>QM</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="EVERY WEEK" OrderNumber="52">
					<Decode>
						<TranslatedText xml:lang="en-US">Weekly</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>EVERY WEEK</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="PA" OrderNumber="55">
					<Decode>
						<TranslatedText xml:lang="en-US">Per Year</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>PA</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.COD" DataType="text" Name="Cause of Death">
				<CodeListItem CodedValue="STUDY DISEASE" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Study Disease</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>STUDY DISEASE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="ADVERSE EVENT" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Adverse Event</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>ADVERSE EVENT</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="PROCEDURE RELATED" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Procedure Related</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>PROCEDURE RELATED</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="INDETERMINATE" OrderNumber="4">
					<Decode>
						<TranslatedText xml:lang="en-US">Indeterminate</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>INDETERMINATE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="NOT STUDY RELATED" OrderNumber="5">
					<Decode>
						<TranslatedText xml:lang="en-US">Not Study Related</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>NOT STUDY RELATED</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="RADIOTHERAPY RELATED" OrderNumber="6">
					<Decode>
						<TranslatedText xml:lang="en-US">Radiotherapy Related</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>RADIOTHERAPY RELATED</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="CHEMOTHERAPY RELATED" OrderNumber="7">
					<Decode>
						<TranslatedText xml:lang="en-US">Chemotherapy Related</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>CHEMOTHERAPY RELATED</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="CHEMORADIOTHERAPY RELATED" OrderNumber="8">
					<Decode>
						<TranslatedText xml:lang="en-US">Chemoradiotherapy Related</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>CHEMORADIOTHERAPY RELATED</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.DSDCCGVR" DataType="text" Name="Reason for Non-Completion Subcategory (Subset for Caregiver)">
				<CodeListItem CodedValue="CAREGIVER DECISION" OrderNumber="10">
					<Decode>
						<TranslatedText xml:lang="en-US">Caregiver decision</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>CAREGIVER DECISION</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="CAREGIVER MOVED AWAY" OrderNumber="11">
					<Decode>
						<TranslatedText xml:lang="en-US">Caregiver moved away</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>CAREGIVER MOVED AWAY</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="CAREGIVER ILLNESS, HOSPITALIZATION, OR INSTITUTIONALIZATION" OrderNumber="12">
					<Decode>
						<TranslatedText xml:lang="en-US">Caregiver unable to continue to enable participation due to illness/hospitalization/institutionalization</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>CAREGIVER ILLNESS, HOSPITALIZATION, OR INSTITUTIONALIZATION</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="DUE TO EPIDEMIC/PANDEMIC" OrderNumber="19">
					<Decode>
						<TranslatedText xml:lang="en-US">Due to Epidemic/Pandemic</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>DUE TO EPIDEMIC/PANDEMIC</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.EVAL_DSDECOD13" DataType="text" Name="Evaluator (Subset for Lack of Efficacy)">
				<CodeListItem CodedValue="CAREGIVER" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Caregiver</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>CAREGIVER</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="GUARDIAN" OrderNumber="10">
					<Decode>
						<TranslatedText xml:lang="en-US">Guardian</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>GUARDIAN</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="INVESTIGATOR" OrderNumber="13">
					<Decode>
						<TranslatedText xml:lang="en-US">Investigator</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>INVESTIGATOR</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="PARENT" OrderNumber="17">
					<Decode>
						<TranslatedText xml:lang="en-US">Parent</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>PARENT</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="STUDY SUBJECT" OrderNumber="23">
					<Decode>
						<TranslatedText xml:lang="en-US">Study Subject</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>STUDY SUBJECT</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
			</CodeList>
			<CodeList OID="CL.NCOMPLT" DataType="text" Name="Completion/Reason for Non-Completion">
				<CodeListItem CodedValue="COMPLETED" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Completed</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>COMPLETED</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="ADVERSE EVENT" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Adverse Event</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>ADVERSE EVENT</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="DEATH" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Death</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>DEATH</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="DISEASE RELAPSE" OrderNumber="4">
					<Decode>
						<TranslatedText xml:lang="en-US">Recurrent Disease</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>DISEASE RELAPSE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="PROGRESSIVE DISEASE" OrderNumber="5">
					<Decode>
						<TranslatedText xml:lang="en-US">Progressive Disease</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>PROGRESSIVE DISEASE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="LACK OF EFFICACY" OrderNumber="6">
					<Decode>
						<TranslatedText xml:lang="en-US">Lack of Efficacy</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>LACK OF EFFICACY</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="RECOVERY" OrderNumber="7">
					<Decode>
						<TranslatedText xml:lang="en-US">Recovery</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>RECOVERY</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="LOST TO FOLLOW-UP" OrderNumber="8">
					<Decode>
						<TranslatedText xml:lang="en-US">Lost to follow up</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>LOST TO FOLLOW-UP</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="SCREEN FAILURE" OrderNumber="9">
					<Decode>
						<TranslatedText xml:lang="en-US">Screen Failure</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>SCREEN FAILURE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="FAILURE TO MEET RANDOMIZATION CRITERIA" OrderNumber="10">
					<Decode>
						<TranslatedText xml:lang="en-US">Failure to Meet Randomization Criteria</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>FAILURE TO MEET RANDOMIZATION CRITERIA</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="NON-COMPLIANCE WITH STUDY DRUG" OrderNumber="11">
					<Decode>
						<TranslatedText xml:lang="en-US">Non-Compliance With Study Drug</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>NON-COMPLIANCE WITH STUDY DRUG</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="PROTOCOL DEVIATION" OrderNumber="12">
					<Decode>
						<TranslatedText xml:lang="en-US">Protocol Deviation</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>PROTOCOL DEVIATION</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="PREGNANCY" OrderNumber="13">
					<Decode>
						<TranslatedText xml:lang="en-US">Pregnancy</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>PREGNANCY</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="STUDY TERMINATED BY IRB / ERB" OrderNumber="14">
					<Decode>
						<TranslatedText xml:lang="en-US">Study Terminated by IRB / ERB</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>STUDY TERMINATED BY IRB / ERB</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="STUDY TERMINATED BY SPONSOR" OrderNumber="15">
					<Decode>
						<TranslatedText xml:lang="en-US">Study Terminated by Sponsor</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>STUDY TERMINATED BY SPONSOR</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="WITHDRAWAL BY SUBJECT" OrderNumber="16">
					<Decode>
						<TranslatedText xml:lang="en-US">Withdrawal by Subject</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>WITHDRAWAL BY SUBJECT</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="WITHDRAWAL BY PARENT/GUARDIAN" OrderNumber="17">
					<Decode>
						<TranslatedText xml:lang="en-US">Study Subject Withdrawal by Parent or Guardian</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>WITHDRAWAL BY PARENT/GUARDIAN</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="PHYSICIAN DECISION" OrderNumber="18">
					<Decode>
						<TranslatedText xml:lang="en-US">Physician Decision</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>PHYSICIAN DECISION</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="WITHDRAWAL DUE TO CAREGIVER CIRCUMSTANCES" OrderNumber="19">
					<Decode>
						<TranslatedText xml:lang="en-US">Withdrawal due to Caregiver Circumstances</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>WITHDRAWAL DUE TO CAREGIVER CIRCUMSTANCES</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="TECHNICAL PROBLEMS" OrderNumber="20">
					<Decode>
						<TranslatedText xml:lang="en-US">Technical Problems</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>TECHNICAL PROBLEMS</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="OTHER" OrderNumber="21">
					<Decode>
						<TranslatedText xml:lang="en-US">Other</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>OTHER</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="SITE TERMINATED BY SPONSOR" OrderNumber="22">
					<Decode>
						<TranslatedText xml:lang="en-US">Site Terminated by Sponsor</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>SITE TERMINATED BY SPONSOR</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="EVENT OR CONDITION STABLE" OrderNumber="24">
					<Decode>
						<TranslatedText xml:lang="en-US">Event or Condition Stable</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>EVENT OR CONDITION STABLE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="LABORATORY TEST RESULT(S) RETURNED TO ACCEPTABLE RANGE" OrderNumber="25">
					<Decode>
						<TranslatedText xml:lang="en-US">Laboratory Test Result(s) Returned to Acceptable Range</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>LABORATORY TEST RESULT(S) RETURNED TO ACCEPTABLE RANGE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="SURGICAL RESECTION" OrderNumber="26">
					<Decode>
						<TranslatedText xml:lang="en-US">Surgical Resection</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>SURGICAL RESECTION</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="ASSIGNED TREATMENT BY MISTAKE" OrderNumber="28">
					<Decode>
						<TranslatedText xml:lang="en-US">Assigned Treatment by Mistake</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>ASSIGNED TREATMENT BY MISTAKE</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="ENTERED INTO ANOTHER SUB-STUDY" OrderNumber="29">
					<Decode>
						<TranslatedText xml:lang="en-US">Entered into Another Sub-Study</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>ENTERED INTO ANOTHER SUB-STUDY</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="TRANSFERRED TO ANOTHER MEDICAL FACILITY" OrderNumber="30">
					<Decode>
						<TranslatedText xml:lang="en-US">Transferred to Another Medical Facility</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>TRANSFERRED TO ANOTHER MEDICAL FACILITY</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="FAILURE TO MEET CONTINUATION CRITERIA" OrderNumber="31">
					<Decode>
						<TranslatedText xml:lang="en-US">Failure to Meet Continuation Criteria</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>FAILURE TO MEET CONTINUATION CRITERIA</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="EXCEPTIONAL CIRCUMSTANCES" OrderNumber="32">
					<Decode>
						<TranslatedText xml:lang="en-US">Exceptional Circumstances</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>EXCEPTIONAL CIRCUMSTANCES</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
			</CodeList>
			<CodeList DataType="text" Name="Never/Current/Former Classification" OID="CL.NCF">
				<CodeListItem CodedValue="NEVER" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">Never</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>NEVER</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="CURRENT" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Current</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>CURRENT</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="FORMER" OrderNumber="3">
					<Decode>
						<TranslatedText xml:lang="en-US">Former</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>FORMER</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
			</CodeList>
			<CodeList DataType="text" Name="No Yes Response" OID="CL.NY">
				<CodeListItem CodedValue="N" OrderNumber="1">
					<Decode>
						<TranslatedText xml:lang="en-US">No</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>N</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
				<CodeListItem CodedValue="Y" OrderNumber="2">
					<Decode>
						<TranslatedText xml:lang="en-US">Yes</TranslatedText>
					</Decode>
					<cdash:CustomAttributeSet>
						<cdash:CustomAttribute DisplayName="Short Decode" Name="ShortDecode">
							<cdash:Value>Y</cdash:Value>
						</cdash:CustomAttribute>
						<cdash:CustomAttribute DisplayName="Active Status" Name="ActiveStatus">
							<cdash:Value>A</cdash:Value>
						</cdash:CustomAttribute>
					</cdash:CustomAttributeSet>
				</CodeListItem>
			</CodeList>
			<ConditionDef OID="COND.ALZHEIMER_DISEASE" Name="Condition that subject is having Alzheimer's disease">
				<Description>
					<TranslatedText xml:lang="en">Diagnosis of probable AD as defined by National Institute of Neurological and Communicative Disorders and Stroke (NINCDS) and the Alzheimer's Disease and Related Disorders Association (ADRDA) guidelines.</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.CNS_1_YEAR" Name="Consition CNS imaging (CT scan or MRI of brain) compatible with AD within past 1 year.">
				<Description>
					<TranslatedText xml:lang="en">CNS imaging compatible with AD within past 1 year</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.ECG_ACTIVITY_ENTRY" Name="Entry condition for ECG activity">
				<Description>
					<TranslatedText xml:lang="en">ECG activity may only be started when ...</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.ECG_ACTIVITY_EXIT" Name="Exit condition for ECG activity">
				<Description>
					<TranslatedText xml:lang="en">ECG activity may only be terminated when ...</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.FEVER" Name="Condition that subject has fever">
				<Description>
					<TranslatedText xml:lang="en">True when body temperature higher that 37.8C (100F)</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.FEVER_OLD" Name="Fever condition">
				<Description>
					<TranslatedText xml:lang="en">Subject has fever (&gt;38C)</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.HACHINSKI" Name="Condition Hachinski Ischemic Scale score of &lt;= 4">
				<Description>
					<TranslatedText xml:lang="en">Condition Hachinski Ischemic Scale score of less or equal than 4</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.HEADACHE" Name="Condition that subject suffers an headache">
				<Description>
					<TranslatedText xml:lang="en">True when subject suffers a headache</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.HIGH_FEVER" Name="Condition that subject has high fever (&gt;38.5C / 101.3F)">
				<Description>
					<TranslatedText xml:lang="en">True when subject has body temperature &gt;38.5C (101.3F)</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.INFCONSENT" Name="Informed Consent condition">
				<Description>
					<TranslatedText xml:lang="en">Informed Consent Granted</TranslatedText>
				</Description>
				<FormalExpression Context="xpath">Consented = 'true'</FormalExpression>
				<!--  'computer-executable' -->
			</ConditionDef>
			<ConditionDef OID="COND.MAX_AGE" Name="Maximum Age">
				<Description>
					<TranslatedText xml:lang="en">Under 65 years of age</TranslatedText>
				</Description>
				<FormalExpression Context="xpath">Age &lt; 65</FormalExpression>
			</ConditionDef>
			<ConditionDef OID="COND.MIN_AGE" Name="Minimum Age">
				<Description>
					<TranslatedText xml:lang="en">Age at least 50 years</TranslatedText>
				</Description>
				<FormalExpression Context="xpath">Age &gt;= 50</FormalExpression>
				<!--  'computer-executable' -->
			</ConditionDef>
			<ConditionDef OID="COND.MMSE_10-23" Name="Condition that subject has MMSE score of 10 to 23">
				<Description>
					<TranslatedText xml:lang="en">Condition that subject has MMSE score of 10 to 23</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.TREATMENT_EPOCH_ENTRY" Name="Entry condition for treatment epoch">
				<Description>
					<TranslatedText xml:lang="en">treatment epoch may only be started when ....</TranslatedText>
				</Description>
			</ConditionDef>
			<ConditionDef OID="COND.TREATMENT_EPOCH_EXIT" Name="Exit condition for treatment epoch">
				<Description>
					<TranslatedText xml:lang="en">treatment epoch may only be ended when ...</TranslatedText>
				</Description>
			</ConditionDef>
		</MetaDataVersion>
	</Study>
</ODM>
```