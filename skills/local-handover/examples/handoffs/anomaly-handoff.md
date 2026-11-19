# Anomaly Hunting handoff, unit U2, router wire run

Run: stage2-router-wire-2026-11-15-01, unit U2.
Skill: Anomaly Hunting, as written in workspace/custom-skills/local-anomaly-hunting/SKILL.md.
Guard: full hunt. Reason: a wrong model here shapes the next curation run, so the step is high impact.
Candidate: CANDIDATE-HANDOVER-V6-ROUTER.md, SHA cea4755f710dfab3eeea04a73d884b1da3f7a887e9eb081ad54f76fb6feea9ed.

## Words

- pass: a check meets its bar.
- fail: a check does not meet its bar.
- gap: work that remains.
- check: the act of verification on the real artifact.

## Handoff record (Step 6, all seven fields)

- Model: Curation under the fixed rules yields at least 40 usable cases per run, as it did on Nov 5 with 46. The Nov 5 failures came from 12 fixable defects, and fixing them plus searching fresh sources yields a fresh 40-case set.
- Prediction: A run applying all 12 Nov 5 fixes across two routes yields at least 40 usable cases. Condition: the run follows CURATION-RULES-2026-11-15.md. Number: at least 40.
- Observation: The Nov 15 run built 1 usable case against a bar of 40, shortfall 39. Route 1 yielded 1 of 207 held entries. Route 2 yielded 0 of 3 queries.
- Source: JUDGMENT-2026-11-15.md, verdict FAIL, counts section, in workspace/handover/raregap-temporal-v2-curation-2026-11-15/. TEST-SET-2026-11-15.json, usable count 1 by my count. HELD-2026-11-15.json, held count 213 by my count. VERIFICATION-2026-11-15.md, counts recomputed, matched.
- Size of gap: 39 cases short of 40, or 97.5 percent short. Route 1: 206 of 207 entries stayed held. Route 2: 0 usable of 225 screened.
- Scores: surprise 5, importance 5, checkability 5, product 125.
- Traps checked: measurement error, cleared, verifier and judge recomputed counts independently and matched 100 percent. Selection bias, checked, the yield is the full run result under the 2-route rule, not a sample; the 2-route limit is part of the observation. Stale model, checked, the model was built on Nov 5 with 46 cases, and conditions changed since: Nov 15 had to exclude all 46 Nov 5 cases plus 334 plus 170 plus the dark hunt set, so the pool was not fresh. Cherry-picked outlier, cleared, the yield is the whole run, not one case, and the falling series 46, 20, 13, 1 shows a pattern, not one outlier.

## Step 1, model and predictions

- Model source: Nov 5 judgment, N equals 46 built in one run. Nov 15 Stage 1 predicate, bar 40. Nov 15 rules file, 12 fixes operationalized, routes defined.
- Prediction 1: A run applying all 12 Nov 5 fixes across two routes yields at least 40 usable cases. Condition: the run follows CURATION-RULES-2026-11-15.md. Number: at least 40.
- Prediction 2: Route 1 re-check of the 207 Nov 5 held entries yields several usable cases, because the fixes unlock held cases whose hold reasons were fixable. Condition: Route 1 as filed. Number: no per-route number was filed, so none is stated. The prediction is directional: several, not 1.
- Prediction 3: Route 2 fresh Europe PMC queries yield new usable cases from 7,254 hits. Condition: Route 2 as filed. Number: no exact number was filed. The prediction is directional: more than 0.

## Step 2, observations

- Observation 1, fits the model: Nov 5 built 46 usable cases. Source: Nov 5 judgment, N equals 46. My count of TEST-SET-2026-11-05.json equals 46.
- Observation 2, fits in part: Nov 9 built 20 cases, method 15 of 20, baseline 17 of 20, bar 19, verdict INCONCLUSIVE. Source: EXECUTION-RECORD.md in handover-2026-11-09-first-principles-embedded, TRACK-B-FRESH-SET-v2.json, 20 cases, SHA b76e2a87c59cf72d45e4fd464436fdd512138e2b98c892b867eaa22291c33187.
- Observation 3, mismatch: Nov 11 set reached 13 of 40, shortfall 27, judge DEAD END. Source: JUDGE-VERDICT.md in handover-2026-11-11-unblockers, set 13 of 40. Correction to the brief: the 13 came from Road 2 in the unblockers run, not from Road 1. Road 1 first route (find-the-road) reached 0 of 40. Source: ROAD-1-FRESH-SET.json, usable 0.
- Observation 4, mismatch: Nov 15 built 1 usable case, shortfall 39. Source: Nov 15 judgment. My count of TEST-SET-2026-11-15.json equals 1.
- Observation 5, mismatch: Route 1 yielded 1 of 207 held entries, 206 stayed held. Source: Nov 15 judgment. Test-set routes field, Route 1 yield_usable 1, hit_count 207.
- Observation 6, mismatch: Route 2 yielded 0 of 3 queries, 7,254 hits, 225 screened. Source: Nov 15 test-set routes field, hit counts 1305, 25, 5924, screened 100, 25, 100. Judgment G7.
- Observation 7, fits the model in part: the 1 usable case V2-001 passed every per-case bar. Source: Nov 15 judgment. V2-001 is FBN1 to S100A8, PMID 41726103, ORPHA:558, first published 2026-01-24.
- Observation 8, context: held reasons by my count of HELD-2026-11-15.json, total 213: rescuer_equals_defect 79, drug_only 28, no_open_full_text 18, not_a_gene_pick 17, previously_used 13, no_demonstrated_rescue 12, meeting_abstract_only 11, no_orpha_or_not_mendelian 10, preprint 7, date_out_of_range 4, not_rescue 3, ambiguous_broken_gene 2, disease_code_overlap 2, no_pmid 1, full_text_not_accessible 1. The test-set notes say the remaining 176 keep Nov 5 reasons "which are substantive, not access problems".

