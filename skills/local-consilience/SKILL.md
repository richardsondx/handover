---
name: local-consilience
description: Gather independent lines of evidence, state what each line says, name where they converge, weigh any contrary line, and state the answer the convergence supports.
---

# Consilience

## What this skill does

This skill joins independent lines of evidence into one answer. You gather lines of evidence that do not share a source. You state what each line says. You name where they converge. You weigh any line that points the other way. You state the answer the convergence supports.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning joins the lines. It does not prove the answer.

## Input

This skill receives a question to answer, stated in one or two sentences. It also receives at least 3 lines of evidence, each named in one line. If the question has no clear answer to test, stop and state the question first. Do not gather evidence for a question with no answer.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the convergence and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong answer cost time, money, or trust?
- Would a different answer change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without independent lines, the answer rests on one source said twice.

State each line before you join them. Do not join first and then look for lines that fit the join. That order hides the lines that point the other way.

### Step 1: Gather independent lines of evidence

List at least 3 lines of evidence. A line counts as independent only if its source shares no data with the other lines. Two lines that quote the same record are one line, not two. Name each line in plain words.

- Line: the line of evidence, in plain words.
- Source: where it came from, named exactly enough to find it again.
- Number: the size, rate, or timing it reports, if one exists. If no number exists, say so. Do not invent one.
- Independent: yes or no, with one line of reason.

If fewer than 3 lines are independent, stop and gather more first. A count built on one source said twice is not a convergence. It is a repeat.

### Step 2: State what each line says

For each line, state what it says about the question, in one or two sentences. State its answer, with its number where one exists. State its limit, in one sentence. A line with no stated limit is not ready to join.

- Line: the line, in plain words.
- Says: what it says about the question, with its number.
- Limit: what the line cannot show, in one sentence.

Do not smooth over a line that says something different from the others. Write what it says, exactly as it stands. A smoothed line hides the disagreement that the next step must weigh.

### Step 3: Name where the lines converge

Compare the lines from Step 2. Name the answer that at least 2 lines support. State the point of agreement in one or two sentences. Count the lines that support it. Write the count as a number. For example, 3 of 3 lines support the answer.

- Converged answer: the answer the lines agree on, in one or two sentences.
- Lines that support it: the count, with the lines named.
- Point of agreement: the fact or number the lines share, in one sentence.

If no answer has at least 2 lines behind it, say so and stop. Two lines that agree by chance are not a convergence. A convergence needs the lines to agree on the same fact, not on the same guess.

### Step 4: Weigh any contrary line

List every line that points the other way. For each one, state what it says, why it differs, and how much weight it carries. A weak line is one with a small sample, a shaky source, or a limit that cuts its claim. A strong line needs an answer.

- Contrary line: the line, in plain words.
- Says: what it says, with its number.
- Why it differs: one line, in plain words.
- Weight: weak or strong, with one line of reason.
- Decision: set aside, or changes the answer, with one line of reason.

Set a weak contrary line aside only with a stated reason. Never drop a contrary line in silence. If a strong contrary line stands, the answer changes or the question stays open. Say which one, and why.

### Step 5: Test the converged answer on a new concrete case

Name a new concrete case you did not use in Steps 1 to 4. State what the converged answer predicts in that case. Then check the prediction against what happens.

**Authority split for this test.**

- (a) Authorized execution. Run the test only when it is read-only, or when the action is listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition. A read-only check reads, observes, or measures. It does not change, publish, send, pay, delete, or deploy anything.
- (b) Test specification or proposal. When the test needs an action outside the manifest, do not run it. Write the test as a runnable predicate: the case, the prediction with its number, the observation that would count as a pass, and the observation that would count as a fail. Then write a manifest action proposal for the next unit or human gate: the exact action, destination, payload or template, limit, and condition, so the next approval can list it. Hand the specification and the proposal to the next unit or human gate with the record, marked untested. In the record, write the Observation as not run. An untested test has no score. Do not report a fit for a test that did not run.

A concrete case counts only if it names a real place, a real time, and a real action. The action needs a number that can be checked. A case with no place, no time, and no checkable number does not count. Do not score an answer on a case that does not count. Canonical definition: skills/local-handover/router/router-rules.md.

- New case: the case, in plain words, with its place, time, and action.
- Prediction: what the converged answer predicts, with a number where one exists.
- Observation: what actually happened, with its number where one exists.
- Result: fits the answer, or breaks it.

Score the answer as fits out of total new cases checked. Write the score as a count, for example 1 fit out of 1 new case checked. An answer with no new case checked has no score. Do not hand on an answer with no score.

