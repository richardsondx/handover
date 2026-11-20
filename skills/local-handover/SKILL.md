---
name: local-handover
description: Turn a rough prompt into a full plan and orchestration, ask only the questions that change the plan with suggested options and tradeoffs, stop at an approve or reject gate, then run the work without babysitting inside the approved envelope. Use when the user gives a rough prompt and wants a rewritten plan, a field kit for that kind of work, or a supervised run with independent verification, a decision trail, and a dead end report instead of a weaker success claim.
---

# Handover

Version 8 (draft), Nov 19, 2026.
Change in v8: lean core, references, tags, schemas v7. No safety rule changed in meaning. Proof run after this edit is still open. Until it passes, this version is a draft, not a proven skill.
$2 hard cap per run. Supervised only. A field counts as covered only after its kit passes one real task proof.

## How to read this skill

This file is the core protocol. Detail lives in references/ and is part of the skill. Read a reference when the core points to it. A reference never relaxes a core rule.

## Tags: what enforces each rule

- [Harness-enforced]: enforced today by a mechanism that exists. The line names it: the approval tap, the fresh-context spawn, scripts/check-handover.sh, or scripts/check-loader.sh.
- [Advisory until Stage 2 harness ships]: needs the unbuilt Stage 2 harness to be a hard control. Today it rests on coordinator discipline plus verifier and judge checks. Never present it as a hard control.
- No rule that needs the Stage 2 harness carries the Harness-enforced tag. Gaps 1 to 4 in docs/verification-gap.md still stand.
- Sub-items inherit their governing line's tag.

## Hard rules

- Close the loop: every gap ends Fixed, Queued, or Accepted, with owner and next step. [Advisory until Stage 2 harness ships]
- Separation of powers: author is never verifier, verifier is never judge. Verifier gets spec plus artifact plus evidence only. Judge cannot convert a gap into a pass. [Harness-enforced: fresh-context spawn]
- Domain match: a cited source verifies a check only if the source's domain matches the unit's domain conditions. Any mismatch means not verified on that citation alone. A claim passes only on a source, a number, or a concrete test on the real artifact. [Advisory until Stage 2 harness ships]
- No outward action unless listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition. One-way doors: publish, send, pay, delete, deploy. Unlisted or changed action pauses. [Advisory until Stage 2 harness ships]
- Predicate amendment needs reapproval and voids old verdicts. [Advisory until Stage 2 harness ships]
- Repairs: until the Stage 2 harness ships, the coordinator classifies a repair by diffing the proposed state against the manifest over the enumerated field list in references/hard-rules.md. Any non-empty diff forces reapproval. [Advisory until Stage 2 harness ships]
- Enforceable gates, not prose gates: allowlist of tools and targets per envelope, with argument constraints. Everything else is denied or routed to approval. Tainted values escalate to a human. [Advisory until Stage 2 harness ships]
- Tool risk ratings: low, medium, high. High-risk tools pause for a check or go to a human. [Advisory until Stage 2 harness ships]
- Deny instead of prompting. Until the harness ships, the coordinator must not issue a call that waits for a prompt. The run pauses for a human only when the manifest names that tool as human-only. [Advisory until Stage 2 harness ships]

## Discovery router (required step)

Registry: router/router-registry.md. Rules: router/router-rules-v02.md, router/router-rules.md.
- Read the registry before routing a case. Pick a skill only when its registry trigger fires. Record each phase move and its reason. The router step is required, not optional. [Advisory until Stage 2 harness ships]
- Write one call line before each Discovery skill call: what it saw, which trigger fired, why this skill. A call without a line does not happen. [Harness-enforced: scripts/check-handover.sh checks call lines and handoff records after the run]
- Record each handoff after the call, in that skill's own format. A handoff with a missing field is not complete. [Harness-enforced: scripts/check-handover.sh checks handoff records after the run]

## First Principles Questions (required step)

Run the First Principles ladder before a unit acts, whenever the unit's plan may rest on a wrong claim. The ladder lives in its own skill, not here. [Advisory until Stage 2 harness ships]
- Skill: skills/local-first-principles-questions/SKILL.md. Trigger: a new plan, a costly move, or a claim that shapes the next step. Light check: low impact and easy reversal, Step 1 plus Step 4 only. Full ladder: high impact or hard to reverse, all steps, at most 8 claims tested.

## Kit disclosure

