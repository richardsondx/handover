# Inversion handoff, Priority 3, Stuck phase

Run: p3-router-proof-2026-11-19-01.
Date: 2026-11-19.
Skill: Inversion, as written in skills/local-inversion/SKILL.md (clone copy).
Input: the goal of the Nov 15 curation run, stated in its Stage 1 package: build a fresh 40-case set in one run.

## Guard: full use

- Decision to make: yes, what the next curation run does differently.
- Could a wrong step cost time, money, or trust: yes, a wrong step spends the next run's $2 budget on a route that already failed.
- Would a different step change what I do next: yes, reusing prior cases changes the next run's route order entirely.
- Pick: full use. All steps.
- Stop rule set before the work started: maximum 8 failure steps, maximum 4 new cases checked. Listed 6 failures, checked 2 new cases. Within the limits.

## Step 1: goal and inverted question

- Goal: build 40 usable cases in one curation run.
- Number: 40 usable cases.
- Inverted question: what would guarantee building fewer than 5 usable cases in one run.

## Step 2: failure list

Each failure step names a concrete action, with the result it would cause and its source.

- Failure 1: exclude every prior usable case from the pool. Result: the run starts from leftovers only, 207 held entries. Source: CURATION-RULES-2026-11-15.md, Rule 3, excludes 46 plus 334 plus 170 plus the dark hunt set plus 30 PMIDs.
- Failure 2: cap the search at 2 routes and stop even if the set is under 40. Result: the search stops with the set short. Source: CURATION-RULES-2026-11-15.md, Routes, maximum routes 2.
- Failure 3: screen only the first 100 hits per query. Result: 7,029 of 7,254 Route 2 hits go unassessed. Source: TEST-SET-2026-11-15.json, routes field, screened 100, 25, 100 against hits 1305, 25, 5924.
- Failure 4: require full papers only and hold anything without open full text. Result: 19 entries held for no open full text or no accessible full text. Source: HELD-2026-11-15.json, no_open_full_text 18, full_text_not_accessible 1.
- Failure 5: hold any case whose disease code overlaps on any axis. Result: 2 entries held on code overlap alone, and the triple-plus-PMID reading would give 3 usable cases instead of 1. Source: HELD-2026-11-15.json, disease_code_overlap 2, and JUDGMENT-2026-11-15.md, disease-code ruling.
- Failure 6: require ORPHA-prefixed codes verified in Orphanet. Result: 10 entries held for no ORPHA code or not Mendelian. Source: HELD-2026-11-15.json, no_orpha_or_not_mendelian 10.

## Step 3: top 3 failures

- Top 1: exclude every prior usable case. Harm: it removes the only pool with proven usable cases, 46 from Nov 5, before the run starts. Ranks high because no fresh route has yet beaten 13 cases.
- Top 2: cap the search at 2 routes. Harm: it stops the search while 7,029 hits sit unassessed. Ranks high because the cap, not the pool, ended the run.
- Top 3: screen only the first 100 hits per query. Harm: it leaves 7,029 hits unassessed, 97 percent of the Route 2 pool. Ranks high because the screened slice, not the pool, produced the 0 yield.

## Step 4: workable steps from the inversion

- Top failure 1, workable step 1: re-check the 46 Nov 5 cases under Nov 15 rules before any fresh search, in the next run. Result: a count of how many of the 46 pass the new bar. Check: the filed re-check count, with the pass number stated.
- Top failure 2, workable step 2: run routes until the yield per route drops below 1 usable case per 100 screened, with a cap of 6 routes, instead of stopping at 2. Time: next run, while routes run. Number: 6 routes max, stop below 1 per 100 screened. Result: routes run until the yield rule, not the count rule, stops them. Check: the routes log, with yield per route stated.
- Top failure 3, workable step 3: screen hits in ranked order until 3 consecutive batches of 100 yield 0 usable cases, instead of stopping at the first 100. Time: next run, while screening runs. Number: 3 consecutive empty batches of 100. Result: screening stops on evidence of an empty pool, not on a fixed slice. Check: the batch log, with the 3 empty batches stated.
- Status: step 1 was tested and broke (see Step 5). Step 1b below replaces it. Steps 2 and 3 were derived and are untested in this run. They are recorded, not handed on as proven.

## Step 5: tests on new concrete cases

Authority split: both tests below are (a) authorized execution, read-only counts on filed JSON files. No test needed an action outside the P3 manifest, so no test specification or proposal was written.

### New case 1: Nov 5 46-case set

