# USDM to FHIR SoA Mapping

This page documents the **mapping methodology** for transforming the Schedule of
Activities portion of a CDISC Unified Study Definitions Model (USDM) source document
into FHIR resources that conform to this IG's Schedule of Activities (SoA) profiles — a
`PlanDefinition`-based encoding of visits, timing, and activities modeled on the HL7
Vulcan Schedule of Activities specification. 

It is written as a **stack-independent reference for implementers** evaluating or
adopting this IG — the mapping rules and structural principles described here apply
regardless of the language, tooling, or ETL approach used to carry them out. A worked
implementation is available for reference (§8).

This page is scoped to the **schedule of activities** itself — timelines, encounters,
and activities. Mapping USDM's study-identity, design-metadata, and eligibility
constructs to `ResearchStudy` and related resources is covered by the Vulcan Utilizing
the Digital Protocol (UDP) project's mapping guidance, not here.

Note; the USDM is intended to represent the design of a Study; the Vulcan SoA is intentionally targeted towards operational outcomes.  This is a mismatch that needs to be accounted for when transforming the designs.

## 1. The two models being reconciled

| | USDM | This IG's SoA profiles |
|---|---|---|
| Purpose | Vendor-neutral, machine-readable protocol authoring model | Interoperable exchange format for schedules of activities |
| Root construct | `Study` → `StudyVersion` → `StudyDesign` | `ResearchStudy` + a tree of `PlanDefinition` instances |
| Visit timing | `Encounter.scheduledAtId` → `Timing` (ISO 8601 durations, relative to another encounter) or `ScheduledActivityInstance` → `Encounter` and `Timing`  | `PlanDefinition.action.extension` (`soaTimepoint`) — absolute-from-anchor `Quantity`/`Range`, `relatedAction` |
| Activity/visit linkage | `ScheduleTimeline` linked lists of `ScheduledActivityInstance` and `ScheduledDecisionInstance` nodes | `PlanDefinition.action` graph with `action.action` sub-actions and `relatedAction` or  `soaTransition` extension |
| Activities | `Activity` classified indirectly via `BiomedicalConcept` / `BiomedicalConceptSurrogate` / `Procedures` | `ActivityDefinition` / `ObservationDefinition` / `Questionnaire`, selected by archetype (§4) |

Both models can describe the same clinical trial schedule but organize it around different
primitives — USDM around **study design metadata with duration-based timing**, FHIR SoA
around a **PlanDefinition action graph with day-offset timing extensions**. The mapping
below is the reconciliation between the two.

## 2. General transformation approach

Regardless of implementation stack, mapping a USDM schedule of activities into this
IG's SoA profiles involves the same five conceptual steps:

1. **Index the source.** Build a lookup from id to object across the USDM document.
   USDM cross-references (`scheduledAtId`, `relativeFromScheduledInstanceId`,
   `previousId`/`nextId`, `defaultConditionId`, …) are string ids rather than nested
   structures, and nearly every step below needs to resolve one.
2. **Resolve encounter timing.** For each `ScheduledActivityInstance`, determine whether it is a
   timeline anchor or is timed relative to another scheduled instance/encounter, and convert its `Timing`
   into the day-offset form the target extensions expect (§3).
3. **Classify activities.** Assign each USDM `Activity` to one of the FHIR resource
   archetypes it should be expressed as (§4).
4. **Traverse the schedule timeline** to build the visit × activity matrix — which
   activities occur at which encounters (§5).
5. **Emit FHIR resources** — `PlanDefinition` per visit and for the master schedule,
   `ActivityDefinition` / `ObservationDefinition` / `Questionnaire` per classified
   activity — using the results of steps 2–4.

A transform built this way is naturally a **one-way, re-runnable extraction**: it reads
only the USDM source and never reads previously generated FHIR output, so it stays
idempotent and safe to re-run as the source protocol changes.

The USDM structure supports a native graph-based view of the encounters and activities; this leans into the representation suggested elsewhere in the IG.

## 3. Encounters and visit timing

This is the most structurally different part of the two models and the part most likely to need careful porting.  

It is important to make clear that the FHIR `Encounter` and USDM `Encounter` exist in very different contexts; 
* USDM's `Encounter` is a planned, definitional visit: it lives inside a StudyDesign, has no subject, no actual date, no status. It describes what the protocol says will happen.
* FHIR's `Encounter` resource is an execution-time record: Encounter.status (planned | in-progress | finished | …) and Encounter.subject are central to it. It describes what actually happened (or is currently happening) to one specific person.

