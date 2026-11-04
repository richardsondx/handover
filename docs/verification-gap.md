# Verification gap, Nov 4, 2026

Question: why was the v0.6 review verdict subject to Richardson's approval, and what is still unproven?

## Short answer

Two separate reasons, do not collapse them.

1. Reviewers reviewed a paper design, not a working system. Terra stated its assessment was of draft rules, not evidence of a working implementation. A design can be sound and still fail in Muse, because the mechanisms it relies on have not been run.
2. In Handover itself, approval is what creates authority. A reviewer cannot create an envelope, a predicate, or a budget for you. Only your approve tap does that. So subject to your approval is not hedging, it is the design working as intended. Without your approval, there is no authorized scope to run inside.

Building v1 is low risk because it is local, supervised, and read only in its pilot. Using it unattended or on live data is high risk because the gaps below are still open.

## Gap map: claim, evidence today, test that closes it

1. Harness gates. Claim: the harness blocks disallowed tools, targets, and arguments, and taint from external content escalates. Evidence today: none in Muse. No mediation layer has been built or run. Test that closes it: simulated gated action, injection attempt to redirect an allowed tool, and payload modification after approval, all must block or escalate in every case, before live data is used.
2. Structural diff and closed bundle. Claim: a consequential change cannot pass as an empty diff. Evidence today: no bundle implementation, no mutation tests run. Test: adversarial mutations to an unmarked script or configuration, must not pass as an empty diff, and untracked changes must be denied or reapproved.
3. Budget ledger. Claim: reservations, reconciliation, refund, verification reserve, and blocking at the limit. Evidence today: no ledger code, and Muse metering may make the limit advisory, not hard. Test: concurrent spawns, model and paid tool spend, exhaustion, and refund, with the advisory label applied honestly if blocking is unavailable.
4. Resume and duplicate runs. Claim: durable state machine, lease fencing, idempotency, reconciliation of uncertain external actions. Evidence today: no state machine built, and Muse scheduler and resume after a restart are unproven. Test: crash at a side effect boundary, duplicate invocation, and a stalled worker waking after lease expiry, all must not duplicate an external action.
5. Verification coverage and judge independence. Claim: verifier independent, judge in fresh context, sampling rules stated, known bad artifacts rejected. Evidence today: no test set for the pilot artifact type, and subagent context separation in Muse is untested for this use. Test: every known bad artifact in the test set rejected, plus biased sample, fabricated citation, and injected instruction tests.
6. Skill loading. Claim: a generated kit loads, with correct frontmatter, precedence, and reload. Evidence today: untested for a generated Handover kit. Test: a real generated skill through the actual loader, including invalid frontmatter, name collision, precedence against user skills, reload, and restart.
7. Approval surfaces and comprehension. Claim: you can state back what was approved, what will be checked, and what limit applies, including tools, destinations, and payloads. Evidence today: no UX test run. Test: comprehension test with a user who does not know, a rejection, a delegation boundary case, both approval stages, and a dead end or gated action.
8. Reviewer evidence itself. Claim: Opus reviewed v0.5 and v0.6 fully. Evidence today: Opus long form outputs truncated twice, so its round 2 input was its fix list, used only where stated in full. Terra reviews were complete. This gap is about reviewer completeness, not about the draft, and it is why the draft records which reviewer output was partial.

## What closes the gap, in order

Stage 1, narrow supervised workflow, is the build approved Nov 4, 2026. It proves the translator, approval package, and coordinator on a research brief pilot, supervised, with no external sends.
Stage 2, durable execution, is proven only when the crash, duplicate, budget, and bundle tests above pass.
Stage 3, Muse integration, is proven only when skill loading, approval surfaces, scheduler invocation, and metering pass in the target environment, starting serial.
Only after those three stages pass does unattended or live data use become a real question, not a claim. General field kit generation stays deferred until a hand built kit succeeds and fails transparently on multiple representative tasks.
