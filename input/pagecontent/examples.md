### H2Q-MC-LZZT Research Study

[H2Q-MC-LZZT](ResearchStudy-H2Q-MC-LZZT-ResearchStudy.html) was a study to evaluate the Safety and Efficacy of the Xanomeline Transdermal Therapeutic System (TTS) in Patients with Mild to Moderate Alzheimer’s Disease.  It was carried out by [Eli-Lilly and Company](Organization-EliLillyAndCompany.html).  It is a commonly used sample study that features regularly in Clinical Research data modelling exercises so is advantageous for providing realistic anonymised datasets.

#### Example Resources
* [ResearchStudySoa/H2Q-MC-LZZT-ResearchStudy](ResearchStudy-H2Q-MC-LZZT-ResearchStudy.html)
* [Organization/EliLillyAndCompany](Organization-EliLillyAndCompany.html)

### H2Q-MC-LZZT Study Plan

Patients with probable mild to moderate AD will be studied in a randomized, double-blind, parallel (3 arm), placebo-controlled trial of 26 weeks duration. The study will be conducted on an outpatient basis. Approximately 300 patients will be enrolled.

Following informed consent, patients will be screened at [Visit 1](PlanDefinition-H2Q-MC-LZZT-Study-Visit-1.html). At screening, patients will undergo complete neuropsychiatric assessment, psychometric testing, and general medical assessment (including medical history, pre-existing conditions, physical examination). In addition, [vital signs](ActivityDefinition-H2Q-MC-LZZT-Vital-Signs-Temperature.html), temperature, medication history, electrocardiogram (ECG), chest x-ray, and safety laboratories will be obtained. During the screening visit, patients will wear a placebo TTS to determine willingness and ability to comply with transdermal administration procedures. If patients have not had central nervous system (CNS) imaging in the previous 12 months, a computed tomography (CT) or magnetic resonance imaging (MRI) scan will be obtained. If patients are insulin dependent diabetics, a hemoglobin A1c will be obtained. Screening exams and procedures may be performed after [Visit 1](PlanDefinition-H2Q-MC-LZZT-Study-Visit-1.html); however, their results must be completed and available prior to randomization. The screening process should occur within 2 weeks of randomization (Visit 3 of the study).

Patients who meet enrollment criteria from [Visit 1](PlanDefinition-H2Q-MC-LZZT-Study-Visit-1.html) will proceed to Visit 2 at which time they will undergo a 24-hour Ambulatory ECG. At [Visit 3](PlanDefinition-H2Q-MC-LZZT-Study-Visit-3.html) the Ambulatory ECG will be removed and patients will be randomized to 1 of 3 treatment arms. The treatment arms will include a placebo arm, a low-dose xanomeline arm (50 cm2 TTS Formulation E, 54 mg xanomeline), and a high-dose xanomeline arm (75 cm2 TTS Formulation E, 81 mg xanomeline). All patients receiving xanomeline will be started at 50 cm2 TTS Formulation E. For the first 8 weeks of treatment, patients will be assessed at clinic visits every 2 weeks and, thereafter, at clinic visits every 4 weeks. Patients who discontinue prior to Visit 12 (Week 24) will be brought back for full efficacy assessments at or near to 24 weeks, whenever possible.

A Data Safety Monitoring Board (DSMB), chaired by an external cardiologist, will meet after 75, 150, 225, and 300 patients have completed 1 month of treatment. The DSMB will review cardiovascular findings to decide if discontinuation of the study or any treatment arm is appropriate, if additional cardiovascular monitoring is required, if further cardiovascular monitoring is unnecessary, or if adjustment of dose within a treatment arm (or arms) is appropriate.

