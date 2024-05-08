Instance: CNS-Screening-CT-Scan-ActivityDefinition
InstanceOf: ActivityDefinition
Usage: #example
* status = #draft
* experimental = true
* name = "Computed Tomography CNS Screening"
* description = "If patients have not had central nervous system (CNS) imaging in the previous 12 months, a computed tomography (CT) or magnetic resonance imaging (MRI) scan will be obtained"
* kind = #ServiceRequest
//* subjectCanonical = EvidenceVariable/CNS-Screening-Patient
* useContext[+]
  * code = #task
  * valueReference = Reference(H2Q-MC-LZZT-ResearchStudy)
* purpose = "To ensure that the CNS Imaging Protocol is followed"
* usage = "To ensure that the CNS Imaging Protocol is followed"
* code
  * coding[+]
    * system = "http://snomed.info/sct"
    * code = #816077007
    * display = "Magnetic resonance imaging of brain"
  * coding[+]
    * system = "http://www.ama-assn.org/go/cpt"
    * code = #70450
    * display = "Computed tomography, head or brain; without contrast material"
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
