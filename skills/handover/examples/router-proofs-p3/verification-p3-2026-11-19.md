# Verification, Priority 3 router proof coverage

Run: p3-router-proof-2026-11-19-01.
Date: 2026-11-19.
Method: the verifier is the same agent that generated the proofs, so this file is a replay record, not an independent verdict. It replays every count with the commands shown, records the validator output verbatim, and names what the validator cannot check. A fresh independent verifier still needs to rule on it.
Files checked are in skills/handover/examples/router-proofs-p3/. Evidence files are read-only outside the clone.

## Words

- pass: a check meets its bar.
- fail: a check does not meet its bar.
- gap: work that remains, or a check the validator cannot express.
- count: a number recomputed here.

## Verdicts per proof

- P3-U1 Falsification: sealed. Call line, handoff, guard, replay, validator pass, exit 0.
- P3-U2 Inversion: sealed. Call line, handoff, guard, replay, validator pass, exit 0. Fix cycle Nov 19, 2026: case 2 now runs the real re-file check on the 46 Nov 5 codes, and steps 2 and 3 now carry a time. See the fix cycle section.
- P3-U3 Constraint-Based Discovery: sealed. Call line, handoff, guard, replay, validator pass, exit 0. Fix cycle Nov 19, 2026: Step 5 now runs a separate test on the Nov 5 held list, and the manifest path is fixed. See the fix cycle section.
- P3-U4 Negative routing: sealed as a record. No call line exists by design, so no validator pass applies. See the gap note.
- P3-U5 Serendipity boundary: sealed as a park record. Call line and park record pass the validator on label presence, exit 0. The validator cannot check park semantics. Fix cycle Nov 19, 2026: the repeats mark is corrected to yes, the score is 2 of 3, the small test ran and confirmed, and the park now rests on ownership as queued gap G1. See the fix cycle section.
- P3-U6 Manifest: validates, exit 0. Re-validated in the fix cycle after the path and prohibitedActions changes, exit 0.

## Validator results, verbatim

### Baseline, before the proofs were written

- Command: sh scripts/check-handover.sh, from the clone root.
- Output: PASS stage2-manifest-router-wire-2026-11-15.json, PASS units-template.json, PASS handover-schema compact def, PASS Anomaly Hunting call line and handoff, PASS Abduction call line and handoff, checked 2 call lines, handover check pass.
- Exit code: 0.

### P3 manifest check

- Command: sh scripts/check-handover.sh --manifest skills/handover/examples/router-proofs-p3/stage2-manifest-p3-2026-11-19.json
- Output: PASS stage2-manifest-p3-2026-11-19.json, manifest validates. PASS handover-schema compact def. handover check pass.
- Exit code: 0.

### P3 router check, first run

- Command: sh scripts/check-handover.sh --router-call-lines skills/handover/examples/router-proofs-p3/router-call-lines-p3-2026-11-19.md --handoff-dir skills/handover/examples/router-proofs-p3/handoffs
- Output: PASS handover-schema compact def. PASS Falsification. PASS Inversion. FAIL no handoff file found for Constraint-Based Discovery. PASS Serendipity + Prepared Mind. Checked 4 call lines. handover check fail.
- Exit code: 1.
- Cause: the handoff file was named constraint-discovery-handoff.md. The validator looks for the skill slug constraint-based-discovery or the first word constraint-based. Neither appears in that name.
- Fix: renamed the file to constraint-based-discovery-handoff.md. No content changed. The rename is the only fix applied in this run.

### P3 router check, second run, after the rename

- Command: same as the first run.
- Output: PASS handover-schema compact def. PASS Falsification. PASS Inversion. PASS Constraint-Based Discovery. PASS Serendipity + Prepared Mind. Checked 4 call lines. handover check pass.
- Exit code: 0.

### Default run, after all files were written

- Command: sh scripts/check-handover.sh, from the clone root.
- Output: same as baseline, all pass, checked 2 call lines, handover check pass.
- Exit code: 0. The new proofs folder is not covered by the default run; it is covered by the P3 runs above.

### Fix cycle, Nov 19, 2026, after the independent verifier returned Gap with 7 gaps

- Command: sh scripts/check-handover.sh --manifest skills/handover/examples/router-proofs-p3/stage2-manifest-p3-2026-11-19.json
- Output: PASS stage2-manifest-p3-2026-11-19.json, manifest validates. PASS handover-schema compact def. handover check pass.
- Exit code: 0.

### Fix cycle router check

