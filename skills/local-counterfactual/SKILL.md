---
name: local-counterfactual
description: State what would have happened if a key factor differed, name the causal link, reject non-causal factors, and state what evidence would settle the link.
---

# Counterfactual Thinking

## What this skill does

This skill states what would have happened if a key factor had differed. You state what happened. You name the key factor. You state the changed case: what would have happened without that factor, or with a different value of it. You name the causal link. You reject factors that did not cause the result. You state what evidence would settle the link. You test the link on a new case.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning states the changed case. It does not prove the link.

## Input

This skill receives what happened, stated in one or two sentences, with a source and a number where one exists. It also receives one key factor, named in one sentence. If what happened has no source or number, stop and get one first. Do not build a changed case from an unobserved result.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the changed case and the causal link and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong link cost time, money, or trust?
- Would a different link change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a stated result, the changed case has no anchor, and any link can seem to fit.

State the changed case before you name the causal link. Do not name the link first and then invent a changed case that fits it. That order hides the factors that did not cause the result.

### Step 1: State what happened and the key factor

Write what happened in one or two sentences, in plain words. Then name the key factor in one sentence. The key factor is the one factor you think made the difference.

- What happened: the result, in plain words.
- Source: where the result was observed, named exactly enough to find it again.
- Number: the measured size, rate, or timing of the result, if one exists. If no number exists, say so. Do not invent one.
- Key factor: the one factor you think made the difference, in one sentence.

If you cannot name one key factor, list the candidates and pick one. Do not test two factors at once. A changed case that changes two factors at once shows nothing about either one.

### Step 2: State what would have happened if the key factor differed

Write the changed case in one or two sentences. The changed case keeps everything else the same and changes only the key factor. State the result you expect in the changed case, with a number where one exists.

- Changed case: what would have happened, in plain words.
- What stays the same: each other factor that does not change, named in one line each.
- What differs: the key factor, with its old value and its new value.
- Expected result: the result in the changed case, with a number where one exists.

A changed case that changes more than the key factor does not count. If another factor also changes, name it and restart the step with only the key factor changed.

### Step 3: Name the causal link

Write the causal link in one sentence, in plain words. The link says how the key factor produced the result. Name each step in the link, in order, with no step skipped.

- Link: how the key factor produced the result, in one sentence.
- Steps in the link: each step, in order, one line each.
- Source: where each step was observed, or the record that shows it, named exactly enough to find it again, or marked as plain reasoning.

If a step in the link has no source, mark it as plain reasoning. A link built only on plain reasoning is a guess, not a proven link. Say so in the record.

### Step 4: Reject non-causal factors

List the other factors that were present when the result happened. For each one, state whether it caused the result or not. Reject each factor that did not cause the result, with one line of reason each.

- Other factor: the factor, named in one sentence.
- Caused the result: yes or no.
- Reason: one line, in plain words, for why it did or did not cause the result.

A factor that only happened at the same time as the result did not cause it. Timing alone is not a cause. A factor that changed nothing when it changed in the past did not cause it either. Name the reason, and reject the factor.

Reject at least 1 non-causal factor before you move on. If you cannot name one, you have not looked hard enough. List the factors that were present again, and check each one.

### Step 5: State what evidence would settle the link, and test it on a new concrete case

State the evidence that would settle the link, in one or two sentences. The evidence must name a check that can be run, and the result that would prove the link or break it.

Then name a new concrete case you did not use in Steps 1 to 4. Run the check in that case. Predict the result from the link. Then check the prediction against what happens.

**Authority split for this test.**

- (a) Authorized execution. Run the test only when it is read-only, or when the action is listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition. A read-only check reads, observes, or measures. It does not change, publish, send, pay, delete, or deploy anything.
- (b) Test specification or proposal. When the test needs an action outside the manifest, do not run it. Write the test as a runnable predicate: the case, the prediction with its number, the observation that would count as a pass, and the observation that would count as a fail. Then write a manifest action proposal for the next unit or human gate: the exact action, destination, payload or template, limit, and condition, so the next approval can list it. Hand the specification and the proposal to the next unit or human gate with the record, marked untested. In the record, write the Observation as not run. An untested test has no score. Do not report a fit for a test that did not run.

A concrete case counts as a case only if it names a real place, a real time, and a real action with a number that can be checked. A case with no place, no time, and no checkable number does not count. Do not score a link on a case that does not count. Canonical definition: skills/local-handover/router/router-rules.md.

