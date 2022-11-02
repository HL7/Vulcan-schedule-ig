Instance: H2Q-MC-LZZT-ProtocolDesign
InstanceOf: PlanDefinition
Description: "H2Q-MC-LZZT-Protocol Schedule of Activities"
Usage: #example
* status = #active
* version = "LZZT_1"
* identifier[+]
  * value = "H2Q-MC-LZZT-ProtocolDesign-1"
  * type = #PLAC
  * use = #usual
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-1"
  * title = "Visit-1"
  * description = "Planned Visit [Visit-1]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #before
    * offsetRange
      * low
        * value = 12
        * code = #d
      * high
        * value = 15
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-2"
  * title = "Visit-2"
  * description = "Planned Visit [Visit-2]"
  * id = "H2Q-MC-LZZT-Study-Visit-2"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #before
    * offsetRange
      * low
        * value = 1
        * code = #d
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
    * offsetRange
      * low
        * value = 12
        * code = #d
      * high
        * value = 15
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-5"
  * title = "Visit-5"
  * description = "Planned Visit [Visit-5]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 26
        * code = #d
      * high
        * value = 30
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-6"
  * title = "Visit-6"
  * description = "Planned Visit [Visit-6]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 33
        * code = #d
      * high
        * value = 37
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-7"
  * title = "Visit-7"
  * description = "Planned Visit [Visit-7]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 40
        * code = #d
      * high
        * value = 44
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-8"
  * title = "Visit-8"
  * description = "Planned Visit [Visit-8]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 54
        * code = #d
      * high
        * value = 58
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-8T"
  * title = "Visit-8.1"
  * description = "Telephone Contact [Post Visit-8]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 68
        * code = #d
      * high
        * value = 72
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-9"
  * title = "Visit-9"
  * description = "Planned Visit [Visit-9]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 82
        * code = #d
      * high
        * value = 86
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-9T"
  * title = "Visit-9.1"
  * description = "Telephone Contact Visit [Post Visit-9]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 96
        * code = #d
      * high
        * value = 100
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-10"
  * title = "Visit-10"
  * description = "Planned Visit [Visit-10]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 110
        * code = #d
      * high
        * value = 112
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-10T"
  * title = "Visit-10.1"
  * description = "Telephone Contact Visit [Post Visit-10]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 124
        * code = #d
      * high
        * value = 126
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-11"
  * title = "Visit-11"
  * description = "Planned Visit [Visit-11]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 138
        * code = #d
      * high
        * value = 142
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-11T"
  * title = "Visit-11.1"
  * description = "Telephone Contact Visit [Post Visit-11]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 152
        * code = #d
      * high
        * value = 156
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-12"
  * title = "Visit-12"
  * description = "Planned Visit [Visit-12]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 166
        * code = #d
      * high
        * value = 170
        * code = #d
* action[+]
  * definitionUri = "PlanDefinition/H2Q-MC-LZZT-Study-Visit-13"
  * title = "Visit-13"
  * description = "Planned Visit [Visit-13]"
  * relatedAction[+] 
    * actionId = "Index-Activity-Event"
    * relationship = #after
    * offsetRange
      * low
        * value = 180
        * code = #d
      * high
        * value = 184
        * code = #d
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