At Visits [3](PlanDefinition-H2Q-MC-LZZT-Study-Visit-3.html), 8, 10, and 12, efficacy instruments (ADAS-Cog, CIBIC+, and DAD) will be administered. NPI-X will be administered at 2-week intervals either at clinic visits or via a telephone interview. Vital signs, temperature, and an assessment of adverse events will be obtained at all clinic visits. An electrocardiogram (ECG), and chemistry/hematology safety labs will be obtained at Visits 4, 5, 7, 8, 9, 10, 11, 12, and 13. Urinalysis will be done at Visits 4, 9, and 12. Use of concomitant medications will be collected at Visits [3](PlanDefinition-H2Q-MC-LZZT-Study-Visit-3.html), 4, 5, 7, 8, 9, 10, 11, 12, and 13. Plasma levels of xanomeline and metabolites will be obtained at Visits [3](PlanDefinition-H2Q-MC-LZZT-Study-Visit-3.html), 4, 5, 7, 9, and 11. At Visits [3](PlanDefinition-H2Q-MC-LZZT-Study-Visit-3.html), 4, 5, 7, 8, 9, 10, 11, and 12, medications will be dispensed to the patients.

Visits [1](PlanDefinition-H2Q-MC-LZZT-Study-Visit-1.html) through 13 should be scheduled relative to Visit [3](PlanDefinition-H2Q-MC-LZZT-Study-Visit-3.html) (Week 0 - randomization). Visits 4, 5, 7, 8, and 13 should occur within 3 days of their scheduled date. Visits 9, 10, 11, and 12 should occur within 4 days of their scheduled date. At Visit 13 patients will be given the option to enter the open-label extension phase (see Section 3.10.3. Study Extensions).

#### Example Resources 
* Study Plan - [StudyProtocolSoa/H2Q-MC-LZZT-ProtocolDesign](PlanDefinition-H2Q-MC-LZZT-ProtocolDesign.html)
* Visit 1 - [StudyVisitSoa/H2Q-MC-LZZT-Study-Visit-1](PlanDefinition-H2Q-MC-LZZT-Study-Visit-1.html)
* Visit 3 - [StudyVisitSoa/H2Q-MC-LZZT-Study-Visit-3](PlanDefinition-H2Q-MC-LZZT-Study-Visit-3.html)
* Vital Signs/Temperature - [StudyActivitySoa/H2Q-MC-LZZT-Vital-Signs-Temperature](ActivityDefinition-H2Q-MC-LZZT-Vital-Signs-Temperature.html)

### Branched multi-path study design

