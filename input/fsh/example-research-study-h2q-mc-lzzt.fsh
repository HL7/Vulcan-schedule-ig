Alias: NCIT = http://ncimeta.nci.nih.gov
Alias: SCT = http://snomed.info/sct
Alias: PUBCHEM = https://pubchem.ncbi.nlm.nih.gov
Alias: MESH = https://www.nlm.nih.gov/mesh

Instance: SamGetWell
InstanceOf: Practitioner
Title: "Samuel Home, M.D."
Description: "Sample Practitioner: Samuel Home, M.D."
Usage: #example
* identifier[+]
  * value = "ABC1234"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#UPIN
  * use = #official
* active = true
* name[+]
  * use = #usual
  * family = "Home"
  * given = "Samuel"
  * prefix = "Dr"
  * suffix[0] = "M.D."
* gender = #male
* telecom[+]
  * value = "555-123-5467"
  * system = #phone
  * use = #work

Instance: EliLillyAndCompany
InstanceOf: Organization
Title: "Eli Lilly and Company"
Description: "Sample Organization: Eli Lilly and Company"
Usage: #example
* identifier[+]
  * value = "Eli Lilly and Company Inc"
  * use = #official
* contact[+]
  * purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN
  * telecom[+]
    * system = #url
    * value = "https://www.lilly.com"
* type = http://terminology.hl7.org/CodeSystem/organization-type#crs


Instance: H2Q-MC-LZZT-ResearchStudy
InstanceOf: ResearchStudySoa
Title: "H2Q-MC-LZZT Research Study"
Usage: #example
* identifier[+]
  * use = #usual
  * value = "H2Q-MC-LZZT"
* identifier[+]
  * use = #official
  * value = "NCTA12313212"
  * system = "https://clinicaltrials.gov/show/"
* identifier[+]
  * value = PUBCHEM#60809
* title = "Safety and Efficacy of the Xanomeline Transdermal Therapeutic System (TTS) in Patients with Mild to Moderate Alzheimer’s Disease"
* protocol[StudyProtocolSoa] = Reference(PlanDefinition/H2Q-MC-LZZT-ProtocolDesign)
* status = #completed
* primaryPurposeType = http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type#treatment
* phase = http://terminology.hl7.org/CodeSystem/research-study-phase#phase-3
* category[0] = NCIT#C98388 "Interventional Study"
* category[1] = NCIT#C15417 "Randomized Clinical Trial"
* category[2] = NCIT#C15228 "Double Blind Study"
* category[3] = NCIT#C49648 "Placebo Control"
* category[4] = NCIT#C82639 "Parallel Study"
* focus[0] = NCIT#C152926 "Xanomeline"
* focus[1] = NCIT#C149996 "Transdermal Patch Dosage Form"
* focus[2].text = "PUBMED#9109749 Effects of xanomeline, a selective muscarinic receptor agonist, on cognitive function and behavioral symptoms in Alzheimer disease"
* condition[0] = SCT#26929004 "Alzheimer's Disease (Disorder)"
* contact[+]
  * name = "Bob James, Ph.D."
  * telecom
    * value = "555-555-5555"
    * system = #phone
    * use = #work
* relatedArtifact[+]
  * type = #documentation
  * label = "Arch Neurol.1997;54(4):465-473"
  * display = "Arch Neurol.1997;54(4):465-473"
  * citation = "Bodick NC, Offen WW, Levey AI, et al. Effects of xanomeline, a selective muscarinic receptor agonist, on cognitive function and behavioral symptoms in Alzheimer disease. Arch Neurol. 1997;54(4):465-473. doi:10.1001/archneur.1997.00550160091022"
* relatedArtifact[+]
  * type = #documentation
  * label = "Protocol H2Q-MC-LZZT(c)"
  * url = "https://clinicaltrials.gov/show/NCTA12313212/Lzzt_protocol_redacted.pdf"
// keywords
* keyword[+]
  * coding[+] = MESH#D018721
  * text = "Selective M1 muscarinic agonists"
* keyword[+]
  * coding[+] = MESH#D000544
  * text = "Alzheimer Disease"
* keyword[+]
  * coding[+] = MESH#D018721
  * text = "Selective M1 muscarinic agonists"
* description = """## Xanomeline (LY246708)
### Protocol H2Q-MC-LZZT(c) 
Safety and Efficacy of the Xanomeline Transdermal Therapeutic System (TTS) in Patients with Mild to Moderate Alzheimer’s Disease
"""
* principalInvestigator[Practitioner] = Reference(Practitioner/SamGetWell)
* reasonStopped = http://terminology.hl7.org/CodeSystem/research-study-reason-stopped#accrual-goal-met 
* arm[+]
  * name = "Placebo"
  * type = NCIT#C49648
  * description = "Placebo arm"
* arm[+]
  * name = "Low-dose xanomeline arm"
  * type = NCIT#C174266
  * description = "Low-dose xanomeline arm (50 cm2 TTS Formulation E, 54 mg xanomeline)"
* arm[+]
  * name = "High-dose xanomeline arm"
  * type = NCIT#C174266
  * description = "High-dose xanomeline arm (75 cm2 TTS Formulation E, 81 mg xanomeline)"
* objective[+]
  * name = "To determine if there is a statistically significant relationship (overall Type 1 error rate, α=.05) between the change in both ADAS-Cog and CIBIC scores, and drug dose (0, 50 cm2 [54 mg], and 75 cm2 [81 mg])."
  * type = http://terminology.hl7.org/CodeSystem/research-study-objective-type#primary
* objective[+]
  * name = "To document the safety profile of the xanomeline TTS."
  * type = http://terminology.hl7.org/CodeSystem/research-study-objective-type#primary
* objective[+]
  * name = "To assess the dose-dependent improvement in behavior. Improved scores on the Revised Neuropsychiatric Inventory (NPI-X) will indicate improvement in these areas."
  * type = http://terminology.hl7.org/CodeSystem/research-study-objective-type#secondary
* objective[+]
  * name = "To assess the dose-dependent improvements in activities of daily living. Improved scores on the Disability Assessment for Dementia (DAD) will indicate improvement in these areas."
  * type = http://terminology.hl7.org/CodeSystem/research-study-objective-type#secondary
* objective[+]
  * name = "To assess the dose-dependent improvements in an extended assessment of cognition that integrates attention/concentration tasks. The Alzheimer’s Disease Assessment Scale-14 item Cognitive Subscale, hereafter referred to as ADAS-Cog (14), will be used for this assessment."
  * type = http://terminology.hl7.org/CodeSystem/research-study-objective-type#secondary
* objective[+]
  * name = "To assess the treatment response as a function of Apo E genotype."
  * type = http://terminology.hl7.org/CodeSystem/research-study-objective-type#secondary
// * inclusion/exclusion criteria
* sponsor[Organization] = Reference(Organization/EliLillyAndCompany)