- Evidence that would settle it: the check, named in one sentence, and the result that would prove the link or break it.
- New case: the case, in plain words, with its place, time, and action.
- Prediction: what the link says will happen, with a number where one exists.
- Observation: what actually happened, with its number where one exists.
- Result: fits the link, or breaks it.

Score the link as fits out of total new cases checked. Write the score as a count, for example 1 fit out of 1 new case checked. A link with no new case checked has no score. Do not hand on a link with no score.

If the new case breaks the link, mark the link broken. Go back to Step 1 and pick a new key factor, or stop.

### Step 6: Hand the link on

Hand on the link only if it survived Step 5. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- What happened: the result from Step 1, with its source and number.
- Key factor: the key factor from Step 1, with its old value and new value.
- Changed case: the changed case from Step 2, with its expected result.
- Causal link: the link from Step 3, with its steps in order.
- Rejected factors: the non-causal factors from Step 4, each with its reason.
- Score: fits out of total new cases checked, with the evidence from Step 5.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in a new run, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 3 key factors per run. The maximum is 4 new cases checked per run. Do not test more than 3 key factors. Do not check more than 4 new cases.

Stop when you reach either limit. Then hand on the best link you found, or stop if none survived Step 5. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 5, mark the unchecked cases as unchecked. Reduce the scope to what you did check. Do not hand on a link with no score.

## When this skill does not apply

Do not use this skill when what happened has no source or number. A result with no source and no number gives the changed case no anchor. Get the source first, or use a different skill.

Do not use this skill when the changed case changes more than the key factor. A changed case that changes two factors at once shows nothing about either one. Change only the key factor.

Do not use this skill when the link is only timing. A factor that only happened at the same time as the result did not cause it. Name the steps in the link, or reject the factor.

Do not use this skill to keep a link that a new case broke. A broken link stays broken until a new key factor is picked and tested.

Do not use this skill when the evidence that would settle the link cannot be named. If no check can prove or break the link, the link cannot be tested this way. Say so and stop.

## Worked example: the kitchen that burned the soup

What happened: the soup burned on Tuesday night. Source: the cook, and the pot with burned food at the bottom. Number: the soup cooked for 50 minutes, and the burner was set to high for the last 20 minutes.

Key factor: the burner was set to high for the last 20 minutes, instead of low.

Changed case: if the burner had stayed on low for the last 20 minutes, the soup would not have burned. Everything else stays the same: the same pot, the same soup, the same 50 minutes, the same cook stirring every 10 minutes. What differs: the burner setting, high instead of low. Expected result: no burned food at the bottom of the pot.

Causal link: the high burner heated the bottom of the pot past the point where the soup sticks and burns. Steps in the link: the burner set to high sends more heat to the pot bottom. The soup at the bottom heats past the sticking point. The stuck soup burns and stays burned. Source: the cook saw the burner on high, and the pot bottom shows the burn.

Rejected factors: the pot was old. The pot was old on other nights too, and the soup did not burn then, so the pot age did not cause it. The cook stirred every 10 minutes. The cook stirred the same way on other nights, and the soup did not burn then, so the stirring did not cause it. The soup had more salt. The salt amount was the same as other nights, so the salt did not cause it.

Evidence that would settle it: cook the same soup again, on low for the whole 50 minutes, and check the pot bottom after. If the pot bottom is clean, the link holds. If the soup burns again on low, the link breaks.

New concrete case: the next night, the cook makes the same soup in the same pot, on low for the whole 50 minutes, stirring every 10 minutes. The case names a real place, the kitchen, a real time, Wednesday night, and a real action with a checkable number, 50 minutes on low. Prediction: no burned food at the bottom of the pot. Observation: the pot bottom is clean after 50 minutes. Result: fits the link. Score: 1 fit out of 1 new case checked.

Handoff record:

- What happened: the soup burned on Tuesday night, after 50 minutes, with the burner on high for the last 20 minutes.
- Key factor: the burner set to high for the last 20 minutes, instead of low.
- Changed case: if the burner had stayed on low, the soup would not have burned.
- Causal link: high heat past the sticking point burned the soup at the pot bottom.
- Rejected factors: the old pot, the stirring every 10 minutes, and the salt amount.
- Score: 1 fit out of 1 new case checked.

## Commands

- "show link" lists the causal link with its steps in order.
- "show record" emits the handoff record from Step 6.
- "save state" emits the changed case, the link, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