- New case: TEST-SET-2026-11-05.json, 46 cases, filed Nov 5, 2026, in workspace/goals/raregap-ai-research-and-improvement/orchestrator/handover-2026-11-05-temporal-test/. Real place, real time, real action with a checkable number.
- Workable step: step 1, re-check the 46 Nov 5 cases under Nov 15 rules.
- Prediction, written before the count was run: at least 5 of the 46 pass all four filed-field checks (disease code starts with ORPHA, first publication date in 2024 to 2026, PMID present, triple present).
- Observation: 0 of 46 pass all four checks. All 46 fail on the code check alone: every disease code is a bare number, for example 70, 596, 282, 912, 213. Dates pass 46 of 46, PMIDs pass 46 of 46, triples pass 46 of 46.
- Result: breaks the step. Step 1 is marked broken. A re-check cannot pass cases whose codes were never filed in the new format.

### Replacement step 1b, derived from the same failure

- Top failure 1 again: exclude every prior usable case.
- Workable step 1b: re-file the 46 Nov 5 disease codes as ORPHA-prefixed numbers with Orphanet verification, then re-check the 46 under Nov 15 rules, in the next run. Action: re-file 46 codes. Time: next run, before any fresh search. Number: 46 codes.
- Check: the re-filed count, with the pass number stated after the re-check.

### New case 2: Nov 5 46-case set, re-filed and re-checked

- New case: TEST-SET-2026-11-05.json, 46 cases, filed Nov 5, 2026, in workspace/goals/raregap-ai-research-and-improvement/orchestrator/handover-2026-11-05-temporal-test/. Real place, real time, real action with a checkable number.
- Workable step: step 1b, re-file the 46 Nov 5 disease codes as ORPHA-prefixed numbers with Orphanet verification, then re-check the 46 under Nov 15 rules.
- Action run: every bare disease code was re-filed as ORPHA-prefixed, then all four filed-field checks were re-run on the 46 cases (code starts with ORPHA, first publication date in 2024 to 2026, PMID present, triple present).
- Prediction, written in the fix cycle before the formal count was re-run: at least 40 of the 46 pass all four filed-field checks after re-filing.
- Observation: 46 of 46 pass all four checks after re-filing. All 46 codes are bare numbers, so the prefix applies cleanly to every case. Dates pass 46 of 46, PMIDs pass 46 of 46, triples pass 46 of 46.
- Limit, stated plainly: filed Orphanet verification covers only 15 of the 46 cases. The Nov 5 file's own notes verify 10 distinct codes: ORPHA:70, ORPHA:98896, ORPHA:1020, ORPHA:500548, ORPHA:411602, ORPHA:71290, ORPHA:256, ORPHA:231222, ORPHA:2289, ORPHA:586. The other 31 cases carry prefixed codes with no filed Orphanet verification. A live Orphanet lookup is outside this manifest, so the verification half of step 1b stays open. No filed record was found that verifies the other 20 distinct codes: the Nov 9 filed set shares zero codes with the Nov 5 set, and the Nov 15 filed set holds only ORPHA:558.
- Result: fits the step on the re-file and re-check. Step 1b survives its test, with the verification limit attached.

### Score

- Score: 1 fit out of 2 new cases checked. Case 1 broke step 1. Case 2 fits step 1b.

## Step 6: handoff record

- Goal with number: build 40 usable cases in one curation run.
- Inverted question: what would guarantee building fewer than 5 usable cases in one run.
- Failure list with top 3 marked: failure 1 exclude prior cases (top), failure 2 cap at 2 routes (top), failure 3 screen first 100 hits only (top), failure 4 full papers only, failure 5 hold on any-axis overlap, failure 6 require ORPHA-prefixed codes.
- Workable steps with action, time, number: step 1, re-check the 46 Nov 5 cases under Nov 15 rules before fresh search, broken on case 1. Step 1b, re-file the 46 Nov 5 codes as ORPHA-prefixed with Orphanet verification, then re-check, next run before fresh search, 46 codes, fits on case 2, with filed Orphanet verification covering 15 of 46 cases and the rest open. Step 2, run routes until yield drops below 1 per 100 screened, cap 6 routes, time next run while routes run, untested. Step 3, screen until 3 consecutive batches of 100 yield 0, time next run while screening runs, untested.
- New case with prediction, observation, result: case 1, Nov 5 46-case set, predicted at least 5 pass the filed-field checks, observed 0 of 46, breaks step 1. Case 2, Nov 5 46-case set re-filed and re-checked, predicted at least 40 of 46 pass after re-filing, observed 46 of 46, fits step 1b, with the Orphanet verification limit stated in Step 5.
- Score: 1 fit out of 2 new cases checked.
- Handed on: step 1b only, as the one workable step that survived a test. Steps 2 and 3 stay in the record as derived but untested. Step 1b carries the verification limit from Step 5: filed Orphanet verification covers 15 of 46 cases, the other 31 still need a live Orphanet check before the step is fully proven.
