# Constraint-Based Discovery handoff, Priority 3, Search phase

Run: p3-router-proof-2026-11-19-01.
Date: 2026-11-19.
Skill: Constraint-Based Discovery, as written in skills/constraint-discovery/SKILL.md (clone copy).
Input: the three killer tests from the Nov 15 Abduction handoff, competing for the next unit.

## Guard: full use

- Decision to make: yes, which killer test the next unit runs first.
- Could a wrong pick cost time, money, or trust: yes, a wrong pick spends the next unit on a test this run cannot run.
- Would a different pick change what I do next: yes, picking the read-only test means this proof run settles one explanation now, while picking a curation test means it settles none.
- Pick: full use. All steps.
- Stop rule set before the work started: maximum 8 constraints, maximum 6 candidates, maximum 4 new cases checked. Listed 5 constraints, 4 candidates, checked 1 new case. Within the limits.

## Step 1: constraints

- Constraint 1, runnable read-only in this run: the test uses only filed records, no new curation, no live fetch. Source: the P3 manifest, tools allowlist, reads and counts only.
- Constraint 2, kill condition already filed: the test's kill line must already be filed in the Abduction handoff, named before any result was known. Source: ABDUCTION-HANDOFF.md, Nov 15, 2026.
- Constraint 3, source is a filed record: the test's source must name an exact filed file. Source: router-rules-v02.md, Falsification handoff fields.
- Constraint 4, cost zero dollars: the test spends nothing. Source: the P3 manifest, budget ledger, cost cap 2.00 dollars with no spend in this run.
- Constraint 5, settles at least one explanation: the test must produce a killed or surviving verdict for at least one ranked explanation. Source: Falsification skill, Step 5.

## Step 2: candidates

- Candidate A, re-check the 176 unre-checked held entries: the Rank 1 killer test for Pool consumed. Source: ABDUCTION-HANDOFF.md, Rank 1 killer test.
- Candidate B, re-apply Nov 15 rules to the Nov 5 46 cases: the Rank 2 killer test for Standard rose. Source: ABDUCTION-HANDOFF.md, Rank 2 killer test.
- Candidate C, list the 12 fixes against the held reasons: the Rank 3 killer test for Wrong link. Source: ABDUCTION-HANDOFF.md, Rank 3 killer test.
- Candidate D, new ameliorates Europe PMC query, first 100 hits screened: the Rank 4 killer test for Queries missed the literature. Source: ABDUCTION-HANDOFF.md, Rank 4 killer test.

## Step 3: constraint table

- Candidate A: constraint 1 fail, re-checking 176 entries is curation work, not a read-only count. Constraint 2 pass, kill line filed Nov 15. Constraint 3 pass, source is HELD-2026-11-15.json. Constraint 4 pass, 0 dollars. Constraint 5 pass, it would settle Rank 1. Score: 4 passes out of 5 constraints.
- Candidate B: constraint 1 fail, re-applying the rules needs full-paper reads for 46 cases. Constraint 2 pass, kill line filed Nov 15. Constraint 3 pass, source is TEST-SET-2026-11-05.json. Constraint 4 pass, 0 dollars. Constraint 5 pass, it would settle Rank 2. Score: 4 passes out of 5 constraints.
- Candidate C: constraint 1 pass, a list and count over filed records only. Constraint 2 pass, kill line filed Nov 15. Constraint 3 pass, sources are stage1-package.md section 5 and HELD-2026-11-15.json. Constraint 4 pass, 0 dollars. Constraint 5 pass, it settled Rank 3 as surviving. Score: 5 passes out of 5 constraints.
- Candidate D: constraint 1 fail, a live query plus screening 100 hits is new search work. Constraint 2 pass, kill line filed Nov 15. Constraint 3 fail, the source is a live query, not a filed record. Constraint 4 pass, 0 dollars. Constraint 5 pass, it would settle Rank 4. Score: 3 passes out of 5 constraints.

## Step 4: rejected candidates

- Rejected: candidate A, re-check the 176. Broke: constraint 1, runnable read-only in this run. Number: 176 entries need case-by-case curation. Reason: the test needs work no manifest in this run authorizes.
- Rejected: candidate B, re-apply Nov 15 rules to the 46. Broke: constraint 1, runnable read-only in this run. Number: 46 cases need full-paper reads. Reason: the test needs work no manifest in this run authorizes.
- Rejected: candidate D, ameliorates query. Broke: constraint 1, runnable read-only in this run, and constraint 3, source is a filed record. Number: 1 live query plus 100 hits to screen, source unfiled. Reason: the test is new search work on a live source, not a read-only check of a filed record.

## Step 5: pick and test on a new concrete case

