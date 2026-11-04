# Handover

Handover turns a rough prompt into a full plan and orchestration, asks only the questions that change the plan, stops at an approve or reject gate, then runs the work without babysitting inside the approved envelope.

## The problem it solves

A rough prompt usually fails in one of three places. The agent guesses the intent and builds the wrong thing. It stops when it gets stuck and waits for you. Or it finishes and you become the verifier, reading everything to check whether it is true. Handover moves that work up front, into a short approval step, and moves verification into the run itself, with a separate checker and a judge who cannot turn a gap into a pass.

## How it works

1. **Translate.** You write a rough prompt. Handover infers the outcome, the check that would prove it, what must not change, the one way doors that pause for a human, and the stop condition. It asks you only where a missing answer would change the plan, the acceptance check, or the authority.
2. **Ask with options.** Every question comes with 2 to 4 real options, each with its tradeoff, one marked recommended, and one escape: something else, in your words. One decision per message, in the order that changes the plan most first. Short by default, full detail on demand.
3. **Approve in two stages.** Stage 1 approves the intent package. Stage 2 approves the versioned execution manifest: kit and playbook versions, tool and target allowlist, finish predicate, limits, and budget ledger. The manifest is what is authorized to run, not the prose alone.
4. **Run inside the envelope.** A coordinator owns the plan and every spawn. The author is never the verifier. The verifier gets the specification and the artifact only, never the author's reasoning. The judge resolves verdicts and records gaps.
5. **Report proof or a dead end.** If the run finishes, you get the artifact, its evidence, a decision trail, and a budget audit. If it cannot finish inside the limits you approved, you get a dead end report: what stopped, what was tried, what would unblock it, and options. Exhaustion is never presented as a weaker success, and the predicate is never relaxed to declare victory.

## What Handover can do in v1

- Translate a rough prompt into an approval package covering outcome, proof on the real artifact, non negotiable constraints, one way doors, and stop condition.
- Generate a field kit for a new field, in four steps: inspect, generate, prove, maintain. Every kit needs a lever, not just prose: a tool or API the agent can actually drive, plus a map of the domain it operates on, in the same way a code kit needs a CLI plus a feature map.
- Run a supervised research brief pilot: a brief or evidence synthesis with claims, qualifications, citations, and a reference and evidence ledger. Search logs alone are not a brief.
- Keep a decision trail, one append only log, one line per decision, with a pointer to evidence.
- Keep a budget ledger, one ledger owned by the coordinator, with a reserve held back for verification and the dead end report, at least 15 percent.
- Handle getting stuck with a ladder: try the next route, change the method, make an operational retry that leaves the deliverable and predicate unchanged, then report a dead end. Narrowing scope or changing a limit is not a retry, it is an amendment, and it needs a new predicate version and reapproval.
- Pause and resume safely, with durable state, run and action IDs, and lease fencing so a stalled worker that wakes after its lease expires cannot write.
- Enforce gates as tool and target rules, not prose: argument constraints on recipients, paths, repositories, URL hosts, spend caps, and record counts, with values from external content marked as tainted and escalated when they point outside the approved targets.

## An example run

Rough prompt: "Research how self-improving agents work, end to end."

Handover proposes: a research brief for you, covering single call, single loop, multi loop workflow and graph, and self improving workflow, with what each layer fixes and what it breaks, verification as a gate after each step, stuck routing, and the human role at the start and at genuinely ambiguous checkpoints. The approval card states the check (every substantive claim linked to a source, gaps recorded, no unverified scale figure used as fact), the cost and limit ($0 paid tools in the demo, serial by default, at most 3 spawns), the gates (no publish, send, pay, delete, or deploy), and the assumptions. You approve or reject the whole package. Only then does research run, and only inside that envelope.

## Use in Muse

The skill is in `skills/local-handover/`:

