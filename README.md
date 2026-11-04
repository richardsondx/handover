# Handover

Turn a rough prompt into a full plan and orchestration, ask only the questions that change the plan with suggested options and tradeoffs, stop at an approve or reject gate, then run the work without babysitting inside the approved envelope.

Version 1, built from architecture draft v0.6, approved Nov 4, 2026.

## Scope for v1

Narrow and supervised only. The only execution pilot in v1 is a research brief: a brief or evidence synthesis a recipient can use, with claims, qualifications, citations, and a reference and evidence ledger.

V1 is not operational for unattended runs, live data operation, arbitrary fields, three level fan out, or automatic learning changes. Those are deferred until the pilot passes its proof tests.

## Use in Muse

The skill is in `skills/local-handover/`:
- `SKILL.md`: translator, options first questions, two stage approval, coordinator, verifier, judge, decision trail, budget ledger, stuck ladder, and field kit generator.
- `skill.yaml`: skill metadata for discovery.

Copy that folder into your Muse custom skills folder to use it, or use it from this repo as the source of truth for the skill text.

## Documents

- `docs/architecture-draft-v0.6.md`: full v1 architecture, with two stage approval, harness enforced gates, budget ledger, resume protocol, verification coverage, and options first user experience.
- `docs/verification-gap.md`: what is still unproven, and the tests that close each gap.
- `docs/browser-study-reconciliation.md`: what the Poteto, m4lkxx, and YouTube sources actually said, with corrections to earlier notes.

## Status

- Private repo, created Nov 4, 2026, empty before this upload.
- Skill v1 is local and discoverable in Muse as `local_handover`.
- No deploy, no external sends, and no unattended operation in v1.
