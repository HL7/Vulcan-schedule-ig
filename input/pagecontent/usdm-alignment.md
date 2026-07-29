### Alignment with the CDISC Unified Study Definition Model (USDM)

The Transcelerate [Digital Data Flow (DDF)](https://www.transceleratebiopharmainc.com/initiatives/digital-data-flow/) project has initiated a design for sharing study designs as part of an end to end study integration.  The standard exchange format is the CDISC Unified Study Definition Model (USDM).  The HL7 Vulcan SoA IG needs to be able to present a structured representation based on the source USDM.  Note, many of the concepts used here are common with the UDP Implementation Guide, so please review both IGs in concert. 

This page documents the **mapping methodology** used to transform a CDISC Unified Study
Definitions Model (USDM) source document into FHIR resources that conform to this IG's
Schedule of Activities (SoA) profiles — a `PlanDefinition`-based encoding of visits,
timing, and activities modeled on the HL7 Vulcan Schedule of Activities specification
(Richardson & Genyn, *Clinical Trial Schedule of Activities Specification Using FHIR
Definitional Resources*, JMIR Med Inform 2025;13:e71430).

It is written as a **reference for implementers** — the mapping rules, algorithms, and
known limitations described here are stack-independent. The reference implementation
(`scripts/usdm_to_soa.py`, Python 3 stdlib only) is one realization of this approach; see
the [USDM Transform](usdm.html) page for how to run it against this IG's example study.

#### 1. The two models being reconciled

| | USDM | This IG's SoA profiles |
|---|---|---|
| Purpose | Vendor-neutral, machine-readable protocol authoring model | Interoperable exchange format for schedules of activities |
| Root construct | `Study` → `StudyVersion` → `StudyDesign` | `ResearchStudy` + a tree of `PlanDefinition` instances |
| Visit timing | `Encounter.scheduledAtId` → `Timing` (ISO 8601 durations, relative to another encounter) | `PlanDefinition.action.extension` (`soaTimepoint`) — absolute-from-anchor `Quantity`/`Range`, `relatedAction` |
| Activity/visit linkage | `ScheduleTimeline` linked lists of `ScheduledActivityInstance` nodes | `PlanDefinition.action` graph with `action.action` sub-actions and `relatedAction` |
| Activities | `Activity` classified indirectly via `biomedicalConceptIds` / `bcSurrogateIds` / `definedProcedures` | `ActivityDefinition` / `ObservationDefinition` / `Questionnaire`, selected by archetype (§4) |

Both models describe the same clinical trial schedule but organize it around different
primitives — USDM around **study design metadata with duration-based timing**, FHIR SoA
around a **PlanDefinition action graph with day-offset timing extensions**. The mapping
below is the reconciliation between the two.

#### 2. Pipeline architecture

```
USDM JSON                     TRANSFORM PIPELINE                  FHIR SoA (FSH)
────────────────────────────────────────────────────────────────────────────────
Study, StudyDesign,    ──▶    1. Load + index by id           ──▶  ResearchStudy
  Encounter, Timing,          2. Resolve encounter timing            + Organization
  Activity,                      (TimingResolver)                    + Practitioner
  BiomedicalConcept,          3. Classify activities            ──▶  Group
  BiomedicalConcept-             (measurement / instrument /          (Inclusion/Exclusion)
  Surrogate,                     procedure)                    ──▶  PlanDefinition
  EligibilityCriterion,       4. Traverse ScheduleTimeline            (per-visit,
  ScheduleTimeline,               linked lists → visit ×              SOAPlanDefinition)
  ScheduledActivityInstance      activity matrix                ──▶  PlanDefinition
                               5. Emit FSH + catalog CSVs             (ProtocolDesign,
                                                                       master SOAPlanDefinition)
                                                                 ──▶  ActivityDefinition /
                                                                       ObservationDefinition /
                                                                       Questionnaire
```

The transform is a **one-way, re-runnable extraction**: it reads only the USDM source and
never reads previously generated FHIR output, so it is idempotent and safe to re-run as
the source protocol changes. Every USDM object is resolved through a single flat
`id → object` index built once at load time, since USDM cross-references (`scheduledAtId`,
`relativeFromScheduledInstanceId`, `previousId`/`nextId`, `criterionIds`, …) are string ids
rather than nested structures.

#### 3. Study-level resources

| USDM path | FHIR target | Notes |
|---|---|---|
| `study.name` | `ResearchStudy.title` | |
| `study.versions[0].versionIdentifier` | `ResearchStudy.version` | |
| `study.versions[0].studyIdentifiers[]` | `ResearchStudy.identifier[]` | resolve `scopeId` → `Organization` for `identifier.assigner` |
| `studyDesigns[0].studyPhase.standardCode` | `ResearchStudy.phase` | CDISC phase code → FHIR phase code |
| `studyDesigns[0].indications[].codes[]` | `ResearchStudy.condition[]` | one entry per coding system present (ICD-10, SNOMED, …) |
| `studyDesigns[0].therapeuticAreas[]` | `ResearchStudy.focus[]` | |
| `studyDesigns[0].arms[]` | `ResearchStudy.comparisonGroup[]` | `name`/`label`/`description`/`type` map directly |
| `studyDesigns[0].objectives[]` | `ResearchStudy.objective[]` | `level.standardCode` (Primary/Secondary) → `objective.type` |
| `organizations[]` | `Organization` instances | one per organization; `type.standardCode` distinguishes sponsor / registry / site |
| `studyDesigns[0].studyRoles[*].assignedPersons[]` | `Practitioner` instances | USDM does not guarantee a top-level `persons[]` array — traverse via study roles; the role with an Investigator type also sets `ResearchStudy.principalInvestigator` |

#### 4. Eligibility

```
studyDesigns[0].population.criterionIds[]
  → resolve each id to an EligibilityCriterion
  → split by criterion.category.standardCode:
        C25532 (Inclusion) → Group "…-Inclusion"
        C25370 (Exclusion) → Group "…-Exclusion"
  → each criterion becomes Group.characteristic[+]:
        .code = #eligibility
        .valueCodeableConcept.text = criterion.text, with HTML tags stripped
        .exclude = false (inclusion group) | true (exclusion group)
```

#### 5. Encounters and visit timing

This is the most structurally different part of the two models and the part most likely
to need careful porting into other stacks.

##### 5.1 The `soaTimepoint` extension

Visit timing is carried on `PlanDefinition.action.extension` using the `SOATimePoint`
extension (`SoA-Profiles.fsh`), whose sub-extensions are the mapping target for USDM's
`Encounter` / `Timing` pair:

| `soaTimepoint` sub-extension | Type | Populated from |
|---|---|---|
| `soaTimePointType` | `string` | fixed `"interaction"` for encounter-level actions |
| `soaTimePointSubType` | `string` | derived from `encounter.label` (see §5.4) |
| `soaPlannedTimePoint` | `SimpleQuantity` | `Timing.value` (ISO 8601 duration → days) |
| `soaPlannedRange` | `Range` | `Timing.windowLower` / `Timing.windowUpper` (ISO 8601 → days) |
| `soaReferenceTimePoint` | `string` | the **name** of the encounter the timing is relative to |
| `soaRangeFromTimePoint` | `string` | reserved for window-relative-to-a-different-anchor cases (unused by the reference study) |
| `soaPlannedDuration` | `Duration` | visit duration, where the source provides one |
| `soaRepeatAllowed` | `boolean` | `true` only for repeatable visits (e.g. retreatment) |

##### 5.2 Resolution algorithm

```
function resolve_encounter_timing(encounter):
  if encounter.scheduledAtId is null:
    → anchor visit: emit soaTimePointType/SubType only,
      no soaPlannedTimePoint, no soaPlannedRange, no relatedAction
    return

  timing = resolve(encounter.scheduledAtId)
  planned_day_value = parse_iso8601_duration_to_days(timing.value)
  window_lower = parse_iso8601_duration_to_days(timing.windowLower)   # optional
  window_upper = parse_iso8601_duration_to_days(timing.windowUpper)   # optional

  # The reference encounter is NOT resolved from timing.relativeFromScheduledInstanceId
  # directly — that field identifies the SAI that *uses* the timing, not the encounter
  # timing is measured from. Use encounter.previousId instead, which names the
  # reference encounter directly.
  reference_encounter_name = resolve(encounter.previousId).name

  emit soaTimepoint with all fields populated
  emit relatedAction { targetId: reference_encounter_name, relationship: #after,
                        offsetRange: [window_lower, window_upper] }
```

An encounter can be an **anchor** even if it has a `previousId` — USDM allows a treatment
anchor (e.g. Baseline) partway through the encounter chain, distinct from the very first
encounter. Anchor status is driven solely by `scheduledAtId == null`, not by chain
position.

##### 5.3 ISO 8601 duration parsing

| Format | Example | Conversion |
|---|---|---|
| `P<n>D` | `P14D` | *n* days |
| `P<n>W` | `P4W` | *n* × 7 days |
| `PT<n>H` | `PT4H` | *n* / 24 days (sub-day windows) |
| `PT<n>M` | `PT5M` | *n* / 1440 days (sub-hour windows) |

Sub-day and sub-hour windows occur in practice (e.g. a same-day telephone confirmation
window) and must resolve to fractional-day `Quantity`/`Range` values rather than being
rejected — the target extensions use UCUM `d` throughout for a single consistent unit.

##### 5.4 Timepoint subtype derivation

| Encounter label contains | `soaTimePointSubType` |
|---|---|
| "Screening" | `screening` |
| "Baseline" | `baseline` |
| "Early Termination" | `early-termination` |
| "Retreatment" | `retreatment` |
| *(anything else)* | `planned` |

##### 5.5 Transitions between visits

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

### 6. Activity classification

Each USDM `Activity` maps to one of three FHIR resource shapes, chosen by a strict
precedence order:

```
Activity node
├── has biomedicalConceptIds?        → archetype = measurement
│     → ActivityDefinition + ObservationDefinition, coded from the
│       referenced BiomedicalConcept
│
├── else has bcSurrogateIds?         → archetype = instrument
│     → Questionnaire shell + a scored ObservationDefinition;
│       respondent type set from a lookup table (§6.1) since USDM
│       carries no machine-readable PRO/ClinRO flag
│
├── else has definedProcedures[0]
│      with a non-null code?         → archetype = procedure
│     → ActivityDefinition only (no observationResultRequirement)
│
└── else                             → unclassified — log and skip
```

**Precedence matters:** when both `biomedicalConceptIds` and `definedProcedures` are
present on the same activity (this happens for procedures with an associated result,
e.g. a physical examination), `biomedicalConceptIds` wins and the activity is treated as
a measurement.

##### 6.1 PRO vs. clinician-rated instruments

`instrument`-archetype activities all emit a `Questionnaire`, but downstream consumers
need to know **who answers it** — a self-report Patient-Reported Outcome behaves
differently from a clinician-administered rating scale for scheduling, consent, and data
review purposes. Since the USDM `BiomedicalConceptSurrogate` object carries no such flag,
this must be supplied from an external lookup keyed on the surrogate/activity, and used
to populate `action.participant[+].type` on the visit action:

| `respondent_type` | Meaning | Example instruments |
|---|---|---|
| `patient` | True PRO — patient self-completes | Placebo TTS test, TTS Acceptability Survey |
| `practitioner` | Clinician-administered scale | MMSE, Hachinski Ischemic Scale, ADAS-Cog, CIBIC+, Demographics, Apo E Genotype |
| `related-person` | Caregiver/informant-completed | DAD, NPI-X |

##### 6.2 Code enrichment policy

USDM-sourced codes are always the **primary** `ActivityDefinition.code.coding[]` /
`ObservationDefinition.code.coding[]` entry. Supplementary codes (typically SNOMED CT or
CPT, sourced from a terminology service at authoring time) are appended as **additional**
codings and are never used to replace the USDM code — the source protocol's coding
remains authoritative for traceability back to the regulatory submission. Each
supplementary code carries an enrichment status so reviewers can see how it was derived:

| Status | Meaning |
|---|---|
| `confirmed` | Existing USDM code verified against a terminology lookup |
| `supplemented` | USDM had a code; enrichment adds a code from a different system |
| `enriched` | USDM had no code; enrichment found a clean match |
| `manual` | No confident match; a human must supply or verify the code |
| `skipped` | Administrative activity; no clinical code expected (e.g. "Patient number assigned") |

Enrichment is a **one-shot, human-reviewed authoring step**, not part of the re-runnable
pipeline — automatically promoting an unreviewed code into a protocol's activity catalog
is treated as unacceptable risk regardless of how confident the match looks.

#### 7. Visit × activity schedule construction

1. **Primary mechanism** — traverse `ScheduleTimeline.instances[]`
   (`ScheduledActivityInstance`, or "SAI") on the timeline flagged `mainTimeline = true`.
   SAI nodes form a singly-linked list via `previousId`/`nextId`, starting at
   `ScheduleTimeline.entryId`. Each SAI's `encounterIds[]` and `activityIds[]` together
   say which activities are scheduled at which encounter. **Multiple SAI nodes can point
   at the same encounter** (e.g. a base visit node plus a sub-node for a conditional
   assessment) — union their `activityIds` rather than treating the second occurrence as
   an error.
2. **Fallback mechanism** — if an activity carries a `timelineId` but is not linked to any
   specific encounter through an SAI, assign it to every encounter on that timeline. This
   handles activities that repeat identically at every visit on a sub-schedule (e.g. a
   vital-signs sub-protocol) without needing to be listed explicitly at each node.
3. **Encounter order** for both the visit list and the master schedule PlanDefinition is
   the `nextId` chain starting from the encounter with `previousId = null` — do not rely
   on array order or id numbering in the source file, both of which can be non-sequential.
4. **Decision nodes** (`ScheduledActivityInstance`'s branching sibling type, used for
   conditional-arm logic mid-timeline) have no FHIR timeline equivalent and should be
   treated as transparent: skip over them during traversal but keep resolving the SAI
   chain on either side, and log a warning so the condition doesn't silently disappear.
5. Log — but do not fail the run on — any catalog activity that resolves to zero
   encounters; an activity with no scheduled occurrence anywhere is very likely a data
   problem in the source, not a valid case to encode.

#### 8. Known gaps and dispositions

Some USDM constructs have no direct home in the current SoA profiles. These are not
bugs in the transform — they are places where the target profile is either
intentionally silent or has not yet caught up with everything USDM can express. Each
should be revisited as the profiles mature.

| USDM concept | Disposition | Rationale |
|---|---|---|
| `encounter.contactModes[]` (e.g. IN PERSON, TELEPHONE CALL) | Workaround: encode as `action.code` using the source coded value; flag with a comment at the point of use | No element for contact mode exists on `SOAPlanDefinition` today. **Proposed for a future profile version:** a `soaContactMode` sub-extension on `SOATimePoint`. |
| Early Termination visit with no `Encounter` object | Synthesize a visit from the ET timeline's activity list, with no timing extension values, and log a warning that it was synthesized | ET is expressed in USDM as a timeline exit path, not a scheduled encounter, but every implementation needs an ET visit artifact to reference |
| Retreatment visit with no USDM data at all | Do not generate; keep any existing hand-authored equivalent as the source of truth for that visit | There is nothing in USDM to derive it from |
| Branching decision nodes | Skip in timeline traversal (see §7.4); represent the underlying condition, where one exists, via `action.condition[+].kind = #applicability` | No FHIR timeline-node equivalent; the condition itself does map |
| `StudyEpoch` chain (Screening/Treatment/Follow-up) | Drop from generated FHIR; document in `ResearchStudy.description` | R6 `ResearchStudy` has no epoch-chain element |
| `StudyAmendment`, `GovernanceDate` | Drop from generated FHIR | No direct FHIR home; `ResearchStudy.date` only covers a single date, not a set |
| Intra-visit sub-timings (sub-minute/sub-hour procedure sequencing within a single visit) | Out of scope for visit-level mapping; belongs in a sub-`PlanDefinition` scoped to the procedure | Visit-level timing extensions are not designed to carry procedure-sequencing detail |
| `BiomedicalConceptCategory` (panels grouping several concepts, e.g. a chemistry panel) | Map to a panel-kind `ObservationDefinition` with member analytes referencing it via `hasMember` | Matches the existing FHIR panel pattern |

#### 9. Implementation checklist

For an implementer porting this approach to a different USDM source or a different
target stack, the mapping reduces to five ordered steps:

1. **Index the source once.** Build a flat `id → object` lookup over the whole USDM
   document before mapping anything — nearly every USDM cross-reference is a bare string
   id, and re-searching the tree per reference does not scale past a handful of visits.
2. **Resolve visit timing before emitting visit resources.** The `soaTimepoint`
   extension needs the reference encounter's *name*, not its id, and needs the anchor/
   non-anchor distinction settled first — get this right once, in one place, rather than
   inline at each visit.
3. **Classify every activity through the full three-way decision tree**, in the stated
   precedence order, before emitting any `ActivityDefinition`/`ObservationDefinition`/
   `Questionnaire` — do not special-case archetypes ad hoc per activity, since procedures
   with an attached result and instruments with a surrogate code are easy to
   misclassify if the precedence isn't applied uniformly.
4. **Traverse the schedule timeline as a linked list, not as an array.** Encounter and
   activity order both come from `previousId`/`nextId` chains; treat array position and
   numeric id suffixes as incidental, not authoritative.
5. **Keep source codes primary and enrichment codes supplementary, always
   human-reviewed.** Never let an automated terminology match silently become an
   activity's primary code.

#### 10. Further reading

- [USDM Transform](usdm.html) — how to run the reference pipeline against this IG's
  example study, including regeneration commands and CSV catalog formats
- `input/fsh/SoA-Profiles.fsh` (source tree) — the target profile and extension
  definitions referenced throughout this page (`SOAPlanDefinition`, `SOATimePoint`,
  `SOATransition`, `StudyProtocolSoa`, `StudyVisitSoa`, `StudyActivitySoa`)
- Richardson A, Genyn P. *Clinical Trial Schedule of Activities Specification Using Fast
  Healthcare Interoperability Resources Definitional Resources: Mixed Methods Study.*
  JMIR Med Inform 2025;13:e71430. DOI: 10.2196/71430


