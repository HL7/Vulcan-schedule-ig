# Visit Windows

Further to the basic scenario presented previously there is a refinement required to the concept of windowing as interpreted in a clinical trial protocol.  The existing structure for specifying ranges over which a related action can occur uses the [Period](https://hl7.org/fhir/datatypes.html#Period) datatype; this has a _lower_ and _upper_ range and allows for the event to occur at any point between.

## Target Date
In Clinical Research it is often important to be more rigorous about when events can occur; this broadly comes under the heading of Visit Windows.  In conduct it is important to be able to specify when an encounter (and the related observations) should occur, but allow some flexibility to deal with logistical issues arising.  The flexibility can be asymmetrically arranged around a target date (eg no more than 2 days before and up to 4 days after the target date).  

These are often evaluated against a sites performance to get a 'site quality' metric by evaluating the actual dates for encounters/activities to the expected offsets.  

## Research
<img src="visit-window-research.png" alt="Visit Windows" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

## Requirements
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

## Extension
The issue with the default resources (__PlanDefinition__ and __ActivityDefinition__) is that they may have an _offsetDuration_ or _offsetRange_ attributes; they are mutually exclusive.  

The extension applied was to add `acceptableOffsetRange` to the __relatedAction__ element; for the case where there is no window (ie no flexibility to when an event can be done) 
```
* action[=]
  * relatedAction
    * offsetDuration = 21 'd'
    * extension[acceptableOffsetRange].valueRange.low = 19 'd'
    * extension[acceptableOffsetRange].valueRange.high = 24 'd'
```

​

​