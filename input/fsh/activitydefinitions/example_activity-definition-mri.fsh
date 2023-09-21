Instance: CNS-Screening-MRI-ActivityDefinition
InstanceOf: ActivityDefinition
Usage: #example
* status = #active
* experimental = true
* name = "MRI CNS Screening"
* title = "MRI CNS Screening (if no prior scan in 12 months)"
* description = "If patients have not had central nervous system (CNS) imaging in the previous 12 months, a computed tomography (CT) or magnetic resonance imaging (MRI) scan will be obtained"
* kind = #ServiceRequest
//* subjectCanonical = EvidenceVariable/CNS-Screening-Patient
* useContext[+]
  * code = #task
  * valueReference = ResearchStudySoa/H2Q-MC-LZZT-ResearchStudy
* purpose = "To ensure that the CNS Imaging Protocol is followed"
* usage = "To ensure that the CNS Imaging Protocol is followed"
* code
  * coding[+]
    * system = http://snomed.info/sct
    * code = 113091000
    * display =  "Magnetic resonance imaging (procedure)"
  * coding[+]
    * system = 
    * code = 2211355
    * display =  "Functional magnetic resonance imaging (MRI) of brain with entire neurofunctional testing administered by psychologist"
