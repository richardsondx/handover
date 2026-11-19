# Examples for scripts/check-handover.sh

- stage2-manifest-router-wire-2026-11-15.json: real Stage 2 manifest from the Nov 15, 2026 router wire run, rendered as JSON. Source of record is the prose manifest in workspace/handover/handover-router-wire-2026-11-15/stage2-manifest.md. Three v7 additions were made when rendering, and are named in the file's notes field: the kit line, tool risk ratings, and the router call log.
- router-call-lines-router-wire-2026-11-15.md: copy of the real PROOF-CALL-LINES.md from the same Nov 15 run. Unedited.
- handoffs/anomaly-handoff.md and handoffs/abduction-handoff.md: copies of the real ANOMALY-HANDOFF.md and ABDUCTION-HANDOFF.md from the same Nov 15 run. Unedited.
- broken-stage2-manifest.json: deliberately broken. It must fail the validator. Faults: no predicateVersion, a tool entry with no risk rating, a verification reserve of 5 percent, failureThresholdN of 0, a cheap-unit collapse that names a unit that does not exist, and a router call log trigger that matches no registry trigger.
- broken-router-call-lines.md: deliberately broken. It must fail the validator. Faults: one call block with no "Why this skill" line, and a second call that names a skill with no handoff file in examples/handoffs/.
