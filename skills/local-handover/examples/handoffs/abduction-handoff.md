# Abduction handoff, unit U2, router wire run

Run: stage2-router-wire-2026-11-15-01, unit U2.
Skill: Abduction, as written in workspace/custom-skills/local-abduction/SKILL.md.
Guard: full generation. Reason: a wrong explanation here shapes the next curation run, so the step is high impact.
Input: the Anomaly Hunting handoff record from ANOMALY-HANDOFF.md. All five input fields are present: model, prediction, observation, source, size of gap.

## Step 1, restated anomaly

- Model: Curation under the fixed rules yields at least 40 usable cases per run, as it did on Nov 5 with 46. The Nov 5 failures came from 12 fixable defects, and fixing them plus searching fresh sources yields a fresh 40-case set.
- Prediction: A run applying all 12 Nov 5 fixes across two routes yields at least 40 usable cases. Condition: the run follows CURATION-RULES-2026-11-15.md. Number: at least 40.
- Observation: The Nov 15 run built 1 usable case against a bar of 40, shortfall 39. Route 1 yielded 1 of 207 held entries. Route 2 yielded 0 of 3 queries.
- Size of gap: 39 cases short of 40, or 97.5 percent short.
- What would make it unsurprising: if the pool the Nov 15 run could draw from held almost no usable cases, or the rules excluded almost everything the pool contained, or the search routes looked in the wrong place.

## Step 2, explanations generated

Five explanations, from five different families. No two share a cause.

## Step 6, handoff record, top 3 explanations

### Rank 1: Pool consumed, family Missing part

- Explanation: The Nov 5 run took 46 usable cases from the literature pool, and the Nov 15 run had to exclude all 46 plus 334 plus 170 plus the dark hunt set. What remained was the Nov 5 leftovers: 207 held entries, held for substantive reasons, not fixable defects. The pool was already picked over.
- Load-bearing claims:
  - Claim: The 207 held entries were held for substantive reasons, not fixable defects. Load-bearing: yes. Source that would settle it: HELD-2026-11-15.json, held reasons counted: rescuer_equals_defect 79, drug_only 28, not_a_gene_pick 17, no_demonstrated_rescue 12, total 136 of 213.
  - Claim: Nov 15 had to exclude all prior usable cases, 46 Nov 5 plus 334 plus 170 plus dark hunt. Load-bearing: yes. Source that would settle it: CURATION-RULES-2026-11-15.md, Rule 3.
  - Claim: Nov 5 took 46 usable cases from the same literature pool. Load-bearing: yes. Source that would settle it: Nov 5 judgment, N equals 46, and TEST-SET-2026-11-05.json, my count 46.
- Predictions:
  - Prediction: Re-checking the 176 unre-checked held entries under Nov 15 rules yields fewer than 5 usable cases. Condition: the 176 entries that kept Nov 5 reasons. Number: fewer than 5 of 176.
- Scores: fit 5, testability 5, simplicity 4, product 100.
- Killer test: Re-check the 176 unre-checked held entries under Nov 15 rules. If more than 5 turn usable, this explanation dies.
- Rank: 1.

### Rank 2: Standard rose, family Changed rule

- Explanation: The evidence standard rose between Nov 5 and Nov 15. Nov 5 accepted bare-number codes, thin mapping provenance, and cell-only, partial, and variant rescues. Nov 15 required ORPHA-prefixed codes, filed mappings with a named source, PubMed-verified dates, and full papers only. Cases that passed Nov 5's bar fail Nov 15's bar.
- Load-bearing claims:
  - Claim: Nov 15 required ORPHA-prefixed codes, filed mappings with a named source, and PubMed-verified dates. Load-bearing: yes. Source that would settle it: CURATION-RULES-2026-11-15.md, Rules 1, 4, 5.
  - Claim: Nov 5 accepted bare-number codes and thin mapping provenance. Load-bearing: yes. Source that would settle it: Nov 5 judgment, G4 and G8.
  - Claim: Nov 5 accepted cell-only, partial, and variant rescues without a stated rule. Load-bearing: yes. Source that would settle it: Nov 5 judgment, G12.
- Predictions:
  - Prediction: Re-applying Nov 15 rules to the Nov 5 46 cases holds at least 5 of them. Condition: the 46 Nov 5 cases, Nov 15 rules. Number: at least 5 held of 46.
- Scores: fit 3, testability 5, simplicity 5, product 75.
- Killer test: Re-apply Nov 15 rules to the Nov 5 46 cases. If fewer than 5 are held, this explanation dies.
- Rank: 2.

### Rank 3: Wrong link, family Wrong link

- Explanation: The 12 fixes targeted the wrong thing. The fixes addressed documentation of the Nov 5 set, code format, mapping provenance, date notes, and log format, not the usability of held entries. The assumed link, fix the 12 gaps and more usable cases follow, was never shown. The held reasons are substantive, so documentation fixes could not unlock them.
- Load-bearing claims:
  - Claim: The 12 Nov 5 fixes addressed documentation of the Nov 5 set. Load-bearing: yes. Source that would settle it: Nov 5 judgment, gaps G1 to G21, including G4 code format, G8 mapping provenance, G14 log format, G15 hashes, G16 spawn counting.
  - Claim: The largest held reasons are substantive, not documentation defects. Load-bearing: yes. Source that would settle it: HELD-2026-11-15.json, my count, 136 of 213 substantive.
  - Claim: Only 31 of 207 held entries were re-checked by batch query, and the 176 others kept Nov 5 reasons. Load-bearing: yes. Source that would settle it: Nov 15 judgment, G8, and test-set routes field, Route 1 screened 31.
