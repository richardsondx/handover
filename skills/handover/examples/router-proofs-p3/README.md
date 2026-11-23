# Priority 3 router proof coverage, Nov 19, 2026

Run: p3-router-proof-2026-11-19-01.
Home: skills/handover/examples/router-proofs-p3/.
Pattern: same sealed pattern as the Nov 15 router wire run, call line, handoff record, guard evaluation, verification replay.
Validator: sh scripts/check-handover.sh, run from the clone root. See verification-p3-2026-11-19.md for full output.

## Files

- router-call-lines-p3-2026-11-19.md: the four call lines, phase moves, and skills not called with reasons.
- handoffs/falsification-handoff.md: Proof phase proof, Rank 3 killer test run for real, Ranks 1 and 2 marked untested, one survivor.
- handoffs/inversion-handoff.md: Stuck phase proof, one step broken on a new case, replacement step fits on a second new case, score 1 of 2.
- handoffs/constraint-based-discovery-handoff.md: Search phase proof, pick passes 5 of 5 constraints, tested on a new case, score 1 of 1.
- handoffs/serendipity-park-record.md: Search phase boundary test, out-of-scope surprise parked at Step 2, no follow-up action.
- negative-routing-2026-11-19.md: negative test, real status-check task with no trigger fired, coordinator answered directly.
- stage2-manifest-p3-2026-11-19.json: the run manifest, scope and envelope for the proofs.
- verification-p3-2026-11-19.md: replay of every count, validator output verbatim, gaps the validator cannot check.
- README.md: this file.

## Validator results

- P3 manifest: pass, exit 0.
- P3 router call lines: pass, exit 0, 4 call lines checked, after one filename rename (see verification file).
- Default validator run: pass, exit 0, unchanged.
- Negative routing: no validator mode exists, sealed by record only.
