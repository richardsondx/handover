# Falsification handoff, Priority 3, Proof phase

Run: p3-router-proof-2026-11-19-01.
Date: 2026-11-19.
Skill: Falsification, as written in skills/local-falsification/SKILL.md (clone copy).
Input: the ranked explanations from ABDUCTION-HANDOFF.md, Nov 15, 2026, in workspace/handover/handover-router-wire-2026-11-15/. All three handed-on explanations carry a prediction with a condition and a number, and a killer test named before any result was known.

## Guard: full falsification

- Decision to make: yes, which explanation guides the next curation run.
- Could a wrong explanation cost time, money, or trust: yes, a wrong survivor sends the next run down a dead route and spends its budget.
- Would killing the top explanation change what I do next: yes, killing Pool consumed changes the next run's route entirely.
- Pick: full falsification. All steps, for every ranked explanation handed in.
- Stop rule set before the tests started: maximum 3 tests per explanation. Tests run in this proof: 1 (Rank 3 only). Within the limit.

## Step 1: restated explanations and predictions

### Rank 1: Pool consumed

- Explanation: the Nov 5 run took 46 usable cases from the literature pool, and the Nov 15 run had to exclude all 46 plus 334 plus 170 plus the dark hunt set. What remained was the Nov 5 leftovers: 207 held entries, held for substantive reasons, not fixable defects.
- Prediction: re-checking the 176 unre-checked held entries under Nov 15 rules yields 5 or fewer usable cases.
- Condition: the 176 entries that kept Nov 5 reasons.
- Number: 5 or fewer of 176.
- Note: the source Abduction handoff reads fewer than 5 here. This proof restates it as 5 or fewer so exactly 5 falls in one world. The source file sits outside the clone and was not touched.

### Rank 2: Standard rose

- Explanation: the evidence standard rose between Nov 5 and Nov 15. Nov 5 accepted bare-number codes, thin mapping provenance, and cell-only, partial, and variant rescues. Nov 15 required ORPHA-prefixed codes, filed mappings with a named source, PubMed-verified dates, and full papers only.
- Prediction: re-applying Nov 15 rules to the Nov 5 46 cases holds at least 5 of them.
- Condition: the 46 Nov 5 cases, Nov 15 rules.
- Number: at least 5 held of 46.

### Rank 3: Wrong link

- Explanation: the 12 fixes targeted the wrong thing. The fixes addressed documentation of the Nov 5 set, code format, mapping provenance, date notes, and log format, not the usability of held entries. The assumed link, fix the 12 gaps and more usable cases follow, was never shown.
- Prediction: listing the 12 Nov 5 fixes against the held-entry reasons shows at most 2 fixes change whether a held entry can become usable.
- Condition: the 12 fixes from the Nov 5 judgment against the held reasons in HELD-2026-11-15.json.
- Number: at most 2 of 12.

## Step 2: two worlds and the separating observation

### Rank 1: Pool consumed

- World A: the pool was picked over, and the remaining entries are held for substantive reasons. The 176 re-check yields 5 or fewer usable cases.
- World B: the pool still holds usable cases, and the fixes or the routes missed them. The 176 re-check yields more than 5 usable cases.
- Separating observation: the usable count from re-checking the 176 unre-checked held entries under Nov 15 rules.

### Rank 2: Standard rose

- World A: the Nov 15 bar is stricter, and Nov 5 cases fail it. Re-applying Nov 15 rules to the 46 holds at least 5.
- World B: the bar did not rise enough to explain the gap, and Nov 5 cases pass Nov 15 rules. Re-applying the rules holds fewer than 5.
- Separating observation: the held count from re-applying Nov 15 rules to the Nov 5 46 cases.

### Rank 3: Wrong link

- World A: the 12 fixes touch documentation, not usability. At most 2 of the 12 change whether a held entry can become usable.
- World B: the fixes do unlock held entries. Three or more of the 12 change whether a held entry can become usable.
- Separating observation: the count of the 12 fixes that change whether a held entry can become usable, judged against the 213 held reasons and their notes.

## Step 3: tests named before the result is known

All three killer tests were named in the Abduction handoff on Nov 15, 2026, before any result was looked at. No test in this proof was named after its result was known.

### Rank 1: Pool consumed

- Test: re-check the 176 unre-checked held entries under Nov 15 rules.
- Source that settles it: HELD-2026-11-15.json, the 176 entries that kept Nov 5 reasons, re-checked case by case.
- Observation expected in World A: 5 or fewer turn usable.
- Result that kills: more than 5 turn usable.

### Rank 2: Standard rose

- Test: re-apply Nov 15 rules to the Nov 5 46 cases.
- Source that settles it: TEST-SET-2026-11-05.json, the 46 cases, checked against CURATION-RULES-2026-11-15.md, including full-paper reads.
- Observation expected in World A: at least 5 held.
- Result that kills: fewer than 5 held.

### Rank 3: Wrong link

- Test: list each of the 12 Nov 5 fixes and mark whether it changes a held entry's usability, judged against the 213 held reasons and their notes.
- Source that settles it: stage1-package.md section 5 (the 12 fixes) and HELD-2026-11-15.json (213 held entries with reasons and notes).
- Observation expected in World A: at most 2 of 12 change usability.
- Result that kills: 3 or more change usability.

## Step 4: test runs

### Rank 1: Pool consumed

- Test run: not run. Re-checking 176 held entries is curation work. No manifest in this proof run authorizes it. The P3 manifest allows reads and counts only.
- Observation recorded: none. No observation is claimed.
- Source: none.