- Command: sh scripts/check-handover.sh --router-call-lines skills/handover/examples/router-proofs-p3/router-call-lines-p3-2026-11-19.md --handoff-dir skills/handover/examples/router-proofs-p3/handoffs
- Output: PASS handover-schema compact def. PASS Falsification. PASS Inversion. PASS Constraint-Based Discovery. PASS Serendipity + Prepared Mind. Checked 4 call lines. handover check pass.
- Exit code: 0.

### Fix cycle default run

- Command: sh scripts/check-handover.sh, from the clone root.
- Output: same as baseline, all pass, checked 2 call lines, handover check pass.
- Exit code: 0. The new proofs folder is not covered by the default run; it is covered by the P3 runs above.

## Fix cycle changes, per gap

- Gap A, stale manifest path: P3-U3 output now names skills/handover/examples/router-proofs-p3/handoffs/constraint-based-discovery-handoff.md, the file that exists. Manifest validator re-run, exit 0.
- Gap B, Inversion case 2: case 2 now runs the actual re-file check on the 46 Nov 5 codes. All 46 bare codes were re-filed as ORPHA-prefixed, then the four filed-field checks were re-run: 46 of 46 pass. Filed Orphanet verification covers 15 of 46 cases (10 distinct codes, from the Nov 5 file's own notes); 31 of 46 cases carry prefixed codes with no filed verification, and that limit is stated in the handoff and in the counts below. The old Nov 9 20-case count is gone. Score stays 1 fit out of 2 new cases checked. Step 1b is handed on with the verification limit attached.
- Gap C, Inversion steps 2 and 3: each step now names a time. Step 2: next run, while routes run. Step 3: next run, while screening runs. No source record states a calendar date for the next run, so the time stays relative, in the same form as step 1b (next run, before any fresh search). The time is now in Step 4 and in the Step 6 record.
- Gap D, Falsification Rank 1 exactly-5 hole: the prediction is restated as 5 or fewer usable cases, in Step 1, Step 2 World A, Step 3, and the handoff record. Exactly 5 now falls in World A. The kill line (more than 5 turn usable) is unchanged and already correct. The source Abduction handoff still reads fewer than 5; it sits outside the clone and was not touched. The call line does not state the number, so it needed no change.
- Gap E, Serendipity repeats mark: the repeats mark is corrected to yes, seen 2 times (Nov 15 verifier Mismatch 1, Nov 19 this run). The first version marked it no, counting only this run, which was wrong. Score is now 2 of 3, so the skill says follow. The small test (recount of HELD-2026-11-15.json) ran as Falsification evidence in this run and confirms the observation: listed 208, total 213, shortfall 5. The observation is kept. Following still ends at a park because the finding is already owned as queued gap G1 in JUDGMENT-2026-11-15.md, with the next step already assigned there. No new unit, no audit, no file edit follows.
- Gap F, Constraint Step 5: Step 5 now runs a genuinely separate test on the Nov 5 held list, 207 entries, filed Nov 5, 2026. Prediction restates the Rank 3 prediction filed Nov 15: at most 2 of 12 change usability. Observation: 0 of 12, with a full fix table judged against the Nov 5 held reasons. Score stays 1 fit out of 1 new case checked. Limit stated in the handoff: the Nov 5 held list shares 178 of its 179 PMIDs with the Nov 15 held file, so this is a second count on the earlier file, not a fully independent sample.
- Gap G, manifest prohibits git: prohibitedActions no longer lists bare git. Read-only git (log, status, rev-parse) is allowed and covers the clone sync and status read that opened the run. Commit and push stay prohibited. Manifest validator re-run, exit 0.
- Ordering note: for the two new counts (Inversion case 2, Constraint Step 5), feasibility was scoped first, then the prediction was written into the handoff, then the formal count was re-run and recorded below. The Inversion prediction is new in the fix cycle; the Constraint prediction restates the Rank 3 prediction filed in the Abduction handoff Nov 15, 2026, before the Nov 19 counts ran.
- Nothing in this fix cycle changed a skill rule. No count was changed without recomputing it. No file outside the clone was edited. No push, no commit, no network fetch, no curation work, no full-paper re-scoring.

## Counts recomputed

### Held entries, HELD-2026-11-15.json

- Command: python3 json load, count by reason.
- Held entries: 213. Sum of the 20 reason counts: 213.
- Reason counts: rescuer_equals_defect 79, drug_only 28, no_open_full_text 18, not_a_gene_pick 17, previously_used 13, no_demonstrated_rescue 12, meeting_abstract_only 11, no_orpha_or_not_mendelian 10, preprint 7, date_out_of_range 4, not_rescue 3, ambiguous_broken_gene 2, disease_code_overlap 2, no_pmid 1, full_text_not_accessible 1, ambiguous_backup_gene 1, ambiguous_rescue 1, no_genetic_broken_gene 1, no_human_backup_gene 1, not_mendelian 1.
- All match the Nov 15 verifier recompute.

### Listed reasons in the Nov 15 Anomaly handoff, Observation 8

- Command: python3 sum of the 15 listed numbers.
- Listed sum: 79 plus 28 plus 18 plus 17 plus 13 plus 12 plus 11 plus 10 plus 7 plus 4 plus 3 plus 2 plus 2 plus 1 plus 1 equals 208.
- Shortfall against the stated total 213: 5.
- The 5 missing reasons are the singletons: ambiguous_backup_gene 1, ambiguous_rescue 1, no_genetic_broken_gene 1, no_human_backup_gene 1, not_mendelian 1.
- This matches the Nov 15 verifier Mismatch 1. The Serendipity surprise is real and was already owned there.

### The 176 unre-checked entries

- Command: python3 count of held entries with no 2026-11-15 note.
- Entries without a re-check note: 176.
- Breakdown: rescuer_equals_defect 79, drug_only 28, not_a_gene_pick 17, no_demonstrated_rescue 12, meeting_abstract_only 11, no_orpha_or_not_mendelian 10, previously_used 9, date_out_of_range 4, not_rescue 3, no_pmid 1, no_genetic_broken_gene 1, no_human_backup_gene 1. Sum: 176.
- Note: 37 entries carry a 2026-11-15 note by string match, which is 30 re-checked Nov 5 entries plus 7 Route 2 entries. That matches the HELD notes field, which says 30 of the 206 carry a re-check note.

### Falsification Rank 3, the 12-fix count

- Command: read stage1-package.md section 5 and the held reasons with notes, per fix.
- Fixes that change whether a held entry can become usable: 0 of 12.
- Kill condition was 3 or more. 0 is below it. Verdict surviving stands.
- Closest call: Fix 9, PubMed dates and Orphanet codes. The 4 date entries carry verified 2023 and 2022 dates. The 10 code entries split 5 not Mendelian and 5 with no ORPHA code recorded as a finding. The call is No, stated as a judgement call in the handoff.

### Inversion case 1, Nov 5 46 cases

- Command: python3 json load of TEST-SET-2026-11-05.json, count cases passing all four filed-field checks.
- Cases: 46. Pass all four: 0.
- Fail by check: code not ORPHA-prefixed 46, date outside 2024 to 2026 0, no PMID 0, no triple 0.
- Sample bare-number codes: 70, 596, 282, 912, 213.
- Prediction was at least 5 pass. Observation 0 breaks step 1. The break stands.

### Inversion case 2, Nov 5 46 cases re-filed and re-checked (fix cycle)

- Command: python3 json load of TEST-SET-2026-11-05.json, prefix every disease_code with ORPHA:, re-run all four filed-field checks.
- Cases: 46. All 46 codes are bare numbers, so the prefix applies cleanly to every case.
- Code check after re-file: 46 of 46. Date check: 46 of 46. PMID check: 46 of 46. Triple check: 46 of 46.
- Pass all four after re-filing: 46 of 46.
- Prediction was at least 40 pass. Observation 46 fits step 1b on the re-file and re-check. The fit stands, with the limit below.
- Filed Orphanet verification: the Nov 5 file's own notes verify 10 distinct codes (ORPHA:70, ORPHA:98896, ORPHA:1020, ORPHA:500548, ORPHA:411602, ORPHA:71290, ORPHA:256, ORPHA:231222, ORPHA:2289, ORPHA:586), covering 15 of 46 cases. The other 31 cases (20 distinct codes) have no filed Orphanet verification. The Nov 9 filed set shares zero codes with the Nov 5 set, and the Nov 15 filed set holds only ORPHA:558. A live Orphanet lookup is outside this manifest, so the verification half of step 1b stays open.
- The old Nov 9 20-case count (20 of 20 ORPHA-prefixed codes in TRACK-B-FRESH-SET-v2.json) is removed. It counted a property another set already had and did not run step 1b.

### Constraint Discovery table

- Candidate scores recomputed from the constraint table in the handoff: A 4 of 5, B 4 of 5, C 5 of 5, D 3 of 5. Only C passes all 5. The pick stands.
- Step 5 test, fix cycle: a separate count on the Nov 5 held list, not the Falsification Rank 3 observation. Command: python3 json load of TEST-SET-2026-11-05.json held list, count by reason, judge each of the 12 fixes against the reasons and notes.
- Nov 5 held entries: 207. Reason counts: rescuer_equals_defect 79, drug_only 28, no_open_full_text 18, not_a_gene_pick 17, no_demonstrated_rescue 12, meeting_abstract_only 11, no_orpha_or_not_mendelian 10, previously_used 9, preprint 7, date_out_of_range 4, not_rescue 3, ambiguous_broken_gene 2, no_pmid 1, full_text_not_accessible 1, ambiguous_backup_gene 1, not_verified 1, ambiguous_rescue 1, no_genetic_broken_gene 1, no_human_backup_gene 1. Sum: 207.
- Fixes that change whether a Nov 5 held entry can become usable: 0 of 12. Prediction was at most 2. Observation 0 fits the pick. Score: 1 fit out of 1 new case checked.
- Closest call: Fix 9. The 4 date entries carry verified 2023 and 2022 dates. The 10 no_orpha entries split 5 with no ORPHA code for the pair and 6 with a not-Mendelian note, with 1 entry (PMID 40698069) recording both. The call is No, stated as a judgement call in the handoff.
- Limit: the Nov 5 held list shares 178 of its 179 PMIDs with the Nov 15 held file. The Nov 15 file adds 7 PMIDs and drops 1 (PMID 41726103, the not_verified entry). This is a second count on the earlier file, not a fully independent sample.

### Negative routing task

- Command: git log, git status, git rev-parse HEAD, in the clone, Nov 19, 2026.
- HEAD: 2c1d421642a6559b5de9e5402d0cbddae2d7df2f. Status: clean, no output. Validator baseline exit 0.
- No trigger fired. No call was made. The direct answer stands.
- Fix cycle: the manifest no longer lists bare git in prohibitedActions. Read-only git (log, status, rev-parse) is allowed and covers this status check. Commit and push stay prohibited.

## Handoff field checks, per router rules v02

- Falsification: explanation and prediction, World A and World B, separating observation, test named before the result, test run with observation and source, verdict, ranked survivors, what would change the verdict. All present. Validator label check passed.
- Inversion: goal with number, inverted question, failure list with top 3 marked, workable steps with action, time, number, new case with prediction, observation, result, score. All present. Validator label check passed.
- Constraint-Based Discovery: problem, constraints with limit and source, candidates with score, rejected candidates with constraint broken, pick with score and tie-break rule, score. All present. Validator label check passed.
- Serendipity: observation with source and number, judgement with 3 checks, test with cost, result with number kept or dropped, rejected coincidences with reason, rival with test that would settle it. All present as labels. Validator label check passed. Fix cycle: the record now follows the observation (repeats yes, 2 of 3), confirms it with the recount, keeps it, and parks it as already-owned queued gap G1. See the gap note: the validator checks labels only, not park semantics.

## Gaps, what the validator cannot check

- Gap 1, negative routing: the validator has no no-call mode. It checks call lines and handoffs only. The negative test is sealed by its own record file, not by a validator pass. Do not claim a validator pass for it.
- Gap 2, Serendipity park semantics: the validator checks that the six field labels appear in the park record. It does not check that the judgement score is honest, that the test ran, or that no follow-up action was taken. The park now rests on the record's own statements: repeats corrected to yes with 2 sightings, score 2 of 3, test confirmed, and the finding parked as already-owned queued gap G1, plus git status showing no Nov 15 file changed.
- Gap 3, named-before-result: the validator cannot check that the three killer tests were named before their results were known. That rests on the Abduction handoff filing date, Nov 15, 2026, four days before the Rank 3 test ran on Nov 19.
- Gap 4, prediction order for Inversion: the validator cannot check that the Step 5 predictions were written before the counts ran. That rests on this record's statement plus the fact that the case 1 prediction (at least 5 pass) was wrong, which is what a genuine prediction looks like when it breaks. For the two fix-cycle counts, the ordering note in the fix cycle section states the order: feasibility scoped, prediction written, formal count re-run.
- Gap 5, default run coverage: the default validator run does not cover the P3 folder. The P3 folder is covered only by the explicit --manifest and --router-call-lines runs above. A later change to the default run could hide a P3 regression unless the P3 runs are repeated.

## What this run did not do

- No skill rule was changed. No contradiction between a skill and the router contract was found.
- No file outside the clone was edited. No RareGap file was edited.
- No push, no commit, no network fetch, no curation work, no full-paper re-scoring.
- In the original run, the only fix applied was the handoff filename rename above. The fix cycle changes are recorded in the fix cycle section above.
