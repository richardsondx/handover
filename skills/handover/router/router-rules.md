# Shared rules for all Discovery engines

This file is the canonical source for the rules shared across the 17 Discovery skills. Each engine stays complete on its own: its Guard still states the choice, the criterion, the light-check steps, the three questions, and the no-decision rule, and its Stop rule still states its numeric limits. This file holds the full framework behind those short forms, so a change to the framework needs one edit here, not 17.

Companion files: router/router-registry.md holds every skill with its trigger, inputs, outputs, and phase. router/router-rules-v02.md holds the handoff field lists, the four traps, and the Anomaly Hunting and Abduction product rules.

## Guard framework

Pick light check or full use before you start.

- Criterion: judge by impact plus reversibility. Never judge by reversibility alone. A step can be easy to reverse and still cost time, money, or trust.
- Light check: a routine step with low impact and easy reversal. Run only the steps the engine names for its light check, then stop at the point the engine names.
- Full use: a new plan, a costly move, a claim that shapes the next step, or any step with high impact or that is hard to reverse. Run all steps. First Principles Questions calls this the full ladder, Anomaly Hunting calls it the full hunt, Abduction calls it full generation, Falsification calls it full falsification. The meaning is the same.
- Three questions to pick: Is there a decision to make, with an action that follows it? Could the wrong [engine noun] cost time, money, or trust? Would a different [engine noun] change what I do next? Each engine states its own second and third questions with its own noun.
- No-decision rule: if no decision follows, answer directly. If the step is low impact and easy to reverse, use the light check. If the step is high impact or hard to reverse, use the full use.
- First Principles Questions variant: three outcomes instead of two. Outcome 1, answer directly, for a one-off fact question with no decision following. Outcome 2, light check, for a routine step with low impact and easy reversal, Step 1 plus Step 4 only. Outcome 3, full ladder, for a new plan, a costly move, a claim that shapes the next step, or high impact or hard to reverse. If impact is high, use the full ladder even if reversal is easy.

## Evidence standard

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check.

Each engine keeps this one line in its own file, with its own second sentence naming what reasoning does in that engine. It stays in place because it is the engine's core check standard: removing it would leave the engine's "What this skill does" section with no stated bar for a passing claim, and the line costs one line. The canonical form is this line; the engine-specific second sentence is not canonical.

First Principles Questions states the same standard in its own words: a claim passes only on a check you can show, and the check must be a source, a number, or a concrete test, never your own words alone.

## Score scale

- Score scale and product rule live in router-rules-v02.md.
- Fits count: the other engines score a new case as fits or does not fit, and report fits out of total new cases checked. That count is the score. It is not a 1 to 5 product.

## Stop-rule shape

- Set the limit before the work starts. Each engine states its own numeric limits. Those limits stay in the engine because they differ per engine and the reader needs them where the work happens.
- Stop when you reach the limit. Then hand on the best result you found, or stop if none survived the last step.
- Do not keep splitting one item into smaller items to get around the limit.
- Do not spend more time on the work than the decision is worth.
- If the budget runs out in the middle of a step, mark the unfinished work as unfinished, reduce the scope to what you did finish, and do not hand on a result with no score, no test, or no check behind it. Each engine states which step and which mark apply to it.

## Concrete case

A concrete case counts as a case only if it names a real place, a real time, and a real action with a number that can be checked. A case with no place, no time, and no checkable number does not count. Do not score a result on a case that does not count.

Each engine that tests on a new concrete case keeps this definition in its Step 5, with its own scored item named, because scoring the case requires the definition in place. This file is the canonical source for the definition.

Abduction variant: a condition must name a concrete case, which is a specific input, a specific place, a specific time, or a specific record. A prediction whose condition names no concrete case is vague. A vague prediction does not count as a prediction.
