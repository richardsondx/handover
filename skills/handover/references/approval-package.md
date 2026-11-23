# Approval package

Full v7 text for the Stage 1 approval package and the Stage 2 execution manifest. The core (SKILL.md) states each rule in short form with its tag. This file is part of the skill. It never relaxes a core rule.

## Step 2. Approval package, two stages

Stage 1, approve the intent package. It must state one of two kit cases, no third case.
- Case A, existing proven kit: package names the kit and its version digest.
- Case B, kit to be generated: package states that plainly, with a separate budget line for generation and proof, and declares the first real task is the proof run. A failed proof run starts a fix cycle under the persistent loop, it does not end the run. Run ends only when work is done or defined exhaustion is hit.
Stage 2, approve the versioned execution manifest, required before unattended execution in later versions, and before a supervised pilot run that touches any gated tool. Manifest is what you authorized, not the prose package alone. It contains kit and playbook digests, tools and targets allowlist with risk rating per tool, failure threshold N, predicate version, limits, and budget ledger. Generated instructions are untrusted until validated against the manifest.
Manifest shape: skills/handover/stage2-manifest-schema.json. Validate it with scripts/check-handover.sh.

## Approval package contains, assumptions marked

1. Intent and audience: desired outcome, recipient, intended use.
2. Deliverable: exact artifact, format, location, supporting materials.
3. Finish predicate: independently observable checks on that artifact, fixed at approval, including verification coverage. For a research brief, state population, selection method, coverage result, permissible claim, what counts as inaccessible evidence, and pass, fail, and inconclusive rules.
4. Constraints and assumptions: what must not change, domain boundaries, assumptions the agent may act on.
5. Authority envelope: autonomous scope, methods, time and cost, explicit one-way door gates, prohibited actions, tool and target allowlist.
6. Plan and routing: selected playbook and field kit, or kit to be generated, stages, ownership, dependencies, justified parallel work, depth and spawn limits.
7. Verification: deterministic checks first where available. Generator and verifier separated. Verifier gets spec and artifact or evidence, never the generator's persuasive work history. Judge resolves verdicts and records gaps, cannot convert a gap into a pass.
8. Iteration and stopping: stuck ladder, alternative routes, maximum attempts or budget, dead-end report.
9. Operations: checkpoint and resume state, scheduler or parent re-invocation if needed, artifact and version tracking, decision trail, cleanup, budget ledger.
10. Approval: approve or reject the whole package, including proposed assumptions and limits.

## Stage 1 and Stage 2 follow Report readability above

- Each check is a list item.
- Each number is a list item.
- Each bar is a list item.
- Each result is a list item, as Result: pass or Result: fail.
- Chat uses short bullets, never tables. One line per bullet. Plain words in chat. The file keeps the full terms.

## Step 1. Translate intent, full text

Cover five inputs as a checklist, not five questions every time. Infer or propose an answer, ask the human only where a missing answer is needed to set the plan, acceptance check, or authority, before approval. After approval, run with full autonomy inside the envelope. Questions stop, except for an action not in the approved manifest.

1. Outcome: what decision or deliverable this should serve, and for whom.
2. Proof on the real artifact: what observable result would make you accept it. End to end on the real artifact, the way a human user would use it, not only a unit check or a page fetch. Propose a concrete check for approval, and name the check the field kit uses.
3. What must not change: constraints and existing assets that are non-negotiable.
4. One-way doors: outward actions listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition.
5. Stop condition: attempt, time, or cost limit, plus a dead-end report if the finish predicate is still unmet. Exhaustion is a dead end, never a weaker success claim. A plateau is not completion. Predicate is never relaxed to declare victory.
- A question is human-only when it is about preference, authority, risk acceptance, a non-negotiable constraint, or a tradeoff with no authorized rule. Settle everything else by reading, inspecting, or experimenting, and record result and source. If investigation exposes a new consequential choice outside the envelope, pause instead of inventing consent.