### 3.1 The `soaTimepoint` extension

Visit timing is carried on `PlanDefinition.action.extension` using the `SOATimePoint`
extension (`SoA-Profiles.fsh`), whose sub-extensions are the mapping target for USDM's
`Encounter` / `Timing` pair:

| `soaTimepoint` sub-extension | Type | Populated from |
|---|---|---|
| `soaTimePointType` | `string` | fixed `"interaction"` for encounter-level actions |
| `soaTimePointSubType` | `string` | derived from `encounter.label` (see §3.4) |
| `soaPlannedTimePoint` | `SimpleQuantity` | `Timing.value` (ISO 8601 duration → days) |
| `soaPlannedRange` | `Range` | `Timing.windowLower` / `Timing.windowUpper` (ISO 8601 → days) |
| `soaReferenceTimePoint` | `string` | the **name** of the encounter the timing is relative to |
| `soaRangeFromTimePoint` | `string` | reserved for window-relative-to-a-different-anchor cases |
| `soaPlannedDuration` | `Duration` | visit duration, where the source provides one |
| `soaRepeatAllowed` | `boolean` | `true` only for repeatable visits (e.g. retreatment) |

The `PlanDefinition.action.relatedAction` extension `AcceptableOffsetRangeSoa` can be also used; the semantics are much less expressive so the `soaTimepoint` is generally recommended.

### 3.2 Resolution approach

Scan through the `Timing` instances for the main timeline in the USDM to identify any fixed timepoints (called anchors in the USDM IG) and 
look for the relevant `ScheduledActivityInstance` instances that reference the fixed timings (using the `Timing.relativeFromScheduledInstance` and 
`Timing.type`).  From these, link to related `Encounter` to establish the timings.  Evaluate the `ScheduledActivityInstance.next` to evaluate the 
next encounters/activities.  Also consider any `Encounter.scheduledAt` direct references to `Timing`.

### 3.3 ISO 8601 duration conversion

| Format | Example | Conversion |
|---|---|---|
| `P<n>D` | `P14D` | *n* days |
| `P<n>W` | `P4W` | *n* × 7 days |
| `PT<n>H` | `PT4H` | *n* / 24 days (sub-day windows) |
| `PT<n>M` | `PT5M` | *n* / 1440 days (sub-hour windows) |

Sub-day and sub-hour windows occur in practice (e.g. a same-day telephone confirmation
window) and must resolve to fractional-day `Quantity`/`Range` values rather than being
rejected — the target extensions use UCUM `d` throughout for a single consistent unit.  
Follow the ordering from the `ScheduledActivityInstance.activityIds` as applicable.

### 3.4 Timepoint Epoch Derivation

USDM uses the `StudyEpoch` class to represent groups of study encounters (via the `ScheduledActivityInstance`).  

The `StudyEpoch.type` can be used to represent the typeA representative mapping:

| `StudyEpoch.type` | `soaTimePointSubType` |
|---|---|
| "Screening Epoch" | `screening` |
| "Baseline Epoch" | `baseline` |
| "Treatment Epoch" | `treatment` |
| *(anything else)* | `planned` |

