### Visit Windows

The basic SoA visit timings (that is, the subject study day/times on which required activities should be performed) describes the optimal schedule to meet a protocols research objectives. Practical considerations in the clinic make it sensible to offer investigational sites some flexibily to accomodate issues such as visits falling on weekends, or hospital services availability (e.g. for X-Rays), or other logistical issues. These permitted variances are usually specified in SoA in the form of "visit date/time +/- duration" (V3 +/ 1 day). The flexibility around a planned visit/encounter may be symmetric or asymmetrically around a target date (e.g., no more than 2 days before and up to 4 days after the target date).  The adherence of an investigational site to the target and permitted visit windows ensures compliance with the protocol timings, and may be used as a measure of 'site quality'.

The existing FHIR structure for specifying ranges over which a related action can occur uses the [Period](https://hl7.org/fhir/datatypes.html#Period) datatype; which has _lower_ and _upper_ attributes defining the Range of dates/times that an encounter or activities can occur.  This can be used to specify visit windows, and can 

### Target Date

Whilst the FHIR [Period] datatype is ideal for describing the Range over which planned activties or encounters may occur, it has no provision for associating it with the planned **target** time. (More specifically FHIR v4.3.0: R4B only permits one timing[x] element to be specified per PlanDefinition.action) 

### Research

The visit window use case described above is the most commonly found in SoAs, and will describe the timing details of each visit/encounter from a defined t(zero) visit (e.g. as in the Core Model SoA example). Other timing use cases may also be specified such as "Visit-N to occur 28days from Visit-0 and no earlier than 7d after Visit-(N-1). The diagram below shows the relationship between the SoA visit descriptions, the actual times activities occur and the visit window Range. Also illustrated are the 2 principal options for calculating the visit window period:  (a) from the **target timepoint** or (b) from the **reference timepoint**.    

<img src="visit-window-research.png" alt="Visit Windows" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

The diagram shows the relationship between an initial 'visit' (V1,left) and a subsequent 'visit' (V2, right) with permitted 'visit window' variances.  In the example a SoA would specify this case as V2 +/ 1 day.

* [S] 'Visit' period from a protocol SoAs identified, for example, as day 'V1'. Note the start and end time of the period are implied.  

* [DT] Date/time line with times when the subject might practically be expected to attend the clinic) 

* [P] Study participant 'visits' illustrating the acceptable 'visit' and 'visit window' periods. Full colour - Planned visits, Shaded - Permitted variance ('visit window') 

* [C] 'Window' timing and scheduling calculation options. Shown are 2 cases: (a) calculation relative to the visit, and (b) relative to the previous visit.  


### Requirements

In order to meet the objectives above, SoA PlanDefinition 'Visit Window' specifications are required to support the following study types and typical general windowing use cases​:

* Prospective Studies​
  * Determination of future timings and permitted timing variances (new study participants)​
  * Calculation of timings of ‘next’ activities (ongoing study participants)​
  * Determination of scheduling compliance (completed participants)​

* Retrospective​ Studies
  * Determination of cohort data collection compliance​
    
* Multiple Reference/Index Point possibilities​
  * Unambiguous **reference/index** time point(s) as an 'anchor point' for scheduling (t0)​
  * Multiple reference/index points for any one scheduled time and 'window'​
  
* Values defined as durations (default) and/or absolute values
  * Defined as durations ​
  * For any timing durations – (units Y, M, D, h, m, s..)​
  * Fully flexible ​
  * Unequal 'early', 'late', 'windows'

### Extension

As discussed above the issue with the FHIR PlanDefinition resources (__PlanDefinition__ and __ActivityDefinition__) is that they may have an _offsetDuration_ or _offsetRange_ and _timing[x]_ attributes that are mutually exclusive.  

The extension below has been used to add an `acceptableOffsetRange` option to the __relatedAction__ element to be able to define both a **target** value together with a window Range.


```
* action[=]
  * relatedAction
    * actionID = 'reference-action(visit)'
    * offsetDuration = 21 'd'
    * extension[acceptableOffsetRange].valueRange.low = 19 'd'
    * extension[acceptableOffsetRange].valueRange.high = 24 'd'
```


The FSH code snippet specifies that the **action** (visit) is to occur 21d following the **actionID** (reference-visit), and may occur as early as 19d **acceptableOffsetRange...low** or as late as 24d **acceptableOffsetRange...high**.  