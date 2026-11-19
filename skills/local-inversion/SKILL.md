---
name: local-inversion
description: State the inverted question, list what would guarantee failure, and derive workable steps from the inversion.
---

# Inversion

## What this skill does

This skill turns a problem upside down. You state the goal. You state the inverted question: what would guarantee failure. You list the steps that would make failure certain. You pick the failure steps that matter most. You flip each one into a workable step. You test a workable step on a new case.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning inverts the goal. It does not prove the flipped steps work.

## Input

This skill receives a goal, stated in one sentence. The goal needs a number that shows what success looks like, if one exists. If the goal has no clear result, stop and state the result first. Do not invert a goal with no result.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the failure list and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong step cost time, money, or trust?
- Would a different step change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a stated goal, the inverted question has no target, and the failure list proves nothing.

State the inverted question before you list any workable steps. Do not list workable steps first and then invent failures that fit them. That order hides the failures that matter most.

### Step 1: State the goal and the inverted question

Write the goal in one sentence, in plain words. Then write the inverted question in one sentence: what would guarantee failure.

- Goal: what success looks like, in one sentence.
- Number: the size, rate, or timing that shows success, if one exists. If no number exists, say so. Do not invent one.
- Inverted question: what would guarantee failure, in one sentence.

If the goal is vague, rewrite it until it names one clear result. A vague goal makes the inverted question vague too.

### Step 2: List what would guarantee failure

List every step that would make failure certain. Write each failure step in one sentence, in plain words. Name the result each failure step would cause.

- Failure step: the action that would guarantee failure, in one sentence.
- Result: what it would cause, with a number where one exists.
- Source: where you saw this failure happen, or the record that shows it, named exactly enough to find it again, or marked as plain reasoning.

List at least 3 failure steps before you move on. Fewer than 3 failure steps cannot show what matters most. If you have fewer than 3, stop and think of more first.

Do not list vague failures like "do a bad job." Each failure step must name a concrete action. A failure step with no concrete action does not count.

### Step 3: Pick the failure steps that matter most

Rank the failure steps from Step 2 by how much harm each one would cause. Pick the top 3. Write why each one ranks high, in one sentence each.

- Top failure: the failure step, named again.
- Harm: what it would cost in time, money, or trust, with a number where one exists.
- Why it ranks high: one sentence, in plain words.

The top 3 are the failures to avoid first. The rest stay on the list, but they do not drive the next step. Do not pick more than 3. A longer list hides what matters most.

### Step 4: Derive workable steps from the inversion

For each top failure step, write its opposite as a workable step. The workable step must be an action you can take, with a clear result.

- Top failure: the failure step, named again.
- Workable step: the opposite action, in one sentence, in plain words.
- Result: what the workable step should produce, with a number where one exists.
- Check: how you will know it worked, named in one sentence.

Do not write a workable step that is only the absence of the failure. "Do not run out of stock" is not a workable step. "Order 40 loaves on Friday for Saturday" is a workable step. Each workable step must name an action, a time, and a number.

### Step 5: Test a workable step on a new concrete case

Name a new concrete case you did not use in Steps 1 to 4. Run one workable step from Step 4 in that case. Predict what will happen. Then check the prediction against what happens.

**Authority split for this test.**

- (a) Authorized execution. Run the test only when it is read-only, or when the action is listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition. A read-only check reads, observes, or measures. It does not change, publish, send, pay, delete, or deploy anything.
- (b) Test specification or proposal. When the test needs an action outside the manifest, do not run it. Write the test as a runnable predicate: the case, the prediction with its number, the observation that would count as a pass, and the observation that would count as a fail. Then write a manifest action proposal for the next unit or human gate: the exact action, destination, payload or template, limit, and condition, so the next approval can list it. Hand the specification and the proposal to the next unit or human gate with the record, marked untested. In the record, write the Observation as not run. An untested test has no score. Do not report a fit for a test that did not run.

A concrete case counts as a case only if it names a real place, a real time, and a real action with a number that can be checked. A case with no place, no time, and no checkable number does not count. Do not score a workable step on a case that does not count. Canonical definition: skills/local-handover/router/router-rules.md.

