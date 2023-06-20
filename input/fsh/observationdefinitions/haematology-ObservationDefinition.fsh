Instance: Haematology-ObservationDefinition
InstanceOf: ObservationDefinition
Usage: #example
* name = "Haematology"
* title = "Haematology"
* status = #active

* code.coding = $snomed#165369002 "Hematology"

* specimen.identifier.use = #official
* specimen.identifier.type = $loinc#LP7057-5 "Bld"

* component[0]
* component[=].code.coding = $loinc#20570-8
* component[=].code.coding.version = "2.74"
* component[=].permittedDataType = #Quantity
* component[=].permittedUnit = $ucum#% "%"
* component[+]
* component[=].code.coding = $loinc#26453-1
* component[=].code.coding.version = "2.74"
* component[=].permittedDataType = #Quantity
* component[=].permittedUnit = $ucum#10*6/uL "10*6/uL"
* component[+]
* component[=].code.coding = $loinc#718-7
* component[=].code.coding.version = "2.74"
* component[=].permittedDataType = #Quantity
* component[=].permittedUnit = $ucum#g/dL "g/dL"
* component[+]
* component[=].code.coding = $loinc#26515-7
* component[=].code.coding.version = "2.74"
* component[=].permittedDataType = #Quantity
* component[=].permittedUnit = $ucum#10*3/uL "10*3/uL"
* component[+]
* component[=].code.coding = $loinc#28542-9
* component[=].code.coding.version = "2.74"
* component[=].permittedDataType = #Quantity
* component[=].permittedUnit = $ucum#fL "fL"
* component[+]
* component[=].code.coding = $loinc#30385-9
* component[=].code.coding.version = "2.74"
* component[=].permittedDataType = #Quantity
* component[=].permittedUnit = $ucum#% "%"
* component[+]
* component[=].code.coding = $loinc#30428-7
* component[=].code.coding.version = "2.74"
* component[=].permittedDataType = #Quantity
* component[=].permittedUnit = $ucum#fL' "fL"