- Name the kit at three points, every run: in the Stage 1 package, at the start of execution, and in the final report. Each mention gives kit name, created or reused, proof status, and workspace path. If no kit was created or reused, say so in one line at each point. [Advisory until Stage 2 harness ships]
- Kits live in the project workspace. The index is FIELD-KITS.md in the skill folder. Record a kit in the index the moment it is created or reused. [Advisory until Stage 2 harness ships]
- Stage 1 must state Case A (existing proven kit, name it with version digest and path) or Case B (kit to be generated, with a separate budget line for generation and proof). There is no third case. [Harness-enforced: approval tap]
- Final report must name the kits it used or created, before the gaps section, one bullet per kit, as defined in Step 4. A report with no kit line is incomplete. [Advisory until Stage 2 harness ships]

## Report readability

Detail and fixed word meanings: references/readability.md. Governs Stage 1, Stage 2, the final report, the judge verdict, and the dead-end report. Changes words only. [Advisory until Stage 2 harness ships]
- Active voice. Vertical lists. No figurative language. No formulaic, slogan-like language. One Word, One Meaning, with the fixed word meanings in references/readability.md. One thought per sentence, at most 20 words.
- Fixed order for the final report and the judge verdict: Result, Evidence, Units, Kit, Gaps, Cost and envelope, Next step.
- Judge check: the judge flags a readability break in its verdict, names the line and the rule it breaks, and the coordinator rewrites the report before delivery.

## Loop

Detail: references/execution.md. [Advisory until Stage 2 harness ships]
- Classify before any fix. One class, written in the cycle log.
- Approach ladder, in order: retry with corrected input, switch source or evidence route, split the unit smaller, replace the method, hold that unit while the rest continues. A rung used before for the same failure class cannot be used again for that class.
- Log each cycle: failure class, rung, what changed, why the last failure should not repeat, verifier result. Judge only at the end, in a fresh context.
- Budget: up to 5 fix cycles per run, shared across units, set in Stage 1 and Stage 2. Dead end only after 3 distinct approaches for the same failure class, or loop budget or cost cap spent.
- Never re-score the same held-out test cases to get a better score.

## Graph

Detail: references/execution.md. [Advisory until Stage 2 harness ships]
- Loop alone for one straight line, one deliverable, no parts that can run apart. Graph when it splits into 2 or more parts with no dependency between them, some parts depend on others, and a later part needs both. Default loop alone unless a graph clearly helps.
- Each unit has one output file or folder, one owner, one check. A link means the later unit needs the earlier unit output.
- Per-unit list, JSON: unit, output file, owner, check, passes, commit SHA. Passes starts failing. Change it to passing only when the check passes and the commit exists. Never remove, edit, or rename a unit to hide a failure.
- Split and join: units with no dependency run apart. A join waits for all inputs, never runs early. Dead end for that unit only after 3 distinct approaches for the same failure class, or loop budget or cost cap spent.
- Show the graph in the approval package: units, links, split, join. No graph runs without that list. Verification at the join: a fresh checker reopens every link and every unit output.
- Handoff pattern: a handoff is a transfer of control, not a dependency between units.

## Commit, check CLI, brief

Detail: references/brief-template.md. [Advisory until Stage 2 harness ships]
- Commit is the finish line for each unit: verify first, on the real artifact, with the unit check. Then commit that unit alone. One commit holds one unit. Conventional Commits: `type(scope): subject`. A commit is local only. [Advisory until Stage 2 harness ships]
- Every field kit ships an executable check CLI for its field: launch, doctor, drive, evidence, cleanup. A CLI must prove itself end to end once before the kit counts as proven. [Advisory until Stage 2 harness ships]
- Every spawn carries a full brief. Brief fields: GOAL, SCOPE, CONTEXT, ACCEPTANCE, VERIFY, TIMEBOX, FORBIDDEN, REPORT, STANDING. [Advisory until Stage 2 harness ships]
- Cheap unit: small, low risk, reversible, checkable with one command. Stage 1 and Stage 2 must name which units are cheap, why, and the single check command. Record the collapse in the manifest. Never call a unit cheap after the fact to skip a check. [Advisory until Stage 2 harness ships]
- Skill files must load through the real loader. Frontmatter name must match the skill folder, with no underscore. scripts/check-loader.sh checks this after the run. [Harness-enforced: scripts/check-loader.sh]

## Step 1. Translate intent

Cover five inputs as a checklist, not five questions every time. Infer or propose an answer, ask the human only where a missing answer is needed to set the plan, acceptance check, or authority, before approval. After approval, run with full autonomy inside the envelope. [Harness-enforced: approval tap]
1. Outcome: what decision or deliverable this should serve.
2. Proof on the real artifact: what observable result would make you accept it. Propose a concrete check for approval, and name the check the field kit uses.
3. What must not change: constraints and existing assets that are non-negotiable.
4. One-way doors: outward actions listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition.
5. Stop condition: attempt, time, or cost limit, plus a dead-end report if the finish predicate is still unmet. Exhaustion is a dead end, never a weaker success claim.
- A question is human-only when it is about preference, authority, risk acceptance, a non-negotiable constraint, or a tradeoff with no authorized rule.

