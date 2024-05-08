Instance: Example-Study-Visit-PT
InstanceOf: StudyVisitSoa
Title: "Visit-1"
Description: "Planned Visit [Visit-1]"
Usage: #example
* status = #active
* title = "Example Conditional Activity - Pregnancy Test"
* action[+]
  * title = "Pregnancy Test"
  * definitionUri = "ActivityDefinition/Pregnancy-Test"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Pregnancy test for Biological Females"
      * language = #text/fhirpath
// Reproductive status
// So, it could be based on age range (which may be conditional on geographic, socialogical or other factors), 
// or have an extension to Patient for reproductiveStatus
// Procedure -> ordering a test
// Observation -> current pregnancy status
// Medication -> prescribed Prophylactic measures 
      * expression = "Patient.gender='female'"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Reproductive Status - Is this something that needs to exist?"
      * language = #text/fhirpath
      * expression = "Patient.gender='female'"
