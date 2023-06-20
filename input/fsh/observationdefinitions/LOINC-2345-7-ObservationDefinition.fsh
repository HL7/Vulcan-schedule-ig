Instance: LOINC-2345-7-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "Glucose [Mass/Vol]"
* title = "Glucose [Mass/volume] in Serum or Plasma"
* status = #active
* code.coding.version = "2.74"
* code.coding = $loinc#2345-7
* identifier.use = #official
* identifier.system = "https://library.cdisc.org/api"
* identifier.value = "C105585"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mg/dL "mg/dL"
* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7576-4 "Ser/Plas"