- Predictions:
  - Prediction: Listing the 12 Nov 5 fixes against the held-entry reasons shows at most 2 fixes change whether a held entry can become usable. Condition: the 12 fixes from the Nov 5 judgment against the held reasons in HELD-2026-11-15.json. Number: at most 2 of 12.
- Scores: fit 4, testability 4, simplicity 4, product 64.
- Killer test: List each of the 12 Nov 5 fixes and mark whether it changes a held entry's usability. If 3 or more change usability, this explanation dies.
- Rank: 3.

## Ranked list, all five scored

- Rank 1: Pool consumed, fit 5, testability 5, simplicity 4, product 100.
- Rank 2: Standard rose, fit 3, testability 5, simplicity 5, product 75.
- Rank 3: Wrong link, fit 4, testability 4, simplicity 4, product 64.
- Rank 4: Queries missed the literature, fit 3, testability 5, simplicity 4, product 60. Not handed on, cap is 3.
- Rank 5: Boundary too narrow, fit 2, testability 5, simplicity 4, product 40. Not handed on, cap is 3.
- No ties. No tie-break rule was needed.

## Rank 4 and 5, full record (not handed on)

### Rank 4: Queries missed the literature, family Hidden input

- Explanation: The Route 2 queries missed the literature where rescues are reported. Q1 used restores, reverses, corrects, compensates. Q2 used "genetic rescue", "genetic suppression", "bypass suppression". Q3 used "rescued by", "rescue by", "suppressed by". The Nov 5 verbs, rescues, suppressor, alleviates, ameliorates, mitigates, were not in Q1. A paper that says "ameliorates" and no Q1 verb would not match Q1. Only 225 of 7,254 hits were screened.
- Load-bearing claims:
  - Claim: Route 2 screened only 225 of 7,254 hits. Load-bearing: yes. Source that would settle it: Nov 15 test-set routes field, screened 100, 25, 100, hit counts 1305, 25, 5924. Judgment G7.
  - Claim: Q1 verbs differ from Nov 5 verbs, and "ameliorates", "alleviates", "mitigates" are not in Q1. Load-bearing: yes. Source that would settle it: Nov 15 test-set routes field, Q1 query text, and test-set notes, Nov 5 verbs listed.
  - Claim: The Nov 11 Road 1 source B used the Nov 5 verbs and found 0 candidates from 1,951 distinct PMIDs. Load-bearing: yes, as a contrary check. Source that would settle it: ROAD-1-FRESH-SET.json, source_b, usable 0. This counts against the explanation, and lowers its fit.
- Predictions:
  - Prediction: A new Europe PMC query using "ameliorates", a Nov 5 verb absent from Q1, over 2024 to 2026, first 100 hits screened, yields at least 1 usable case. Condition: new query, first 100 hits. Number: at least 1 of 100.
  - Prediction: Screening the unscreened 7,029 Q1 and Q3 hits in order yields at least 1 usable case. Condition: unscreened Q1 and Q3 hits. Number: at least 1.
- Scores: fit 3, testability 5, simplicity 4, product 60.
- Killer test: Run the "ameliorates" query and screen its first 100 hits. If 0 turn usable, and screening the unscreened 7,029 hits also yields 0, this explanation dies.
- Rank: 4.

### Rank 5: Boundary too narrow, family Wrong boundary

- Explanation: The rules drew the usable boundary too narrow. Strict any-axis overlap held 2 cases on code alone. The two-route limit stopped the search at 2 routes. The tuning-list and prior-use exclusions closed more. The boundary excluded nearly everything.
- Load-bearing claims:
  - Claim: Under the triple-plus-PMID reading, usable is 3, not 1. Load-bearing: yes. Source that would settle it: Nov 15 judgment, disease-code ruling, PMID 42750142 and 39773002.
  - Claim: The two-route limit stopped the search at 2 routes. Load-bearing: yes. Source that would settle it: Nov 15 rules, Routes, "Maximum routes: 2. After 2 routes, stop."
  - Claim: Strict any-axis overlap held cases on code alone. Load-bearing: yes. Source that would settle it: Nov 15 test-set notes, 2 candidates held as disease_code_overlap.
- Predictions:
  - Prediction: A rerun of the same two routes under the triple-plus-PMID reading yields 3 usable cases, not 1. Condition: same routes, same pool, reading changed. Number: 3.
- Scores: fit 2, testability 5, simplicity 4, product 40.
- Killer test: Rerun the same two routes under the triple-plus-PMID reading. If usable stays 1, this explanation dies as a cause of the 39-case gap. If usable is 3, it explains 2 of the gap only.
- Rank: 5.

## Stories dropped

- Story dropped: "There are no more genetic rescues to find in 2024 to 2026 literature." Reason in one line: it names no part, link, boundary, input, or rule, and it predicts nothing new.

## Scoring notes

- Fit is judged against the observation, not the model. Pool consumed scores fit 5 because it explains the whole gap, including the falling series 46, 20, 13, 1. Boundary scores fit 2 because it explains 1 to 3 only, 2 of the 39 gap.
- Queries missed scores fit 3, not higher, because Nov 11 source B used the Nov 5 verbs and also found 0 candidates, which counts against it.
- Standard rose scores fit 3, not higher, because Route 2 searched fresh literature where the stricter standard would still allow new cases, and it got 0.
- No explanation was dropped for lack of a prediction. All five carry at least one prediction with a concrete case and a number.
- No verdict on which explanation is true. The killer tests decide that in the next step.
