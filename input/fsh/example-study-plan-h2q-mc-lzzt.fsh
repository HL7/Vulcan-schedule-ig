Instance: H2Q-MC-LZZT-ProtocolDesign
InstanceOf: StudyProtocolSoa
Description: "H2Q-MC-LZZT-Protocol Schedule of Activities"
Usage: #example
* status = #active
* title = "H2Q-MC-LZZT Protocol Schedule of Activities"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* date = "2022-11-02"
* version = "LZZT_1"
* purpose = "The purpose of this PlanDefinition is to illustrate the planned study encounters."
* identifier[+]
  * value = "H2Q-MC-LZZT-ProtocolDesign-1"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * use = #usual
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-1"
  * title = "Visit-1"
  * description = "Planned Visit [Visit-1]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #before
    * offsetDuration = 13 'd'
    * extension[acceptableOffsetRange].valueRange.low = 12 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 15 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-2"
  * title = "Visit-2"
  * description = "Planned Visit [Visit-2]"
  * id = "H2Q-MC-LZZT-Study-Visit-2"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #before
    * offsetDuration = 1 'd'
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-3"
  * id = "Index-Activity-Event"
  * title = "Visit-3"
  * description = "Planned Visit [Visit-3]"
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-4"
  * title = "Visit-4"
  * description = "Planned Visit [Visit-4]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 14 'd'
    * extension[acceptableOffsetRange].valueRange.low = 12 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 15 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-5"
  * title = "Visit-5"
  * description = "Planned Visit [Visit-5]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 28 'd'
    * extension[acceptableOffsetRange].valueRange.low = 26 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 30 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-6"
  * title = "Visit-6"
  * description = "Planned Visit [Visit-6]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 35 'd'
    * extension[acceptableOffsetRange].valueRange.low = 33 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 37 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-7"
  * title = "Visit-7"
  * description = "Planned Visit [Visit-7]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 42 'd'
    * extension[acceptableOffsetRange].valueRange.low = 40 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 44 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-8"
  * id = "H2Q-MC-LZZT-Study-Visit-8"
  * title = "Visit-8"
  * description = "Planned Visit [Visit-8]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 56 'd'
    * extension[acceptableOffsetRange].valueRange.low = 54 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 58 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-8T"
  * title = "Visit-8.1"
  * description = "Telephone Contact [Post Visit-8]"
  * relatedAction[+] 
    * actionId = "H2Q-MC-LZZT-Study-Visit-8"
    * relationship = #after
    * offsetDuration = 14 'd'
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-9"
  * id = "H2Q-MC-LZZT-Study-Visit-9"
  * title = "Visit-9"
  * description = "Planned Visit [Visit-9]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 84 'd'
    * extension[acceptableOffsetRange].valueRange.low = 82 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 86 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-9T"
  * title = "Visit-9.1"
  * description = "Telephone Contact Visit [Post Visit-9]"
  * relatedAction[+] 
    * actionId = "H2Q-MC-LZZT-Study-Visit-9"
    * relationship = #after
    * offsetDuration = 14 'd'
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-10"
  * id = "H2Q-MC-LZZT-Study-Visit-10"
  * title = "Visit-10"
  * description = "Planned Visit [Visit-10]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 112 'd'
    * extension[acceptableOffsetRange].valueRange.low = 110 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 114 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-10T"
  * title = "Visit-10.1"
  * description = "Telephone Contact Visit [Post Visit-10]"
  * relatedAction[+] 
    * actionId = "H2Q-MC-LZZT-Study-Visit-10"
    * relationship = #after
    * offsetDuration = 14 'd'
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-11"
  * id = "H2Q-MC-LZZT-Study-Visit-11"
  * title = "Visit-11"
  * description = "Planned Visit [Visit-11]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 140 'd'
    * extension[acceptableOffsetRange].valueRange.low = 138 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 142 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-11T"
  * title = "Visit-11.1"
  * description = "Telephone Contact Visit [Post Visit-11]"
  * relatedAction[+] 
    * actionId = "H2Q-MC-LZZT-Study-Visit-11"
    * relationship = #after
    * offsetDuration = 14 'd'
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-12"
  * title = "Visit-12"
  * description = "Planned Visit [Visit-12]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 168 'd'
    * extension[acceptableOffsetRange].valueRange.low = 166 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 170 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-13"
  * title = "Visit-13"
  * description = "Planned Visit [Visit-13]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetDuration = 182 'd'
    * extension[acceptableOffsetRange].valueRange.low = 180 'd'    
    * extension[acceptableOffsetRange].valueRange.high = 184 'd'    
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-ET-14"
  * title = "ET-14"
  * description = "Planned Visit [ET-14]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-RT-15"
  * title = "RT-15"
  * description = "Planned Visit [RT-15]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after

