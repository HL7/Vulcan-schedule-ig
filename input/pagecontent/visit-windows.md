### Visit Windows

Further to the basic scenario presented previously, there is a refinement required to the concept of windowing as interpreted in a clinical trial protocol.  The existing structure for specifying ranges over which a related action can occur uses the [Period](https://hl7.org/fhir/datatypes.html#Period) datatype; which has a _lower_ and _upper_ attribute defining the Range of dates/times that an encounter and activities can occur. 

### Target Date

<<<<<<< HEAD
In Clinical Research it is often important to be more rigorous about when activities can occur; this broadly comes under the heading of Visit Windows.  In conduct, it is important to be able to specify when an encounter (and the related observations) should occur, but allow some flexibility to deal with logistical issues arising.  The flexibility can be asymmetrically arranged around a target date (e.g., no more than 2 days before and up to 4 days after the target date).  
=======
In Clinical Research it is often important to be more rigorous about when activities can occur; this broadly comes under the heading of Visit Windows.  In conduct, it is important to be able to specify when an encounter (and the related observations) should occur, but allow some flexibility to deal with logistical issues arising (such as a public holiday, device maintenance, study participant travel arrangements).  The flexibility can be asymmetrically arranged around a target date (e.g., no more than 2 days before and up to 4 days after the target date).  
>>>>>>> e0b5db43f8fe4424d57d9fa5b941bda1a1396067

The adherence of an investigational site to these windows often constitutes one measure of 'site quality'.

### Research

<img src="visit-window-research.png" alt="Visit Windows" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

The diagram shows the relationship between a initial 'visit' (V1,left) and a subsequent 'visit' (V2, right) with permitted 'visit window' variances.  In the example a SoA would specify this case as V2 +/ 1 day.

* [S] 'Visit' period from a protocol SoAs identified, for example, as day 'V1'. The start and end time of the period is implied.  
* [DT] Date/time line with example times that define explicitly the 'visit' period 
* [P] Study participant 'visits' illustrating times they are actually undergoing study activities. Full colour - Planned visits, Shaded - permitted variance ('visit window') 
* [C] 'Window' timing and scheduling calculation options. Shown are 2 cases: (a) calculation relative to the visit, and (b) relative to the previous visit.  


### Requirements

SoA 'Visit Window' specifications are required to support: ​
* Study types and typical general use cases​
  * Prospective​
    * Determination of future timings and permitted timing variances (new study participants)​
    * Calculation of timings of ‘next’ activities (ongoing study participants)​
    * Determination of scheduling compliance (completed participants)​
  * Retrospective​
    * Determination of cohort data collection compliance​
    
* Multiple Reference/Index Point possibilities​
  * Requires unambiguous reference/index point(s) as an 'anchor point' for scheduling (t0)​
  * Multiple reference/index points for any one scheduled time and 'window'​
  
* Values defined as durations (default) and/or absolute
  * Defined as durations ​
  * For any timing durations – (units Y, M, D, h, m, s..)​
  * Fully flexible ​
  * Unequal 'early', 'late', 'windows'

### Extension

The issue with the default resources (__PlanDefinition__ and __ActivityDefinition__) is that they may have an _offsetDuration_ or _offsetRange_ attributes; they are mutually exclusive.  

The extension applied was to add `acceptableOffsetRange` to the __relatedAction__ element; for the case where there is no window (i.e. no flexibility to when an event can be done) 
```
* action[=]
  * relatedAction
    * offsetDuration = 21 'd'
    * extension[acceptableOffsetRange].valueRange.low = 19 'd'
    * extension[acceptableOffsetRange].valueRange.high = 24 'd'
```