This example illustrates a two-arm randomised study design where patients follow divergent visit schedules following randomization. It demonstrates how an asymmetric protocol — where the two arms have a different number of treatment encounters — can be represented using the [dynamic visit plan](dynamic-visit-plans.html#use-case-2---branched-multi-path-study-design) approach.

Patients are first screened between Day -14 and Day -1. During the Screening visit, Informed Consent is obtained and Eligibility Assessment, Demographics, and Medical History are collected. A Physical Exam, Vital Signs, Hematology, Chemistry Panel, Adverse Events, and Concomitant Medications are also recorded at this visit.

Eligible patients return for a Baseline visit on Day 0, at which point Randomization is performed. Baseline procedures include Physical Exam, Vital Signs, Hematology, Chemistry Panel, Adverse Events, and Concomitant Medications. At Baseline, patients are assigned to one of two treatment arms:

- **Arm A** patients attend visits on Day 1 (±1d), Day 2 (±1d), Day 7 (±1d), and Day 15 (±2d). Drug A is administered on both Day 1 and Day 2. The additional Day 2 visit — which includes Physical Exam, Vital Signs, Hematology, Chemistry Panel, Adverse Events, and Concomitant Medications — is exclusive to Arm A.

- **Arm B** patients attend visits on Day 1 (±1d), Day 7 (±1d), and Day 15 (±2d). Drug B is administered on Day 1 only. There is no Day 2 visit for Arm B patients.

Both arms converge at an End of Study (EOS) visit on Day 21 (±3d), at which Study Completion is recorded alongside the standard safety and monitoring procedures.

The decision made at randomization is applied once; once a patient is following the path for their assigned arm, the decision support system precludes the other arm's path while retaining any common exit routes (e.g. early termination).

#### Example Resources
* Study Plan - [PlanDefinition/dynamic-visit-schedule-multiple-paths](PlanDefinition-dynamic-visit-schedule-multiple-paths.html)


### Treatment Cycles

This example illustrates an oncology study that uses repeating treatment cycles with alternating visit patterns, demonstrating the [treatment cycles](dynamic-visit-plans.html#use-case-3---treatment-cycles) approach for representing episodic, re-entrant study schedules.

Patients are screened between Day -28 and Day -1. At the Screening visit, Informed Consent is obtained and Demographics, Medical History, and Disease Response are collected. A full baseline safety and monitoring panel is also performed, comprising Physical Exam, Vital Signs, Height/Weight, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Coagulation, and Biomarkers. Baseline tumour imaging (CT/MRI Scan and Chest X-ray) and Quality of Life assessment are obtained, along with Adverse Events and Concomitant Medications.

Eligible patients return for a Randomization visit on Day 0. Physical Exam, Vital Signs, Performance Status, Liver Function Tests, Hematology, Chemistry Panel, Adverse Events, and Concomitant Medications are collected at this visit.

Following randomization, patients enter a series of repeating 28-day treatment cycles. The visit pattern differs systematically between odd-numbered cycles (Cycle 1, 3, 5, …) and even-numbered cycles (Cycle 2, 4, 6, …):

**Odd Cycles** (e.g., Cycle 1) contain three visits:
- **Cycle Day 1** (±2d): Study Drug Administration and Pre-medication are given. Physical Exam, Vital Signs, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Coagulation, Biomarkers, Quality of Life, Adverse Events, and Concomitant Medications are collected.
- **Cycle Day 14** (±2d): Physical Exam, Vital Signs, Hematology, Chemistry Panel, Liver Function Tests, Adverse Events, and Concomitant Medications.
- **Cycle Day 28** (±2d): Physical Exam, Vital Signs, Height/Weight, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Coagulation, Biomarkers, Quality of Life, Adverse Events, and Concomitant Medications. This visit closes the odd cycle and the patient transitions into the next (even) cycle.

**Even Cycles** (e.g., Cycle 2) contain five visits, providing more intensive monitoring:
- **Cycle Day 1** (±2d): Study Drug Administration and Pre-medication are given. Physical Exam, Vital Signs, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Coagulation, Biomarkers, Adverse Events, and Concomitant Medications.
- **Cycle Day 7** (±2d): Vital Signs, Hematology, Chemistry Panel, Liver Function Tests, Adverse Events, and Concomitant Medications.
- **Cycle Day 14** (±2d): Physical Exam, Vital Signs, Hematology, Chemistry Panel, Liver Function Tests, Adverse Events, and Concomitant Medications.
- **Cycle Day 21** (±2d): Physical Exam, Vital Signs, Hematology, Chemistry Panel, Liver Function Tests, Adverse Events, and Concomitant Medications.
- **Cycle Day 28** (±2d): Physical Exam, Vital Signs, Height/Weight, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Coagulation, Biomarkers, CT/MRI Scan, Chest X-ray, Disease Response, Quality of Life, Adverse Events, and Concomitant Medications. Disease Response is evaluated against standard oncology criteria (e.g., RECIST) at this visit. The outcome of this Disease Response assessment drives the decision to continue into the next cycle or to transition the patient to End of Treatment.

The odd/even alternation repeats until the Disease Response assessment at the end of an even cycle, or other safety considerations, triggers transition out of the treatment cycle phase.

At **End of Treatment** (approximately 30 days after the last cycle dose, ±7d), a comprehensive assessment is performed: Physical Exam, Vital Signs, Height/Weight, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Coagulation, Biomarkers, CT/MRI Scan, Disease Response, Quality of Life, Adverse Events, and Concomitant Medications.

Patients then enter a two-visit follow-up phase:
- **Follow-up 1 (FU1)** (~Day +90, ±14d): Physical Exam, Vital Signs, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Biomarkers, CT/MRI Scan, Disease Response, Quality of Life, Adverse Events, and Concomitant Medications.
- **Follow-up 2 (FU2)** (~Day +180, ±14d): Physical Exam, Vital Signs, Performance Status, Hematology, Chemistry Panel, Liver Function Tests, Biomarkers, CT/MRI Scan, Chest X-ray, Disease Response, Quality of Life, Adverse Events, and Concomitant Medications.

#### Example Resources
* Study Plan - [PlanDefinition/dynamic-visit-schedules-cycles-scheduled-interactions](PlanDefinition-dynamic-visit-schedules-cycles-scheduled-interactions.html)

