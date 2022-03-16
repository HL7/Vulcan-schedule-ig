# CDISC Operational Data Model (ODM)
This document is a light touch overview of the ODM - the CDISC repository for the ODM found [here](https://bitbucket.cdisc.org/projects/XML/repos/odm/browse).  We recommend checking out the official docs in that repository.

Note: the CDISC ODM is owned by [CDISC](https://cdisc.org).  A free CDISC website account is required to access the material - [create an account here](https://www.cdisc.org/user/registration).

## TLDR: Show me the schema!

The ODM Schema is available at: [ODM Schema](https://bitbucket.cdisc.org/projects/XML/repos/odm/browse/schema)


## What is the ODM
The CDISC Operational Data Model (ODM) is a XML-based model defined for the transport and archival of Clinical Trials Data; it is broadly made up of the following top-level elements
* Clinical Data - actual datapoints gathered on study participants
* Metadata - definitions used to capture and report the data collected
* Administrative Data - information regarding the collection of data (sites, personnel, etc)
* Reference Data - common data needed to interpret the collected data

Structures within the ODM have little semantic meaning; it is a format focused on the representation of planned and performed activities so captures relationships between elements moreso than the actual actual definition of the element itself; for example - there is no characterisation of a participant (in contrast to the Patient resource); there is a **SubjectData** element used to collect captured datapoints for an individual participant.  The **SubjectData** element includes attributes such as an OID as an identifier, but there is no information model that says the OID is an external identifier (eg Subject ID) or some other internal identifier (eg Primary Key from a Subjects table, as an example). 

Data collection is driven by Forms; forms group activities by type (ie all the Vital Signs observations for a single visit are usually grouped in a single form, irrespective of multiple planned timepoints for the elements).  Individual fields on a form are Items in ODM parlance and have associated metadata pertaining to the allowable content (eg datatype, length, constrained values or allowable units for a value)


## Structural Overview

Broadly the structure is as follows (for ODM 1.3.2):
* ODM
  * Study
    * MetaDataVersion
      * Protocol
        * StudyEvent
          * Form
            * ItemGroup
              * Item
  * ClinicalData
    * SubjectData
      * StudyEventData
        * FormData
          * ItemGroupData
            * ItemData

The specification is distributed as an XML document, and as such can be extended through the use of vendor namespaces; examples where this has been done include:
* Study Design Model - extensions to cover topics such as workflow, study design concepts
* Dataset-XML - extensions to use for transporting datasets

The implementation of the Study Metadata follows a DEF-REF pattern.  We define a type of element (eg Visit, Form, Field) and then reference it one or more times within the corresponding element; as an example:
```xml
<StudyEventDef OID="SE.SCREENING_VISIT" Name="Screening Visit (Visit 1)" Repeating="No" Type="Scheduled">
  <Description>
    <TranslatedText xml:lang="en">Screening Visit at day -14</TranslatedText>
  </Description>
  <FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
  <FormRef FormOID="F.DS_IC" Mandatory="Yes" OrderNumber="2"/>
  <FormRef FormOID="F.IE" Mandatory="Yes" OrderNumber="3"/>
  ...
</StudyEventDef>
...
<FormDef OID="F.DOV" Name="Date of Visit" Repeating="No">
	<Description>
			<TranslatedText xml:lang="en-US">Subject Visits consolidates information about the timing of subject visits that is otherwise spread over domains that include the visit variables (VISITNUM and possibly VISIT and/or VISITDY).</TranslatedText>
	</Description>
	<ItemGroupRef ItemGroupOID="IG.DOV" Mandatory="Yes" OrderNumber="1"/>
</FormDef>
```
The *OID* is the key here; it serves as the unique id (for a given --Def element type); the Reference to this --Def in the --Ref element is usually qualified with the Element type; eg

{%include def-ref.svg%}

*OID* are the best key to share data with clinical research systems.

## How the schedule of activities implemented in ODM 
The linking of Data Elements (outcomes of Observations) and Definitions is illustrated here:

{%include form-hierarchy.svg%}

The top-level element for the definitions for the Study are contained within the **MetaDataVersion** element

### MetaDataVersion
The **MetaDataVersion** is a set of study definition configuration; studies can have multiple versions of a study definition (sometimes in parallel); the version is identified by the *OID*

```xml
<MetaDataVersion Description="LZZT study design version 1" Name="LZZT study design version 1" OID="LZZT_1">
  <Protocol>
    <Description>
      <TranslatedText xml:lang="en">A randomized, double-blind, parallel (3 arm), placebo-controlled trial of 26 weeks duration.</TranslatedText>
    </Description>
...
</MetaDataVersion>
```

### Protocol
The **Protocol** lists the study events that can occur within a Study. 
```xml
<Protocol>
	<Description>
		<TranslatedText xml:lang="en">A randomized, double-blind, parallel (3 arm), placebo-controlled trial of 26 weeks duration.</TranslatedText>
	</Description>
	<StudyEventRef Mandatory="Yes" StudyEventOID="SE.SCREENING_VISIT"/>
	<StudyEventRef Mandatory="Yes" StudyEventOID="SE.AMB_ECG_VISIT"/>
...
```
This is mostly a container element.

### StudyEvent
The StudyEvent is the archetype for a Encounters or Study Visits.  
```xml
<StudyEventDef OID="SE.SCREENING_VISIT" Name="Screening Visit (Visit 1)" Repeating="No" Type="Scheduled">
  <Description>
    <TranslatedText xml:lang="en">Screening Visit at day -14</TranslatedText>
  </Description>
  <FormRef FormOID="F.DOV" Mandatory="Yes" OrderNumber="1"/>
  ...
</StudyEventDef>
...
```

### Form
The Form is an archetype for activities within a Visit.  


```xml
<FormDef OID="F.DM_1" Name="Demographics" Repeating="No">
  <Description>
    <TranslatedText xml:lang="en-US">Definition of the variables needed to support the collection of a subject's date of birth, gender, race and ethnicity.</TranslatedText>
  </Description>
  <ItemGroupRef ItemGroupOID="IG.DM_1" Mandatory="Yes" OrderNumber="1"/>
</FormDef>
<FormDef OID="F.IE" Name="Inclusion / Exclusion Criteria" Repeating="No">
  <Description>
    <TranslatedText xml:lang="en">Inclusion / Exclusion Criteria</TranslatedText>
  </Description>
  <ItemGroupRef ItemGroupOID="IG.IE_IN" OrderNumber="1" Mandatory="Yes"/>
  <ItemGroupRef ItemGroupOID="IG.IE_EX" OrderNumber="2" Mandatory="Yes"/>
</FormDef>
```
Form designs are often driven by other business considerations that are not necessariy aligned with data domains.  As such a single **Form** may match to multiple resources in the source system.

### ItemGroup
**ItemGroup** could be considered as primarily a stuctural concept; it links fields to the form.  Rather than attaching directly to the form, the **ItemGroup** is used to group fields within the form. In the current iteration it is primarily used to represent both repeating and non-repeating sets of fields in a CRF.  

An example of this would be a series of assessments done around a dosing event (eg Vitals Pre-dose, 1h Post-Dose, 2h Post-Dose, etc); the observations are repeated using an ItemGroup with the *Repeating* attribute set to `Yes`
```xml
<ItemGroupDef OID="IG.DM_1" Name="Demographics" SASDatasetName="DMSUBJ" Repeating="No">
  <ItemRef ItemOID="I.BRTHDAT" Mandatory="No" OrderNumber="1"/>
  <ItemRef ItemOID="I.SEX" Mandatory="Yes" OrderNumber="2"/>
  <ItemRef ItemOID="I.ETHNIC" Mandatory="Yes" OrderNumber="3"/>
  <ItemRef ItemOID="I.RACE" Mandatory="Yes" OrderNumber="4"/>
</ItemGroupDef>
```

### Item
The **Item** represents an individual data collection element on a Form.
```xml
<ItemDef OID="I.BRTHDAT" SASFieldName="BRTHDAT" Name="Birth Date" DataType="date">
  <Description>
    <TranslatedText xml:lang="en-US">A subject's date of birth. The complete Date of Birth is made from the temporal components of Birth Year, Birth Month, and Birth Day.</TranslatedText>
  </Description>
  <Question>
    <TranslatedText xml:lang="en-US">What is the subject's date of birth?</TranslatedText>
  </Question>
</ItemDef>
...
<ItemDef OID="I.SEX" SASFieldName="SEX" Name="Sex" DataType="text" Origin="CRF" Length="50">
  <Description>
    <TranslatedText xml:lang="en-US">Sex captures a subject's or non-subject's chromosomal characteristic.</TranslatedText>
  </Description>
  <Question>
    <TranslatedText xml:lang="en-US">What is the sex of the subject?</TranslatedText>
  </Question>
  <CodeListRef CodeListOID="CL.SEX"/>
</ItemDef>
...
<ItemDef OID="I.SUDOSE_BEER" DataType="float" Origin="CRF" Length="6" Name="Beer Amount" SASFieldName="SUDOSBER" SignificantDigits="2">
  <Description>
    <TranslatedText xml:lang="en-US">Beer consumption amount.</TranslatedText>
  </Description>
  <Question>
    <TranslatedText xml:lang="en-US">What was the amount of beer consumed?</TranslatedText>
  </Question>
</ItemDef>
```
As can be seen from the examples, the attributes on the Item element are aimed at the characterisation of the datapoints on the form - in traditional data capture the data is constrained according to the attributes, e.g. the field will be restricted to values matching the declared *DataType* and *Length*.  Data transfers to these fields will need to conform.

The **ItemDef** can have two data related child elements; the *CodeListRef* (zero or one) and *MeasurementUnitRef* (zero or more).  These are links to **CodeList** and **MeasurementUnit** elements.

### CodeList
A **CodeList** is used to constrain the permitted values for a field.  Each **CodeListItem** represents a permissible value for the field; these have a *CodedValue* and a *Decode*: the *CodedValue* is the value intended to be written to the backing store and the *Decode* is the representation of the *CodedValue* that is shown to the user. 
```xml
<CodeList OID="CL.SEX" Name="Sex" DataType="text">
  <CodeListItem CodedValue="F" OrderNumber="1">
    <Decode>
      <TranslatedText xml:lang="en-US">Female</TranslatedText>
    </Decode>
  </CodeListItem>
  <CodeListItem CodedValue="M" OrderNumber="2">
    <Decode>
      <TranslatedText xml:lang="en-US">Male</TranslatedText>
    </Decode>
  </CodeListItem>
</CodeList>
```

### MeasurementUnit
The **MeasurementUnit** is used to represent the possible units for a physical quantity with a Unit; the Unit can be reused across many elements.
```xml
<MeasurementUnit OID="mmHg" Name="mmHg">
  <Symbol>
    <TranslatedText xml:lang="en">mmHg</TranslatedText>
    <TranslatedText xml:lang="ja">mmHg</TranslatedText>
  </Symbol>
</MeasurementUnit>
```
The *Symbol* is used for the representation of the Unit; the *OID* is used as the persisted value.

