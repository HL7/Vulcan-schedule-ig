### Version = 2.0.0-ballot

#### New Features and Model Updates:
* Expanded dynamic Schedule of Activities coverage based on implementer and ballot feedback
  * Added and clarified use cases for conditional activities
  * Expanded dynamic visit plan guidance for branching and complex transitions
  * Expanded unscheduled visit guidance
* Added and documented extension-driven dynamic semantics
  * [soaTransition](StructureDefinition-soaTransition.html)
  * [soaTimepoint](StructureDefinition-soaTimepoint.html)
* Updated profile requirements in [research.fsh](artifacts.html) so `version` is now Must Support for relevant PlanDefinition-based profiles

#### Documentation and Navigation Improvements:
* Added a new [USDM Alignment](usdm-alignment.html) page with mapping methodology from CDISC USDM to Vulcan SoA/FHIR artifacts
* Removed legacy ODM narrative page and replaced navigation references with USDM alignment content
* Updated [Home](index.html) and dynamic pages to improve rationale, references, and terminology consistency
* Simplified [Core Schedule of Activities Model](basic-structure.html) narrative and corrected example naming/content
* Updated selected narrative text in [Examples](examples.html) and [Investigational Product Administration](ip-administration.html)

#### Technical and Packaging Updates:
* Updated IG page/menu configuration and specification metadata to include USDM alignment and deprecate ODM content
* Corrected Requirements canonical URL in [Requirements-fromNarrative.json](Requirements-fromNarrative.json)
* Updated build and publisher helper scripts (Windows and shell variants) to improve argument handling, defaults, and offline/build behavior

#### Breaking Changes:
* Update Base FHIR R4 to FHIR R6

### Version = 1.0
* Original Release