If the new case breaks the answer, mark the answer broken. Go back to Step 3 and look for a different convergence, or stop.

### Step 6: Hand the answer on

Hand on the answer only if it survived Step 5. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Question: the question from the Input.
- Lines: each line from Step 1, with its source, number, and independence mark.
- What each line says: the statements from Step 2, with each limit.
- Convergence: the converged answer from Step 3, with the count of supporting lines.
- Contrary line: the contrary lines from Step 4, each with its weight and decision.
- Score: fits out of total new cases checked, with the new case from Step 5.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in a new run, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 6 lines of evidence per run. The maximum is 4 new cases checked per run. Do not gather more than 6 lines. Do not check more than 4 new cases.

Stop when you reach either limit. Then hand on the best answer you found, or stop if none survived Step 5. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 5, mark the unchecked cases as unchecked. Reduce the scope to what you did check. Do not hand on an answer with no score.

## When this skill does not apply

Do not use this skill when fewer than 3 lines are independent. A count built on one source said twice is not a convergence. Gather more lines first.

Do not use this skill when no answer has at least 2 lines behind it. Lines that agree by chance are not a convergence. Say so and stop.

Do not use this skill to drop a contrary line in silence. A contrary line stays in the record until it is weighed and set aside with a reason.

Do not use this skill to hand on an answer that a new case broke. A broken answer stays broken until a new convergence is found and tested.

Do not use this skill when the lines all come from the same record. Lines that share one record are one line, not a convergence. Find a second record first.

## Worked example: the shop that finds why Saturday sales fell

Question: why did Saturday sales at the corner shop fall in October? Lines of evidence, 4 lines, each independent.

Line 1: the till log. Source: the shop till, October Saturdays. Number: average Saturday sales 1,240 dollars, down from 1,680 dollars in September, a fall of 440 dollars.

Line 2: the foot count. Source: the door counter, October Saturdays. Number: average Saturday visitors 210, down from 290 in September, a fall of 80 visitors.

Line 3: the street works notice. Source: the city notice posted on the shop door, dated October 2. Number: the road outside the shop closed to cars for 4 Saturdays in October.

Line 4: the delivery log. Source: the delivery app log for the same area, October Saturdays. Number: average Saturday delivery orders 55, down from 90 in September, a fall of 35 orders, even though delivery bikes used the bike lane and bypassed the car closure.

What each line says. Line 1 says sales fell by 440 dollars on Saturdays. Its limit: it shows the fall, not the cause. Line 2 says fewer visitors came, down by 80 per Saturday. Its limit: it shows the count, not why they stayed away. Line 3 says the road closed to cars for 4 Saturdays. Its limit: it shows the closure, not how many drivers stayed away. Line 4 says delivery orders also fell, by 35 per Saturday, even though delivery bikes bypassed the car closure. Its limit: it shows a fall the closure alone does not explain, because the bikes did not use the closed road.

Convergence: 3 of 4 lines support the answer that the road closure cut Saturday sales. The point of agreement: the falls in sales and visitors both started on October 3. That was the first Saturday of the closure. Both stayed low for all 4 Saturdays.

Contrary line: Line 4 points the other way, because delivery orders fell even though delivery bikes bypassed the car closure, so the closure alone cannot explain that fall. Its weight is weak, because only one line points the other way, it covers delivery orders only, and the bikes still had to cross the closed junction to reach the shop, so the closure still touched them. Decision: set aside, with the reason that the delivery fall is small and the bikes still crossed the closed junction, while lines 1 to 3 tie the main fall to the closure.

New concrete case: the next Saturday, November 7, the road reopens. The case names a real place, the corner shop. It names a real time, Saturday November 7. It names a real action with checkable numbers: Saturday sales and visitor count. Prediction: sales rise back above 1,500 dollars and visitors rise above 260. Observation: sales 1,580 dollars, visitors 275. Result: fits the answer. Score: 1 fit out of 1 new case checked.

Handoff record:

- Question: why did Saturday sales at the corner shop fall in October?
- Lines: till log, foot count, street works notice, delivery log, each with its source and number.
- What each line says: sales down 440 dollars, visitors down 80, road closed 4 Saturdays, delivery orders down 35 even though delivery bikes bypassed the car closure.
- Convergence: the road closure cut Saturday sales, supported by 3 of 4 lines.
- Contrary line: the delivery log, weak, set aside because the delivery fall is small and the bikes still crossed the closed junction.
- Score: 1 fit out of 1 new case checked.

## Commands

- "show lines" lists each line with its source, number, and independence mark.
- "show convergence" states the converged answer with the count of supporting lines.
- "show record" emits the handoff record from Step 6.
- "save state" emits the lines, the convergence, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