- New case: the case, in plain words, with its place, time, and action.
- Workable step: the step from Step 4 that you ran, named again.
- Prediction: what the step will produce, with a number where one exists.
- Observation: what actually happened, with its number where one exists.
- Result: fits the step, or breaks it.

Score the steps as fits out of total new cases checked. Write the score as a count, for example 1 fit out of 1 new case checked. A step with no new case checked has no score. Do not hand on a step with no score.

If the new case breaks the workable step, mark the step broken. Go back to Step 4 and derive a new workable step from the same failure, or stop.

### Step 6: Hand the workable steps on

Hand on the workable steps only if at least one survived Step 5. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Goal: the goal from Step 1, with its number.
- Inverted question: the inverted question from Step 1.
- Failure list: the failure steps from Step 2, with the top 3 marked.
- Workable steps: the steps from Step 4, each with its action, time, and number.
- New case: the new case from Step 5, with its prediction, observation, and result.
- Score: fits out of total new cases checked.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in the next step, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 8 failure steps per run. The maximum is 4 new cases checked per run. Do not list more than 8 failures. Do not check more than 4 new cases.

Stop when you reach either limit. Then hand on the best workable steps you found, or stop if none survived Step 5. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 5, mark the unchecked cases as unchecked. Reduce the scope to what you did check. Do not hand on a step with no score.

## When this skill does not apply

Do not use this skill when the goal has no clear result. A goal with no clear result makes the inverted question vague. State the result first, or use a different skill.

Do not use this skill when the failure list holds only vague failures. A failure step with no concrete action does not count. Name the concrete action first.

Do not use this skill when a workable step is only the absence of a failure. "Do not run out of stock" is not a workable step. Name an action, a time, and a number.

Do not use this skill to avoid the top failures and then ignore the rest of the list. The rest stay on the list. Check them before you call the plan done.

Do not use this skill when a new case breaks a workable step and you keep the step anyway. A broken step stays broken until a new step is derived and tested.

## Worked example: the shop that wants Saturday to run well

Goal: sell all 40 loaves of white bread on Saturday, with no buyer turned away after 10:00. Number: 40 loaves sold, zero buyers turned away after 10:00.

Inverted question: what would guarantee a bad Saturday at the shop.

Failure steps:

- Stock only 20 loaves, so the shop sells out by 8:30 and turns buyers away.
- Open the shop late at 9:00, so the early buyers leave.
- Put the bread at the back of the shop with no sign, so buyers cannot find it.
- Leave the till unstaffed at the morning rush, so the queue grows past the door.

Top 3: stock only 20 loaves, open late at 9:00, and leave the till unstaffed. Each one turns buyers away or slows the queue. The bread sign ranks lower, because buyers who come for bread ask for it.

Workable steps, derived by flipping each top failure:

- Order 40 loaves on Friday for Saturday, and check the delivery against the order at 7:30.
- Open the shop at 8:00 on Saturday, and post the opening time on the door on Friday.
- Staff the till with 2 people from 8:00 to 10:00 on Saturday.

New concrete case: the next Saturday, the shop orders 40 loaves on Friday, opens at 8:00, and staffs the till with 2 people from 8:00 to 10:00. The case names a real place, the shop, a real time, Saturday 8:00 to 10:00, and a real action with a checkable number, 40 loaves and 2 people at the till. Prediction: 40 loaves sold, zero buyers turned away after 10:00. Observation: 40 loaves sold by 9:50, zero buyers turned away. Result: fits the steps. Score: 1 fit out of 1 new case checked.

Handoff record:

- Goal: sell all 40 loaves of white bread on Saturday, with no buyer turned away after 10:00.
- Inverted question: what would guarantee a bad Saturday at the shop.
- Failure list: stock only 20 loaves, open late at 9:00, hide the bread, leave the till unstaffed. Top 3 are stock, opening time, and till staffing.
- Workable steps: order 40 loaves on Friday, open at 8:00, staff the till with 2 people from 8:00 to 10:00.
- New case: next Saturday, 40 loaves sold by 9:50, zero buyers turned away, fits the steps.
- Score: 1 fit out of 1 new case checked.

## Commands

- "show failures" lists each failure step with its top 3 mark.
- "show record" emits the handoff record from Step 6.
- "save state" emits the failure list, the workable steps, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
