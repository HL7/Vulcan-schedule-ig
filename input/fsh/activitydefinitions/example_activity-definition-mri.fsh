Instance: CNS-Screening-MRI-ActivityDefinition
InstanceOf: ActivityDefinition
Usage: #example
* status = #active
* experimental = false
* name = "MRI CNS Screening"
* title = "MRI CNS Screening (if no prior scan in 12 months)"
* description = "If patients have not had central nervous system (CNS) imaging in the previous 12 months, a computed tomography (CT) or magnetic resonance imaging (MRI) scan will be obtained"
* kind = #ServiceRequest
//* subjectCanonical = EvidenceVariable/CNS-Screening-Patient
* useContext[+]
  * code = #task
  * valueReference = Reference(H2Q-MC-LZZT-ResearchStudy)
* purpose = "To ensure that the CNS Imaging Protocol is followed"
* usage = "To ensure that the CNS Imaging Protocol is followed"
* topic = #assessment
* code
  * coding[+]
    * system = "http://snomed.info/sct"
    * code = #113091000
    * display =  "Magnetic resonance imaging (procedure)"
  * coding[+]
    * system = "http://www.ama-assn.org/go/cpt"
    * code = #2211355
    * display =  "Functional magnetic resonance imaging (MRI) of brain with entire neurofunctional testing administered by psychologist"
* intent = #plan
* priority = #routine
* participant[+]
  * type = #patient
  * role = #patient
* participant[+]
  * type = #practitionerrole
  * role = #307988006 "Medical technician"
  * function = #performer
* participant[+]
  * type = #device
// Need to reference the device or device type
* bodySite[+]
  * coding[+]
    * system = "http://snomed.info/sct"
    * code = #21483005
    * display =  "Structure of central nervous system (body structure)" 
// Need to show no evidence of Large vessel strokes, Small vessel ischemia
// * observationResultRequirement[+]
//   * reference = EvidenceVariable/CNS-Screening-Imaging-Result