## How Handover talks to you

Detail: references/chat-presentation.md. [Harness-enforced: approval tap]
- Every question comes with suggested options. Never ask an open question with no options, unless explicitly asked for an open-ended question. Card first in chat, never a dump first.
- You decide, restricted: only after an envelope exists, only for a choice already inside that human-approved envelope. Never for Stage 1 or Stage 2 approval itself, predicate, budget cap, tool allowlist, one-way door, amendment, or new risk. Tapping You decide never counts as approval of a gated action. [Advisory until Stage 2 harness ships]

## Step 2. Approval package, two stages

Stage 1, approve the intent package. It must state one of two kit cases, no third case. [Harness-enforced: approval tap]
- Case A, existing proven kit: package names the kit and its version digest.
- Case B, kit to be generated: package states that plainly, with a separate budget line for generation and proof, and declares the first real task is the proof run.
Stage 2, approve the versioned execution manifest, required before unattended execution in later versions, and before a supervised pilot run that touches any gated tool. Manifest is what you authorized, not the prose package alone. Manifest shape: skills/local-handover/stage2-manifest-schema.json. Validate it with scripts/check-handover.sh. [Harness-enforced: approval tap]
- Approval package contains, assumptions marked: 1. Intent and audience. 2. Deliverable. 3. Finish predicate. 4. Constraints and assumptions. 5. Authority envelope. 6. Plan and routing. 7. Verification. 8. Iteration and stopping. 9. Operations. 10. Approval. Full content of each item: references/approval-package.md.
- Stage 1 and Stage 2 follow Report readability above.

## Chat presentation, card first (v7, Nov 16, 2026)

Detail: references/chat-presentation.md. Governs what the user sees in chat. Changes words and order only. No material term moves behind a link. [Harness-enforced: approval tap]
- Plain words in chat, file keeps the full terms: proof of done, run plan, limits, proven kit, new kit to build first, independent checker, final ruling, fix attempts, allowed tools, one-way action.
- Stage 1 chat: first line, the question: Approve this plan? Next, the card, in short bullets: Goal, Proof of done, Cost, Kit, Will not touch, Needs from you, Pass looks like, Fail looks like, Plan versions, Next check. Then, in chat only, Approve, Reject, and See full spec, on the same screen as the card.
- Stage 2 chat: first line, the title: Stage 2, ready to run. Approve? Next, the diff only, in short bullets: Now allowed, Limits, Still blocked, What changed since Stage 1. Then, in chat only, Approve, Reject, and See full spec, on the same screen as the card. Do not repeat the full checks, the units, or the budget ledger in Stage 2 chat. The file holds them.
- First screen target is near 120 words. No material term hides behind See full spec.
- Approval authorizes execution inside that envelope only, with full autonomy inside it. It pauses only for a missing permission, an unavoidable conflict outside the envelope, an action not listed exactly in the manifest, or a dead end. [Advisory until Stage 2 harness ships]

## Step 3. Execute, narrow supervised

Detail: references/execution.md. [Advisory until Stage 2 harness ships]
- Coordinator owns the plan, execution record, and every spawn. [Advisory until Stage 2 harness ships]
- Separation of powers: author is never verifier. Judge runs in a fresh context. [Harness-enforced: fresh-context spawn]
- Decision trail: one append-only log, one line per decision, with pointer to evidence, never a paragraph. [Advisory until Stage 2 harness ships]
- Fan-out discipline: start with one unit end to end before fanning out. Limits: depth max 2, hard spawn count stated in the envelope, serial execution by default. [Advisory until Stage 2 harness ships]
- Budget ledger: one ledger owned by the root coordinator, dollars primary. Every spawn is a budget reservation, refused when it would exceed the remaining amount. Reserve held back for verification and dead-end report, at least 15 percent. [Advisory until Stage 2 harness ships]
- Stuck ladder: retry with corrected input, switch source or evidence route, split the unit smaller, replace the method, hold that unit while the rest continues. After three distinct approaches for the same failure class have failed, or loop budget or cost cap is spent, report a dead end. Narrowing scope or changing a limit is an amendment, and needs a new predicate version and reapproval. [Advisory until Stage 2 harness ships]
- Failure threshold: when the same tool fails N times in a row, stop retrying it and escalate to a human. N is set in the manifest for the run. [Advisory until Stage 2 harness ships]
- Pause and resume: stop only at a safe boundary, make work durable, write a resume note usable with no prior context. Resume never re-runs completed tools. If saved history does not match the run exactly, run fails closed with an error instead of guessing. [Advisory until Stage 2 harness ships]
- Cleanup: kill only what the run started, never the evidence. [Advisory until Stage 2 harness ships]
- Also in references/execution.md, read before you run: effort scales, subagent contract, background tasks, session start, notes and compaction, agent memory, hook events, learning loop. Hook events do not exist today. [Advisory until Stage 2 harness ships]

