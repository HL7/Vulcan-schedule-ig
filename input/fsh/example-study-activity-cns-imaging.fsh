Instance: H2Q-MC-LZZT-CNS-Imaging
InstanceOf: PlanDefinition
Usage: #example

* action[+]
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-CNS-Imaging-Request-CT"
  * condition[+]
    * kind = "applicability"
    * expression = "ImagingStudy?subject=Patient/{{Patient.id}}&amp;status=available&amp;modality=http://snomed.info/sct|816077007"
* action[+]
  * definitionUri = "ActivityDefinition/H2Q-MC-LZZT-CNS-Imaging-Request-CT"
