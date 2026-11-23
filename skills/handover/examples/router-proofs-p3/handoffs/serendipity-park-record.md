# Serendipity park record, Priority 3, Search phase, Stage 2 boundary test

Run: p3-router-proof-2026-11-19-01.
Date: 2026-11-19.
Skill: Serendipity and the Prepared Mind, as written in skills/serendipity/SKILL.md (clone copy).
Envelope: stage2-manifest-p3-2026-11-19.json in this folder. Scope: router proofs in the clone only, reads and counts only, no curation, no RareGap file edits, no new unit.
This is a park record, not a finding handoff. The observation was followed with a small test, confirmed, and then parked because the finding is already owned as queued gap G1. No new unit starts from this record. No test beyond the small recount ran. No result beyond the recount is claimed.

## Guard: light check

- Decision to make: yes, follow the surprise or park it.
- Could a wrong follow up cost time, money, or trust: yes, a curation audit would spend this run's scope on RareGap work outside the manifest.
- Would a different reading change what I do next: yes, following it would start an audit unit, parking it keeps the run on router proofs.
- Pick: light check. Steps 1 to 3 only, then state the judgement and stop. The small test in Step 3 is the recount already run as evidence for the Falsification proof in this same run, so no new work was started to follow it. Steps 4 and 5 below close the record from that already-run test.

## Step 1: the unexpected observation

- Observation: the Nov 15 Anomaly handoff lists 15 held reasons that sum to 208, while the handoff states a total of 213 held entries.
- Expected: the listed reasons sum to the stated total, 213.
- Surprise: the listed reasons fall short by 5 entries.
- Source: ANOMALY-HANDOFF.md, Observation 8, in workspace/handover/handover-router-wire-2026-11-15/, read Nov 19, 2026.
- Number: listed reasons sum to 208, stated total 213, shortfall 5.

## Step 2: judgement, 3 checks

- Repeats: yes. Seen 2 times. The Nov 15 verifier saw the same shortfall and filed it as Mismatch 1 in VERIFICATION-2026-11-15.md. This run saw it again on the first read of the handoff. The first version of this record marked repeats no, counting only this run. That was wrong: the skill asks whether the observation repeats, and a second sighting by the Nov 15 verifier is a repeat. This fix corrects the mark.
- Touches the goal: no. The P3 goal is router proof coverage. A RareGap held-reason audit does not touch that goal.
- Small test exists: yes. Recount HELD-2026-11-15.json by reason and compare it with the handoff list.
- Score: 2 of the 3 checks say yes. The skill says follow, so the observation is followed with the small test in Step 3.
- Stage 2 boundary: following the surprise past the small test would mean auditing and correcting a RareGap proof file. The P3 manifest authorizes proofs in the clone only and names RareGap file edits as prohibited. The follow-up past the recount stays outside the envelope.

## Step 3: small test

- Test: recount HELD-2026-11-15.json by reason and compare the counts with the 15 reasons listed in the Anomaly handoff. Read-only, 0 dollars.
- Confirms: the recount shows the listed reasons sum to 208 against a true total of 213, shortfall 5, with the 5 missing reasons named.
- Breaks: the recount shows the listed reasons sum to 213, or the total is not 213.
- Cost: 0 dollars. The recount was already run as evidence for the Falsification proof in this same run (held reasons recomputed from HELD-2026-11-15.json: 213 entries across 20 reasons, including the 5 singleton reasons missing from the handoff list). No new work was started for this test.
- Result: confirms. The listed reasons sum to 208. The true total is 213. The shortfall is 5, and the 5 missing reasons are the singletons: ambiguous_backup_gene 1, ambiguous_rescue 1, no_genetic_broken_gene 1, no_human_backup_gene 1, not_mendelian 1.

## Step 4: keep what the test confirms

- Result: the test confirms the observation, with its number: listed 208, total 213, shortfall 5.
- Matches: confirms.
- Decision: keep the observation. It is a confirmed finding, not a hunch.

## Step 5: reject coincidences

- Other explanation: the handoff total 213 is wrong, and the listed 208 is right. Ruled out: yes. The recount of HELD-2026-11-15.json gives 213 entries. The total is right.
- Other explanation: the 5 missing entries do not exist, and the handoff list is complete. Ruled out: yes. The 5 singleton reasons are in the file, 1 entry each. The list is short by 5.
- Rival that remains: none on the arithmetic. The open question is ownership, not truth. The finding is already owned as queued gap G1 in JUDGMENT-2026-11-15.md: "It stands as Queued gap G1", section G1, "Held-reason breakdown in the Anomaly handoff sums to 208, not 213", with the next step already assigned there (correct the list, or mark it partial, in the next proof record). Test that settled it: read that file's G1 section. Read Nov 19, 2026: the judgment owns the mismatch as queued gap G1, so no new audit starts from this record.

## Handoff record, park form

- Observation with source and number: Anomaly handoff Observation 8 lists reasons summing to 208 against a stated total of 213, shortfall 5, source ANOMALY-HANDOFF.md.
- Judgement: 3 checks marked yes or no: repeats yes, seen 2 times, touches the goal no, small test exists yes. Followed at 2 of 3.
- Test with cost: recount of HELD-2026-11-15.json by reason, cost 0 dollars, already run as Falsification evidence in this run.
- Result with number, kept or dropped: confirmed, listed 208 against total 213, shortfall 5, kept.
- Rejected coincidences with reason: the total 213 being wrong, ruled out by the recount; the 5 missing entries not existing, ruled out by the 5 singletons in the file.
- Rival with test that would settle it: none on the arithmetic. Ownership is already settled: the finding is queued gap G1 in JUDGMENT-2026-11-15.md, read Nov 19, 2026, so this record parks it there and starts nothing new.

## What was not done, boundary check

- No audit unit was spawned.
- No Nov 15 file was edited.
- No correction was filed to the Anomaly handoff.
- No curation work was started.
- The surprise is recorded here only, parked as already-owned queued gap G1, for the next RareGap run to pick up if it chooses.
