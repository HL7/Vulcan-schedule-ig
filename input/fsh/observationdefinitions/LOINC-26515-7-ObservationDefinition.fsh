Instance: LOINC-26515-7-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "Platelets (Bld) [#/Vol]"
* title = "Platelets [#/volume] in Blood"
* status = #active
* code.coding.version = "2.74"
* code.coding = $loinc#26515-7
* identifier.use = #official
* identifier.system = "https://library.cdisc.org/api"
* identifier.value = "C51951"
* permittedDataType = #Quantity
* permittedUnit = $ucum#10*3/uL "10*3/uL"
* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7057-5 "Bld"