- `SKILL.md`: translator, options first questions, two stage approval, coordinator, verifier, judge, decision trail, budget ledger, stuck ladder, and field kit generator.
- `skill.yaml`: skill metadata for discovery.

Copy that folder into your Muse custom skills folder to use it, or use this repo as the source of truth for the skill text. In Muse, write a rough prompt and Handover will start at Step 1, translate, rather than jumping straight to execution.

## Repository contents

- `README.md`: this file.
- `skills/local-handover/SKILL.md`: the v1 skill.
- `skills/local-handover/skill.yaml`: skill metadata.
- `docs/architecture-draft-v0.6.md`: full v1 architecture, reviewed twice by Opus and Terra, with two stage approval, harness enforced gates, budget ledger, resume protocol, verification coverage, and options first user experience.
- `docs/verification-gap.md`: what is still unproven, and the tests that close each gap.
- `docs/browser-study-reconciliation.md`: what the Poteto, m4lkxx, and YouTube sources actually said, with corrections to earlier notes, including that the 50,000 figure was not verified in any of those three sources.

## Status and limits, stated plainly

Version 1, built from architecture draft v0.6, approved Nov 4, 2026.

- Scope is narrow and supervised only. The only execution pilot in v1 is a research brief.
- For other fields, v1 may translate a prompt and produce an approval package, but execution is not operational until a kit for that field passes its own real task proof. A generated kit is not coverage.
- V1 is not operational for unattended runs, live data operation, three level fan out, or automatic learning changes. Those are deferred until the pilot passes its proof tests.
- Proof tests, before any claim of operational use: simulated gated action and injection tests pass in every case, every known bad artifact in the test set is rejected, one supervised real run completes with a clean decision trail and budget audit, a comprehension test passes, and a real generated skill loads through the actual Muse loader.
- Handover does not merge, publish, post, send, pay, delete, deploy, or contact anyone without a separate gate approval bound to the exact action and payload.

## What makes it special

Most agent workflows start with a codebase, a task already scoped, and a finish line someone else defined. Handover starts earlier, with a rough sentence, and it is built for work where the human cannot be the checker in the middle. That is the difference, in six parts:

- **It translates before it runs.** A rough prompt becomes an interpreted intent, a concrete check on the real artifact, non negotiable constraints, one way doors, and a stop condition, before any work starts. If a missing answer would change the plan, it is asked up front, with options and tradeoffs, not discovered halfway through a run.
- **It asks once, then stops asking.** The human approves or rejects one package, then the run proceeds inside that envelope. During the run, the human is not asked routine questions and is not asked to verify the output. The only returns to the human are predeclared one way doors, a missing permission, a conflict outside the envelope, or a dead end.
- **Approval is an envelope, not a yes in chat.** Stage 2 produces a versioned manifest with tool and target allowlist, finish predicate, limits, budget ledger, and kit and playbook versions. A repair that changes any of those needs reapproval. A repair that changes none of them can proceed, and is logged with its diff.
- **Verification is separate from production.** The author is never the verifier, the verifier gets only the specification and the artifact, and the judge resolves verdicts in a fresh context. A gap is recorded as a gap, never converted into a pass, and exhaustion is reported as a dead end, never as a weaker success.
- **It reuses a proven kit before it builds one.** At Stage 1, Handover must declare Case A, an existing proven kit, named with its version digest, or Case B, a kit to be generated, with a separate budget for generation and proof and the first real task declared as the proof run. A generated kit that was never executed is a draft, not a deliverable, and a second real task proof needs separate approval and funding.
- **It works in fields, not just in code.** Each field gets a field kit: a router, task playbooks, domain principles, role definitions, verification and cleanup routines, and a capability map. Every kit needs a lever, a tool or API the agent can actually drive, plus a map of the domain, not just prose. A field is not claimed as covered because a kit was generated; it is covered only after that kit passes a real task proof.

## Author

Richardson Dackam

- GitHub: https://github.com/richardsondx
- X: https://x.com/richardsondx
