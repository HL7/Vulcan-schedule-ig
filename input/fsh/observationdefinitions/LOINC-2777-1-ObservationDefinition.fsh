Instance: LOINC-2777-1-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "Phosphate [Mass/Vol]"
* title = "Phosphate [Mass/volume] in Serum or Plasma"
* status = #active
* code.coding.version = "2.74"
* code.coding = $loinc#2777-1
* identifier.use = #official
* identifier.system = "https://library.cdisc.org/api"
* identifier.value = "C64857"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mg/dL "mg/dL"
* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7576-4 "Ser/Plas"