The [`groupingBehaviour`](https://build.fhir.org/plandefinition-definitions.html#PlanDefinition.action.groupingBehavior) can be used to support the intended usage of the `StudyEpoch` (the default value of `locgical-group` will suffice for most scenarios) 

### 3.5 Transitions between visits

Graph edges between consecutive visits (used for scheduling logic beyond the simple
`relatedAction` offset — e.g. conditional wait rules) are carried as a sub-action using
the `SOATransition` extension:

| `soaTransition` sub-extension | Populated from |
|---|---|
| `soaTargetId` | reference encounter's `name` |
| `soaTargetName` | reference encounter's `label` |
| `soaTransitionType` | fixed `"scheduled"` for regular visit-to-visit transitions |
| `soaTransitionDelay` | the resolved window/offset, as a `Duration` |
| `soaTransitionRange` | the resolved window, as a `Range` |

These should all be based on asserted edges from the source USDM document; through linked `ScheduledActivityInstance` and `ScheduledDecisionInstance` instances.  The batching of activities within the `ScheduledActivityInstance`
fits the workflow based view of the SoA driven by this IG; this is one of the powerful advantages of the FHIR workflow patterns that could reflect operations at healthcare sites.

### 3.6 Dynamic scheduling: decision nodes and conditions

Not every fork in a schedule is a simple sequential visit-to-visit transition. USDM
represents conditional branching within a `ScheduleTimeline` using a second node type,
`ScheduledDecisionInstance`, interleaved with the `ScheduledActivityInstance` nodes
covered in §5. A decision instance is not itself a visit or an activity — it carries no
`encounterId` and no `activityIds` — it is purely a fork in the graph:

- `defaultConditionId` on the decision node names the default (unconditional) next node
  — the branch taken absent any matching alternate condition.
- `conditionAssignments[]` lists the alternate branches. Each `ConditionAssignment`
  pairs a `condition` (typically a free-text description of the branching rule, e.g.
  "not willing to do online questionnaire") with a `conditionTargetId` naming the node
  to jump to when that condition holds.

Because a decision node has no clinical content of its own, it does not become a
`PlanDefinition.action` in the target model. Traverse through it transparently, and
redistribute its branching semantics onto the actions on either side of it:

- **The condition itself does map.** Each branch's target action (the downstream visit
  or activity) carries the branch condition as `action.condition[+]`, with
  `kind = #applicability` and `expression` populated from the source
  `ConditionAssignment.condition` text. The default branch is typically left
  unconditioned, since it is the pathway taken when no alternate condition applies.
  Note: the `Condition.text` could be transformed to FHIR evaluations using [FHIRPath](https://www.hl7.org/fhir/fhirpath.html) or [CQL](https://build.fhir.org/ig/HL7/cql/)
- **Graph connectivity through the fork is still carried as a `relatedAction` /
  `soaTransition` edge**, as in §3.5 — but pointing from the pre-decision action
  directly to each downstream branch target, skipping the decision node's own id.
  Implementers may want to distinguish these edges from ordinary sequential
  transitions (for example, a dedicated `soaTransitionType` value rather than the
  default used for scheduled visit-to-visit transitions), so a consumer can tell a
  conditional branch apart from a simple next-visit edge; this IG does not currently
  constrain that vocabulary.
- USDM's `ConditionAssignment.condition` does not distinguish *what kind* of thing the
  condition depends on — a prior observation's result, an eligibility determination, a
  subject's stated preference, and so on all look the same: free text. Treat the
  condition as descriptive rather than assuming it is machine-evaluable without further
  authoring, unless the source study supplies a more structured expression.

## 4. Activity expansion and classification

Each USDM `Activity` maps to one of three FHIR resource shapes, chosen by a strict
precedence order:

- **Has `biomedicalConceptIds`?** → archetype = **measurement**. Emit an
  `ActivityDefinition` plus an `ObservationDefinition`, coded from the referenced
  `BiomedicalConcept`.
- **Else has `bcSurrogateIds`?** → archetype = **instrument**. Emit a `Questionnaire`
  shell plus a scored `ObservationDefinition`. USDM carries no machine-readable
  PRO/ClinRO flag, so the respondent type (§4.2) must come from an external source.
- **Else has a `definedProcedures` entry with a non-null code?** → archetype =
  **procedure**. Emit an `ActivityDefinition` only (no
  `observationResultRequirement`).
- **Else** → unclassified. Log and skip; an activity that fits none of these should be
  treated as a data or scoping gap in the source, not silently dropped.

**Precedence matters:** when both `biomedicalConceptIds` and `definedProcedures` are
present on the same activity (this happens for procedures with an associated result,
e.g. a physical examination), `biomedicalConceptIds` wins and the activity is treated
as a measurement.

### 4.1 Biomedical concept expansion: `observationResultRequirement`

A single `BiomedicalConcept` usually decomposes into more than one discrete result, and
that granularity matters: it is what lets a consumer know exactly what data an activity
is expected to produce, rather than only that "some measurement" occurred. USDM carries
this decomposition in `BiomedicalConcept.properties[]` — each `BiomedicalConceptProperty`
is one measurable parameter (a lab analyte, a vital-sign component, a genotype call, …)
with its own code and, where applicable, a permitted set of `responseCodes` or a unit.

The mapping target for that granularity is `ActivityDefinition.observationResultRequirement`
— a repeating canonical reference to `ObservationDefinition` expressing what result(s)
performing the activity is expected to produce:

- Each `BiomedicalConceptProperty` maps to its own analyte-level `ObservationDefinition`,
  coded from the property's own code (or its first `responseCode`, where the property is
  itself a coded response rather than a freestanding measurement), with
  `permittedDataType` / `permittedUnit` populated where the source supplies a unit.