- Pick: candidate C, list the 12 fixes against the held reasons. Score: 5 passes out of 5 constraints. Tie-break: none needed, only one candidate passed all constraints.
- Authority split: the test below is (a) authorized execution, a read-only count over filed records. No test specification or proposal was needed.
- New case: the Nov 5 held list in TEST-SET-2026-11-05.json, 207 entries with a held reason each, filed Nov 5, 2026, in workspace/goals/raregap-ai-research-and-improvement/orchestrator/handover-2026-11-05-temporal-test/. This case was not used in Steps 1 to 4, which used the Nov 15 held file. Action: list the 12 Nov 5 fixes against the 207 Nov 5 held reasons. Number: count of fixes that change usability.
- Prediction: at most 2 of the 12 fixes change whether a Nov 5 held entry can become usable. This restates the Rank 3 prediction filed in the Abduction handoff on Nov 15, 2026, before the Nov 19 counts ran.
- Observation: 0 of the 12 fixes change whether a Nov 5 held entry can become usable. The fix table below judges each fix against the Nov 5 held reasons and their notes.
- Result: fits the pick. The picked test ran on a new case and met every constraint.
- Score: 1 fit out of 1 new case checked.
- Limit, stated plainly: this is a second count on the earlier file, not a fully independent sample. The Nov 5 held list shares 178 of its 179 PMIDs with the Nov 15 held file, and the reason counts match except previously_used 9 here against 13 there, disease_code_overlap 0 here against 2 there, not_mendelian 0 here against 1 there, and not_verified 1 here against 0 there. The count is fresh, but the entries are nearly the same.

#### Fix table, 12 fixes against the Nov 5 held reasons

- Fix 1, baseline support: binds the next matcher test, not this curation run. Changes no held entry. No.
- Fix 2, disease signal source with coverage: binds the next matcher test. Changes no held entry. No.
- Fix 3, tuning list ORPHA:791: excludes cases. It tightens the pool, it does not unlock an entry. No.
- Fix 4, prior use rule: excludes cases evaluated in a non-frozen working file. It tightens the pool. No.
- Fix 5, mappings filed as additions: no Nov 5 held reason names a missing mapping. No entry is held for mapping provenance. No.
- Fix 6, primary arm rule with tiebreaks: the 4 ambiguous entries stay held on re-check, and the notes say so in plain words. PMID 42139290, no single canonical broken gene can be filed, five mutations across two genes. PMID 41383013, no single canonical broken gene can be filed, diverse genetic backgrounds. PMID 38761376, no single canonical backup gene can be filed, human ortholog ambiguous across 4 genes. PMID 38051321, direction of rescue unclear. The arm rule picks an order, it does not create a single canonical gene where none exists. No.
- Fix 7, model, fullness, rescuer type, and endpoint recorded: no Nov 5 held reason names a missing record. The 12 no_demonstrated_rescue entries show no rescue, which is substantive, not a missing field. No.
- Fix 8, re-report rule: excludes triples published before the cutoff. It tightens the pool. No.
- Fix 9, PubMed dates and Orphanet codes, ORPHA-prefixed: the 4 date_out_of_range entries carry verified 2023 and 2022 dates, genuinely out of range, so verification confirms the hold. The 10 no_orpha entries split 5 with no ORPHA code for the pair and 6 with a not-Mendelian note, with 1 entry (PMID 40698069) recording both. Verification can confirm absence, not mint a code. Closest call in this test, and the call is No on the notes as filed. No.
- Fix 10, exclusion counting method: a counting method only. It changes no single entry's usability. No.
- Fix 11, Tier 1 qualifier and base list release dates: binds the next matcher test. No.
- Fix 12, decision log format and ledger spawn counting: paperwork. No.

## Step 6: handoff record

- Problem: pick which Abduction killer test the next unit runs first, under this proof run's limits.
- Constraints with limit and source: runnable read-only in this run (P3 manifest). Kill condition already filed (Abduction handoff). Source is a filed record (router rules v02). Cost zero dollars (P3 manifest). Settles at least one explanation (Falsification skill).
- Candidates with score: A re-check the 176, 4 passes out of 5. B re-apply rules to the 46, 4 passes out of 5. C list the 12 fixes, 5 passes out of 5. D ameliorates query, 3 passes out of 5.
- Rejected candidates with constraint broken: A broke constraint 1, 176 entries need curation. B broke constraint 1, 46 cases need full-paper reads. D broke constraints 1 and 3, live query plus 100 hits to screen, source unfiled.
- Pick with score and tie-break rule: candidate C, list the 12 fixes against the held reasons, 5 passes out of 5 constraints, no tie-break needed.
- Score: 1 fit out of 1 new case checked. The test ran on the Nov 5 held list, 207 entries, a separate count from the Falsification Rank 3 test on the Nov 15 held file. The two held lists share 178 of 179 PMIDs, so the second count is on the earlier file, not a fully independent sample.
