Instance: LOINC-2951-2-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "Sodium [Moles/Vol]"
* title = "Sodium [Moles/volume] in Serum or Plasma"
* status = #active
* code.coding.version = "2.74"
* code.coding = $loinc#2951-2
* identifier.use = #official
* identifier.system = "https://library.cdisc.org/api"
* identifier.value = "C64809"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mmol/L "mmol/L"
* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7576-4 "Ser/Plas"