- Where an activity's biomedical concept(s) group several properties — either within one
  concept or under a `BiomedicalConceptCategory` (e.g. a hematology panel made up of
  hemoglobin, hematocrit, RBC, WBC, …) — emit one panel-level `ObservationDefinition` per
  grouping, with a `hasMember[+]` reference to each analyte-level `ObservationDefinition`.
  This is the standard FHIR panel-observation pattern, not an SoA-specific extension.
- `ActivityDefinition.observationResultRequirement[+]` then references either the single
  analyte `ObservationDefinition` (the activity measures one thing) or the panel
  `ObservationDefinition` (the activity measures several related things at once).

This is a different question from `ActivityDefinition.observationRequirement`, which
expresses what observation(s) must already be known *before* the activity can be
performed — a precondition, not a result. The two elements should be populated
independently even where, for a given activity, the answer happens to involve the same
underlying concept.

### 4.2 PRO vs. clinician-rated instruments

`instrument`-archetype activities all emit a `Questionnaire`, but downstream consumers
need to know **who answers it** — a self-report Patient-Reported Outcome behaves
differently from a clinician-administered rating scale for scheduling, consent, and
data review purposes. Since USDM's `BiomedicalConceptSurrogate` carries no such flag,
this must be supplied from an external source and used to populate
`action.participant[+].type` on the visit action. The following is one illustrative
approach, not a normative vocabulary:

| `respondent_type` | Meaning | Example instruments |
|---|---|---|
| `patient` | True PRO — patient self-completes | Placebo TTS test, TTS Acceptability Survey |
| `practitioner` | Clinician-administered scale | MMSE, Hachinski Ischemic Scale, ADAS-Cog, CIBIC+, Demographics, Apo E Genotype |
| `related-person` | Caregiver/informant-completed | DAD, NPI-X |

### 4.3 Code enrichment

USDM-sourced codes should be treated as the **primary** `ActivityDefinition.code.coding[]`
/ `ObservationDefinition.code.coding[]` entry. Supplementary codes (typically SNOMED CT
or CPT, sourced from a terminology service at authoring time) can be appended as
**additional** codings but should never replace the USDM code — the source protocol's
coding remains authoritative for traceability back to the regulatory submission.
Enrichment is best treated as a **one-shot, human-reviewed authoring step** rather than
part of a re-runnable pipeline: automatically promoting an unreviewed code into a
protocol's activity catalog carries real risk regardless of how confident the match
looks. One illustrative way to track this, useful for reviewer visibility:

| Status | Meaning |
|---|---|
| `confirmed` | Existing USDM code verified against a terminology lookup |
| `supplemented` | USDM had a code; enrichment adds a code from a different system |
| `enriched` | USDM had no code; enrichment found a clean match |
| `manual` | No confident match; a human must supply or verify the code |
| `skipped` | Administrative activity; no clinical code expected (e.g. "Patient number assigned") |

## 5. Visit × activity schedule construction

1. **Primary mechanism** — traverse `ScheduleTimeline.instances[]`
   (`ScheduledActivityInstance` and `ScheduledDecisionInstance` nodes) on the timeline
   flagged `mainTimeline = true`, starting at `ScheduleTimeline.entryId`. Nodes are
   chained via `defaultConditionId` — each node names the id of the next node in
   sequence — rather than the `previousId`/`nextId` pair used for the `Encounter`
   chain (§3.2); do not assume the two chains use the same linking fields. Each
   `ScheduledActivityInstance`'s `encounterId` and `activityIds[]` together say which
   activities are scheduled at which encounter. **Multiple nodes can point at the same
   encounter** (e.g. a base visit node plus a sub-node for a conditional assessment) —
   union their `activityIds` rather than treating the second occurrence as an error.
2. **Fallback mechanism** — if an activity carries a `timelineId` but is not linked to
   any specific encounter through a scheduled-activity-instance node, assign it to
   every encounter on that timeline. This handles activities that repeat identically
   at every visit on a sub-schedule (e.g. a vital-signs sub-protocol) without needing
   to be listed explicitly at each node.
3. **Encounter order** for both the visit list and the master schedule
   `PlanDefinition` is the `nextId` chain starting from the encounter with
   `previousId = null` — do not rely on array order or id numbering in the source
   file, both of which can be non-sequential.  Also, look at the relations defined via the `Timing` <-> `ScheduledActivityInstance`/`ScheduledDecisionInstance`
4. **Decision nodes** (`ScheduledDecisionInstance` — no `encounterId`/`activityIds` of
   its own) are not visit or activity nodes and get no `PlanDefinition.action`.
   Traverse through them transparently, redistributing their branch conditions onto
   the downstream actions as described in §3.6, rather than letting the branch
   silently disappear.