## Selection rule, candidates and estimates

- Candidate 1: total yield 1 against predicted 40, gap 39. Surprise estimate 5. Pursued.
- Candidate 2: Route 1 yielded 1 of 207. Surprise estimate 5. Pursued.
- Candidate 3: Route 2 yielded 0 from 7,254 hits, 225 screened. Surprise estimate 4. Pursued.
- Candidate 4: yields fell across runs, 46 then 20 then 13 then 1. Surprise estimate 4. Not pursued, cap reached. Note: Nov 9 bar was 19, not 40, so the series mixes bars.
- Candidate 5: largest held reason is substantive, rescuer_equals_defect 79 of 213, not a fixable defect. Surprise estimate 4. Not pursued as a separate anomaly. It feeds Abduction as evidence.
- Choice for the third slot: candidate 3 beat candidates 4 and 5 because it is a direct component of the yield gap with filed hit counts. Candidate 4 mixes different bars. Candidate 5 is a composition fact, used as evidence in Abduction.

## Step 3, scores for pursued mismatches

- Anomaly 1, total yield 1 against 40: surprise 5, importance 5, checkability 5, product 125. Surprise 5, because 39 short is a near-total miss. Importance 5, because no matcher test can run, so it decides the next step. Checkability 5, because verifier and judge recomputed 100 percent and counts match.
- Anomaly 2, Route 1 yielded 1 of 207: surprise 5, importance 4, checkability 4, product 80. Surprise 5, because 12 fixes were meant to unlock held cases, and 206 of 207 stayed held. Importance 4, because Route 1 was one of two routes. Checkability 4, because counts are verified, but only 31 of 207 were re-checked by batch query, and 176 kept Nov 5 reasons without re-check.
- Anomaly 3, Route 2 yielded 0 of 7,254 hits, 225 screened: surprise 4, importance 4, checkability 3, product 48. Surprise 4, because 0 new cases came from a large pool. Importance 4, because Route 2 was the fresh-source arm. Checkability 3, because 0 covers only the screened slice, and 7,029 hits were never assessed.

## Step 4, traps per anomaly

- Anomaly 1: measurement error cleared, verifier and judge recomputed independently, counts match 100 percent. Selection bias checked, the yield is the full run result under the 2-route rule, not a sample. Stale model checked, conditions changed since Nov 5: Nov 15 excluded all prior usable cases, so the pool was not fresh. Cherry-picked outlier cleared, the yield is the whole run, and the falling series shows a pattern.
- Anomaly 2: measurement error cleared, counts recomputed. Selection bias checked and cleared with reason: the batch query covered the 31 entries held for access, date, or ambiguity, the fixable subset; the other 176 kept reasons the 12 fixes do not touch, per the test-set notes. Stale model checked, same condition change as anomaly 1. Cherry-picked outlier cleared, 206 of 207 stayed held, a pattern across the pool.
- Anomaly 3: measurement error cleared, hit counts re-run live by the verifier and matched, 1305, 25, 5924. Selection bias NOT cleared: only the first 100 of Q1 (1305) and Q3 (5924) were screened, so the 0 yield covers the screened slice only. This anomaly is noise until a new check clears it. It stays in the record, marked noise. It is not handed on. Stale model checked, query verbs differed from Nov 5 verbs. Cherry-picked outlier checked, 0 of 225 screened is a slice, not one case; the trap that bites is selection bias, not cherry-picking.

## Step 5, ranking

- Rank 1: anomaly 1, total yield 1 against 40, product 125.
- Rank 2: anomaly 2, Route 1 yielded 1 of 207, product 80.
- Rank 3: anomaly 3, Route 2 yielded 0 of 7,254 hits, product 48, marked noise on selection bias.
- No ties. No tie-break rule was needed.
- Handed on: anomaly 1 only, per Step 6.

## Counts I ran myself

- TEST-SET-2026-11-15.json, cases: 1.
- HELD-2026-11-15.json, held entries: 213.
- TEST-SET-2026-11-05.json, cases: 46.
- Held reasons sum to 213. Substantive reasons (rescuer_equals_defect 79, drug_only 28, not_a_gene_pick 17, no_demonstrated_rescue 12) sum to 136.
- Route 2 hits: 1305 plus 25 plus 5924 equals 7,254. Screened: 100 plus 25 plus 100 equals 225. Unscreened: 7,254 minus 225 equals 7,029.
