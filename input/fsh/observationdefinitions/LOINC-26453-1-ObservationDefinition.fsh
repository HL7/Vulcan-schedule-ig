Instance: LOINC-26453-1-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "RBC (Bld) [#/Vol]"
* title = "Erythrocytes [#/volume] in Blood"
* status = #active
* code.coding.version = "2.74"
* code.coding = $loinc#26453-1
* identifier.use = #official
* identifier.system = "https://library.cdisc.org/api"
* identifier.value = "C51946"
* permittedDataType = #Quantity
* permittedUnit = $ucum#10*6/uL "10*6/uL"
* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7057-5 "Bld"