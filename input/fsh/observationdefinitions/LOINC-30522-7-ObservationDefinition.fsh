Instance: LOINC-30522-7-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "CRP High sensitivity method [Mass/Vol]"
* title = "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* status = #active
* code.coding.version = "2.74"
* code.coding = $loinc#30522-7
* identifier.use = #official
* identifier.system = "https://library.cdisc.org/api"
* identifier.value = "C64548"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mg/L "mg/L"
* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7576-4 "Ser/Plas"
* method = $loinc#LP29325-5 "High sensitivity"