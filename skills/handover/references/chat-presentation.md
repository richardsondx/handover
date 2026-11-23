# Chat presentation, card first

Full v7 text for what the user sees in chat. The core (SKILL.md) states each rule in short form with its tag. This file is part of the skill. It never relaxes a core rule.

Where this text describes harness behavior in the present tense (the harness decides whether a choice is inside the envelope), that behavior is advisory until the Stage 2 harness ships. The core Tags section governs: no rule that needs the Stage 2 harness carries the Harness-enforced tag.

This section governs what the user sees in chat. It changes words and order only. It does not change the plan, the checks, the budget, or the verdict on substance. No material term moves behind a link. If a term cannot fit on the first screen, it goes on a second short screen before approval, never behind See full spec.

## How Handover talks to you, full text

- Every question comes with suggested options. Never ask an open question with no options, unless explicitly asked for an open-ended question.
- Each question: one short plain sentence stating the decision, no jargon. Two to four options, each a name plus tradeoff in 12 words or fewer. One marked recommended, with one line saying why, in plain words. One escape: Something else, in my words. One guided option, only after an envelope exists: You decide within the limits I approved.
- Options must be real. Each must shape plan, cost, scope, proof, or risk, and say which one it changes. A list that all leads to the same plan is decoration.
- One decision per message, in the order that shapes the plan most first. Bundle related questions only when a single tap answers them, for example by picking a preset package.
- You decide, restricted: only after an envelope exists, only for a choice already inside that human-approved envelope. Never for Stage 1 or Stage 2 approval itself, predicate, budget cap, tool allowlist, one-way door, amendment, or new risk. Before any envelope exists, present a proposed choice for explicit inclusion in the Stage 1 package. Who decides whether a choice is inside the envelope is the harness, by checking it against the approved manifest, never the model that proposes it. Every delegated choice is listed in the record as Handover chose X. Tapping You decide never counts as approval of a gated action.
- Short by default, details on demand. Headline first, then options, about 120 words as a target for the first screen, not a ceiling on information needed for consequential consent. If a decision cannot be understood concisely, use additional short screens before approval, never hide a material term behind Show details.
- Card first in chat, never a dump first. Stage 1 and Stage 2 chat follow the card-first format in Step 2 below. The full package stays in a file. The chat card is the decision. The file is the record.
- Progress reports use a short board: Planned, In progress, Done recently, with short checklist lines, sent fresh when status changes, not a dense report.
- This applies to translator questions, approval gate, manifest boundary cases, stuck escalations, and kit proof reports. It does not apply to internal agent messages, decision trail, or verifier evidence. A short user message never means a short evidence record.

## Plain words in chat, file keeps the full terms

- Say proof of done, not predicate.
- Say run plan, not manifest.
- Say limits, not envelope.
- Say proven kit, not Case A.
- Say new kit to build first, not Case B.
- Say independent checker, not verifier.
- Say final ruling, not judge.
- Say fix attempts, not fix cycles.
- Say allowed tools, not allowlist.
- Say one-way action, not one-way door.
- Keep real names the user knows, such as EAS, TestFlight, and App Store Connect.

## Stage 1 chat, in this exact order

- First line, the question: Approve this plan?
- Next, the card, in short bullets, in this order.
- Goal: the result this run must produce, in plain words.
- Proof of done: the check that shows the outcome, plus what the checker checks and what it may claim, in one plain line.
- Cost: the cost, the limit, and its type (hard or advisory), plus the money held back for checking.
- Kit: proven kit name and path, or new kit to build first with its build and proof budget.
- Will not touch: the work this run does not cover, plus the actions this run must not do.
- Needs from you: the assumptions this plan relies on, in plain words.
- Pass looks like: one pass example.
- Fail looks like: one fail example.
- Plan versions: the Stage 1 package version and the Stage 2 run plan version, in one short line.
- Next check: the approval points that must pass first, in one short line.
- Then, in chat only, Approve, Reject, and See full spec, on the same screen as the card.
- First screen target is near 120 words. A second short screen is allowed before approval when a material term needs room. No material term hides behind See full spec.
- See full spec opens the full package file, with all 10 sections, all checks, units, budget ledger, decision trail, and version digests.
- The doc itself does not hold the Approve, Reject, See full spec line. The doc holds an Approval section only. That section says approve or reject the whole package, with the version.

## Stage 2 chat, in this exact order

- First line, the title: Stage 2, ready to run. Approve?
- One line: You approved Stage 1. This runs the plan.
- Next, the diff only, in short bullets, in this order.
- Now allowed: the actions, tools, and targets allowed without a pause, in plain words.
- Limits: task count, fix attempts, timebox, and cost, or the line Same as Stage 1 when nothing changed.
- Still blocked: the actions this run must not do.
- What changed since Stage 1: cost, proof, scope, or tools, or the line Nothing changed except this run plan when nothing else changed.
- Proof of done and cost stay the same as Stage 1 unless this card says they changed.
- Then, in chat only, Approve, Reject, and See full spec, on the same screen as the card. The doc itself does not hold this line.
- Do not repeat the full checks, the units, or the budget ledger in Stage 2 chat. The file holds them.
- How the user tells them apart: Stage 1 says Approve this plan? Stage 2 says Stage 2, ready to run. Approve?

## What stays in chat, what moves to the file only

What stays in chat:
- Goal in plain words, proof of done, cost cap, what it will not touch, what it needs from you, pass and fail examples, plan versions, what is new in Stage 2, Approve and Reject.
What moves to the file only:
- The 10 section structure, the full checks, units, budget ledger, decision trail, cleanup steps, and version digests.
- The internal terms predicate, manifest, envelope, Case A, Case B, verifier, judge, fix cycles, allowlist, and one-way door stay in the file, never in chat.

Approval authorizes execution inside that envelope only, with full autonomy inside it. It does not authorize routine research questions to come back to you, and it does not ask you to perform verification. It pauses only for a missing permission, an unavoidable conflict outside the envelope, an action not listed exactly in the manifest, or a dead end. An outward action listed exactly in the manifest, with action, destination, payload or template, limit, and condition, runs without stopping.