## Fleet

Fleet is a fourth effort level. [Advisory until Stage 2 harness ships]
- Fleet covers gardening and bug fixes only.
- Fleet scope holds seven kinds of small work only: delete dead code, dedupe patterns, rename for clarity, fix a lint or type failure, fix a test failure, bump a dependency with green tests, sync docs with code.
- Fleet never takes a new feature, security work, a schema change, or a large refactor.
- Fleet depth max is 1.
- One Fleet run holds 20 to 50 small PRs.
- Fleet runs scripted checks first on each PR, for lint, type, and tests.
- An agent verifier runs only on a failed check or on a sampled PR.
- The judge samples 1 in 10 PRs.
- Auto merge needs all three at once: an allowlisted path, green CI on a rebased head, and a unanimous pass.
- The $2,000 monthly figure is vision only. It needs a separate approval before any spend.

## Step 4. Verify, before any claim of done

Detail: references/verification.md. [Advisory until Stage 2 harness ships]
- Deterministic checks first where available. Test verification with known bad artifacts. Default is every known bad case in the test set must be rejected. [Advisory until Stage 2 harness ships]
- Proof run after edits. After any edit to the skill, run one real task with the new text. A skill with no proof run after its last edit is a draft. [Advisory until Stage 2 harness ships]
- Dead-end report, short by default: what stopped, actual status, spent and remaining budget, what was tried, what would unblock it, and options, each flagged as needing reapproval or not. [Advisory until Stage 2 harness ships]
- Final report follows Report readability above, in the fixed order: Result, Evidence, Units, Kit, Gaps, Cost and envelope, Next step. [Advisory until Stage 2 harness ships]
- Field kits in the final report: every final report must name the field kits it used or created, before the gaps section. [Advisory until Stage 2 harness ships]
- List field kits command: return one bullet per kit from the field kit index, with proof status and link. [Advisory until Stage 2 harness ships]

## Step 5. Field kit generator, inspect, generate, prove, maintain

Detail: references/field-kit-spec.md. [Advisory until Stage 2 harness ships]
1. Inspect: read the task, available materials, domain standards, tools, and environment. Identify artifact, recipient, failure modes, permitted actions, and independently checkable evidence. [Advisory until Stage 2 harness ships]
2. Generate: create a project-local kit with router, task playbooks, domain principles, role definitions, verification and cleanup routines, and capability map. Every kit needs a lever, not just prose: an executable check CLI for the field. [Advisory until Stage 2 harness ships]
3. Prove: run the kit on one real, authorized task. Check the resulting artifact independently against the agreed predicate, using the check CLI. If work cannot pass within the loop budget, hand over a dead-end report, not a claim that the kit works. [Advisory until Stage 2 harness ships]
4. Maintain: record decisions and failures, correct a recurring mistake class at the highest effective level, and revalidate after meaningful changes. Record the kit in the field kit index, FIELD-KITS.md in the folder with this skill. [Advisory until Stage 2 harness ships]
- Minimum viable kit: one router, a few genuinely distinct playbooks, concise principles, coordinator, generator, verifier, and judge roles, evidence and verdict templates, stuck and resume ladder, cleanup, capability map, and check CLI. [Advisory until Stage 2 harness ships]

## Proof and limits

A kit is proven when all of these pass for that field. [Advisory until Stage 2 harness ships]
- Simulated gated action test and injection test pass in every case, tested before live data is used. Every known bad artifact in the test set is rejected. One supervised real run completes with a clean audit of its decision trail and budget ledger. Comprehension test passes. A real generated skill loads through the actual Muse loader. [Advisory until Stage 2 harness ships]
- Until those pass, do not claim unattended operation, live data operation, or coverage of that field. [Advisory until Stage 2 harness ships]

## What this skill deliberately does not do

It does not merge, publish, post, send, pay, delete, deploy, or contact anyone unless that exact action is listed in the approved Stage 2 manifest. [Advisory until Stage 2 harness ships]
It does not run overnight until a test run shows the scheduler path works end to end. [Advisory until Stage 2 harness ships]