### Rank 2: Standard rose

- Test run: not run. Re-applying Nov 15 rules to 46 cases needs full-paper reads for each case. No manifest in this proof run authorizes it.
- Observation recorded: none. No observation is claimed.
- Source: none.

### Rank 3: Wrong link

- Test run: listed all 12 fixes against the 213 held reasons and their notes, Nov 19, 2026, read-only. Counted with the commands in the verification file.
- Observation recorded: 0 of the 12 fixes change whether a held entry can become usable. See the fix table below.
- Source: stage1-package.md section 5 in workspace/handover/raregap-temporal-v2-curation-2026-11-15/, and HELD-2026-11-15.json in the same folder.

#### Fix table, 12 fixes against the held reasons

- Fix 1, baseline support: binds the next matcher test, not this curation run. Changes no held entry. No.
- Fix 2, disease signal source with coverage: binds the next matcher test. Changes no held entry. No.
- Fix 3, tuning list ORPHA:791: excludes cases. It tightens the pool, it does not unlock an entry. No.
- Fix 4, prior use rule: excludes cases evaluated in a non-frozen working file. It tightens the pool. No.
- Fix 5, mappings filed as additions: no held reason names a missing mapping. No entry is held for mapping provenance. No.
- Fix 6, primary arm rule with tiebreaks: the 4 ambiguous entries stay held on re-check, and the notes say so in plain words. PMID 42139290, hold reason NOT fixed, five mutations across two genes. PMID 41383013, hold reason NOT fixed, diverse genetic backgrounds. PMID 38761376, hold reason not fixed, ortholog maps to 4 human genes. PMID 38051321, hold reason stands, direction of rescue unclear. The arm rule picks an order, it does not create a single canonical gene where none exists. No.
- Fix 7, model, fullness, rescuer type, and endpoint recorded: no held reason names a missing record. The 12 no_demonstrated_rescue entries show no rescue, which is substantive, not a missing field. No.
- Fix 8, re-report rule: excludes triples published before the cutoff. It tightens the pool. No.
- Fix 9, PubMed dates and Orphanet codes, ORPHA-prefixed: the 4 date_out_of_range entries carry PubMed-verified 2023 and 2022 dates, genuinely out of range, so verification confirms the hold. The 10 no_orpha entries split 5 not Mendelian (substantive) and 5 with no ORPHA code for the pair (absence recorded as a finding, and verification can confirm absence, not mint a code). Closest call in this test, and the call is No on the notes as filed. No.
- Fix 10, exclusion counting method: a counting method only. It changes no single entry's usability. The 2 disease_code_overlap entries turn on the triple-plus-PMID reading, not on this fix. No.
- Fix 11, Tier 1 qualifier and base list release dates: binds the next matcher test. No.
- Fix 12, decision log format and ledger spawn counting: paperwork. No.

## Step 5: verdicts

- Rank 1, Pool consumed: untested. The killer test was named before the result, but it did not run in this proof run. No verdict is claimed from old data.
- Rank 2, Standard rose: untested. The killer test was named before the result, but it did not run in this proof run. No verdict is claimed from old data.
- Rank 3, Wrong link: surviving. The test ran, the observation was 0 of 12, the kill condition was 3 or more, and the source is named. Survival is not proof. It means the explanation lived through one test that could have killed it.

## Step 6: ranked survivors

- Rank 1 survivor: Wrong link. Test: list the 12 fixes against the held reasons. Observation: 0 of 12 change usability. Hardest test first is the only test run, so it ranks first by default.
- No other explanation survives. The untested list holds Ranks 1 and 2, with the reason named in Step 5.

## Step 7: what would change the verdict

- Wrong link: if a fresh count of the 12 fixes against the held reasons shows 3 or more fixes change whether a held entry can become usable, this explanation dies.

## Handoff record

- Explanation and prediction: Rank 1 Pool consumed, 5 or fewer of 176 usable on re-check. Rank 2 Standard rose, at least 5 of 46 held on re-application. Rank 3 Wrong link, at most 2 of 12 fixes change usability.
- World A and World B: Rank 1, pool picked over vs pool still holds usable cases. Rank 2, stricter bar holds cases vs bar did not rise enough. Rank 3, fixes touch documentation vs fixes unlock held entries.
- Separating observation: Rank 1, usable count from re-checking the 176. Rank 2, held count from re-applying the rules to the 46. Rank 3, count of fixes that change usability.
- Test named before the result is known: all three killer tests were named in the Abduction handoff on Nov 15, 2026, before any result was looked at.
- Test run, observation recorded, source: Rank 1, not run, no observation, no source. Rank 2, not run, no observation, no source. Rank 3, run Nov 19, 2026, observation 0 of 12, source stage1-package.md section 5 and HELD-2026-11-15.json.
- Verdict: Rank 1 untested, Rank 2 untested, Rank 3 surviving.
- Ranked survivors: Wrong link only.
- What would change the verdict: if a fresh count shows 3 or more of the 12 fixes change whether a held entry can become usable, Wrong link dies.

## Supporting count, not a test

- The 176 unre-checked held entries break down as: rescuer_equals_defect 79, drug_only 28, not_a_gene_pick 17, no_demonstrated_rescue 12, meeting_abstract_only 11, no_orpha_or_not_mendelian 10, previously_used 9, date_out_of_range 4, not_rescue 3, no_pmid 1, no_genetic_broken_gene 1, no_human_backup_gene 1. Sum 176. This count re-reads old data. It is not the Rank 1 killer test, and it supports no verdict.
