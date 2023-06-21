Instance: LOINC-2075-0-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "Chloride [Moles/Vol]"
* title = "Chloride [Moles/volume] in Serum or Plasma"
* status = #active
* code.coding.version = "2.74"
* code.coding = $loinc#2075-0
* identifier.use = #official
* identifier.system = "https://library.cdisc.org/api"
* identifier.value = "C64495"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mmol/L "mmol/L"
* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7576-4 "Ser/Plas"