5. Track — but do not fail the mapping on — any catalog activity that resolves to
   zero encounters; an activity with no scheduled occurrence anywhere is very likely a
   data problem in the source, not a valid case to encode.

## 6. Known gaps and dispositions

Some USDM constructs relevant to the schedule of activities have no direct home in the
current SoA profiles. These are not defects in the mapping — they are places where the
target profile is either intentionally silent or has not yet caught up with everything
USDM can express. Each should be revisited as the profiles mature.

| USDM concept | Disposition | Rationale |
|---|---|---|
| `encounter.contactModes[]` (e.g. IN PERSON, TELEPHONE CALL) | Workaround: encode as `action.code` using the source coded value; flag at the point of use | No element for contact mode exists on `SOAPlanDefinition` today. **Proposed for a future profile version:** a `soaContactMode` sub-extension on `SOATimePoint`. |
| Early Termination visit with no `Encounter` object | Synthesize a visit from the ET timeline's activity list, with no timing extension values, and record that it was synthesized | ET is expressed in USDM as a timeline exit path, not a scheduled encounter, but every implementation needs an ET visit artifact to reference |
| Retreatment visit with no USDM data at all | Do not generate; keep any existing hand-authored equivalent as the source of truth for that visit | There is nothing in USDM to derive it from |
| `ScheduledDecisionInstance` branching nodes | Skip the decision node itself in timeline traversal (§3.6, §5.4); represent each branch's condition via `action.condition[+].kind = #applicability` on the downstream action | No FHIR timeline-node equivalent for the decision node itself; the condition it carries does map |
| Intra-visit sub-timings (sub-minute/sub-hour procedure sequencing within a single visit) | Out of scope for visit-level mapping; belongs in a sub-`PlanDefinition` scoped to the procedure | Visit-level timing extensions are not designed to carry procedure-sequencing detail |
| `BiomedicalConceptCategory` (panels grouping several concepts, e.g. a chemistry panel) | Map to a panel-kind `ObservationDefinition` with member analytes referencing it via `hasMember` | Matches the existing FHIR panel pattern |

## 7. General implementation guidance

For an implementer porting this approach to a different USDM source or a different
target stack, the mapping reduces to five ordered principles:

1. **Index the source once.** Build a flat `id → object` lookup over the whole USDM
   document before mapping anything — nearly every USDM cross-reference is a bare
   string id, and re-searching the tree per reference does not scale past a handful of
   visits.
2. **Resolve visit timing before emitting visit resources.** The `soaTimepoint`
   extension needs the reference encounter's *name*, not its id, and needs the
   anchor/non-anchor distinction settled first — get this right once, in one place,
   rather than inline at each visit.
3. **Classify every activity through the full three-way decision tree**, in the
   stated precedence order, before emitting any
   `ActivityDefinition`/`ObservationDefinition`/`Questionnaire` — do not special-case
   archetypes ad hoc per activity, since procedures with an attached result and
   instruments with a surrogate code are easy to misclassify if the precedence isn't
   applied uniformly.
4. **Traverse both chains as linked lists, not as arrays — and don't conflate them.**
   Encounter order comes from the `Encounter.previousId`/`nextId` chain; schedule
   timeline instance order comes from `ScheduledActivityInstance` /
   `ScheduledDecisionInstance.defaultConditionId`. Treat array position and numeric id
   suffixes as incidental in both cases, not authoritative.
5. **Keep source codes primary and enrichment codes supplementary, always
   human-reviewed.** Never let an automated terminology match silently become an
   activity's primary code.

## 8. Further reading

- [phuse-org/fhir-schedule-of-activities-ig](https://github.com/phuse-org/fhir-schedule-of-activities-ig)
  — sample transform implementation (`scripts/usdm_to_soa.py`) for a worked example of
  the approach described on this page
- `input/fsh/SoA-Profiles.fsh` (source tree) — the target profile and extension
  definitions referenced throughout this page (`SOAPlanDefinition`, `SOATimePoint`,
  `SOATransition`, `StudyProtocolSoa`, `StudyVisitSoa`, `StudyActivitySoa`)
- Richardson A, Genyn P. *Clinical Trial Schedule of Activities Specification Using Fast
  Healthcare Interoperability Resources Definitional Resources: Mixed Methods Study.*
  JMIR Med Inform 2025;13:e71430. DOI: 10.2196/71430
