---
name: local-constraint-discovery
description: List every constraint, check each candidate against each constraint, reject violators by name, and pick the solution that satisfies all constraints.
---

# Constraint-Based Discovery

## What this skill does

This skill finds a solution that satisfies every constraint. You list every constraint. You list the candidates. You check each candidate against each constraint. You reject each candidate that breaks a constraint, by name. You pick the solution that satisfies all constraints. You test the pick on a new case.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning lists the constraints. It does not prove the pick satisfies them.

## Input

This skill receives a problem, stated in one or two sentences, plus a list of constraints. Each constraint needs a source, a number, or a concrete test. If a constraint has none of these, stop and mark it as plain reasoning first. Do not check candidates against an unmarked constraint.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the constraint table and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong pick cost time, money, or trust?
- Would a different pick change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a full list of constraints, a pick can seem to fit and still break a constraint you never listed.

List every constraint before you list any candidate. Do not list a candidate first and then pick constraints that fit it. That order hides the constraints the candidate breaks.

### Step 1: List every constraint

List every constraint on the solution, in plain words. Each constraint needs a name, a limit, and a source or a mark that says it is plain reasoning.

- Constraint: the name of the constraint, in one sentence.
- Limit: the number or rule that must hold, stated exactly.
- Source: where the constraint came from, named exactly enough to find it again, or marked as plain reasoning.

List at least 3 constraints before you move on. Fewer than 3 constraints cannot show which candidate truly fits. If you have fewer than 3, stop and find more first.

A constraint with no limit does not count. "Keep it cheap" is not a constraint. "Cost under 50 dollars" is a constraint. Each constraint must name a limit that can be checked.

### Step 2: List the candidates

List the candidates for the solution, in plain words. Each candidate needs a name and one line that says what it is. List at least 3 candidates before you move on.

- Candidate: the name of the candidate.
- What it is: one line, in plain words.
- Source: where the candidate came from, or the record that lists it, named exactly enough to find it again.

List only candidates you can name and check. A candidate you cannot check stays off the list. Do not check a candidate you cannot test against the constraints.

### Step 3: Check each candidate against each constraint

Build a table. Each row is a candidate. Each column is a constraint. For each cell, mark pass or fail, with a number where one exists.

- Candidate: the name of the candidate, from Step 2.
- Constraint: the name of the constraint, from Step 1.
- Result: pass or fail, with the number that shows it.
- Source: where the number came from, named exactly enough to find it again, or marked as plain reasoning.

Check every candidate against every constraint. A cell left blank is not a pass. Mark it unchecked, and do not count it as a pass. A candidate with an unchecked cell cannot be picked yet.

Score each candidate as passes out of total constraints checked. Write the score as a count, for example 3 passes out of 4 constraints. A candidate with no constraints checked has no score. Do not pick a candidate with no score.

### Step 4: Reject violators by name

For each candidate that fails any constraint, reject it by name. Write the candidate name, the constraint it broke, and the number that shows the break.

- Rejected: the candidate name.
- Broke: the constraint it broke, named again.
- Number: the number that shows the break.
- Reason: one line, in plain words.

Do not keep a rejected candidate in the running. A candidate that breaks one constraint is out, even if it passes all the rest. Do not rank rejected candidates above a candidate that passes all constraints. A near miss is still a miss.

If every candidate is rejected, stop. Do not relax a constraint to save a candidate. Relax a constraint only by naming the new limit, naming who approved the change, and running the steps again from Step 1.

### Step 5: Pick the solution that satisfies all constraints, and test it on a new concrete case

Pick the candidate that passes every constraint in Step 3. If more than one candidate passes all constraints, pick the one with the lowest cost, or the earliest time, and state the tie-break rule you used.

Name a new concrete case you did not use in Steps 1 to 4. Run the picked solution in that case. Predict what will happen. Then check the prediction against what happens.

A concrete case counts as a case only if it names a real place, a real time, and a real action with a number that can be checked. A case with no place, no time, and no checkable number does not count. Do not score a pick on a case that does not count. Canonical definition: skills/local-handover/router/router-rules.md.

- Pick: the candidate name, with its score from Step 3, for example 4 passes out of 4 constraints.
- Tie-break: the rule you used if more than one candidate passed all constraints, or marked none needed.
- New case: the case, in plain words, with its place, time, and action.
- Prediction: what the picked solution will do, with a number where one exists.
- Observation: what actually happened, with its number where one exists.
- Result: fits the pick, or breaks it.

Score the pick as fits out of total new cases checked. Write the score as a count, for example 1 fit out of 1 new case checked. A pick with no new case checked has no score. Do not hand on a pick with no score.

If the new case breaks the pick, mark the pick broken. Go back to Step 3 and check the next candidate that passes all constraints, or stop.

### Step 6: Hand the solution on

Hand on the solution only if it survived Step 5. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Problem: the problem from the Input, in one or two sentences.
- Constraints: the constraints from Step 1, each with its limit and source.
- Candidates: the candidates from Step 2, each with its score from Step 3.
- Rejected: the rejected candidates from Step 4, each with the constraint it broke.
- Pick: the picked solution from Step 5, with its score and its tie-break rule.
- Score: fits out of total new cases checked.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in the next step, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 8 constraints per run. The maximum is 6 candidates per run. The maximum is 4 new cases checked per run. Do not list more than 8 constraints. Do not list more than 6 candidates. Do not check more than 4 new cases.

Stop when you reach any limit. Then hand on the best solution you found, or stop if none survived Step 5. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 5, mark the unchecked cases as unchecked. Reduce the scope to what you did check. Do not hand on a pick with no score.

## When this skill does not apply

Do not use this skill when the constraint list is incomplete. A pick that fits the listed constraints can still break one you never listed. List every constraint first, or use a different skill.

Do not use this skill when a constraint has no limit that can be checked. "Keep it cheap" is not a constraint. Name the number first.

Do not use this skill when a candidate has an unchecked cell in Step 3. An unchecked cell is not a pass. Check it first, or do not pick that candidate.

Do not use this skill to relax a constraint so a favorite candidate survives. A relaxed constraint needs a new limit, a named approver, and a fresh run from Step 1.

Do not use this skill when a new case breaks the pick and you keep the pick anyway. A broken pick stays broken until the next passing candidate is checked and tested.

## Worked example: the meeting that must fit the whole team

Problem: pick a time for a weekly team meeting that fits the whole team. The team has 5 people.

Constraints:

- Time: the meeting must start at or after 9:00, from the team calendar.
- Length: the meeting must last 30 minutes or less, from the team rule.
- Room: the meeting must have a room that seats 5 people, from the room list.
- People: all 5 people must be able to attend, from the team calendar.
- Cost: the meeting must cost nothing extra, from the team budget of zero dollars.

Candidates:

- Monday 9:00 in Room A, seats 6, 30 minutes, cost zero dollars.
- Monday 8:30 in Room A, seats 6, 30 minutes, cost zero dollars.
- Tuesday 10:00 in Room B, seats 4, 30 minutes, cost zero dollars.
- Wednesday 9:30 in Room C, seats 8, 45 minutes, cost zero dollars.
- Thursday 9:00 in Room A, seats 6, 30 minutes, cost zero dollars, but 1 person is away.

Check each candidate against each constraint:

- Monday 9:00 in Room A: time pass, length pass, room pass, people pass, cost pass. Score: 5 passes out of 5 constraints.
- Monday 8:30 in Room A: time fail, starts before 9:00. Score: 4 passes out of 5 constraints.
- Tuesday 10:00 in Room B: room fail, seats 4 for 5 people. Score: 4 passes out of 5 constraints.
- Wednesday 9:30 in Room C: length fail, 45 minutes over the 30 minute limit. Score: 4 passes out of 5 constraints.
- Thursday 9:00 in Room A: people fail, 1 person is away. Score: 4 passes out of 5 constraints.

Rejected by name: Monday 8:30 in Room A broke the time constraint, starts at 8:30 before 9:00. Tuesday 10:00 in Room B broke the room constraint, seats 4 for 5 people. Wednesday 9:30 in Room C broke the length constraint, 45 minutes over the 30 minute limit. Thursday 9:00 in Room A broke the people constraint, 1 person is away.

Pick: Monday 9:00 in Room A. Score: 5 passes out of 5 constraints. No tie-break needed, because only one candidate passed all constraints.

New concrete case: the next Monday, the team meets at 9:00 in Room A for 30 minutes. The case names a real place, Room A, a real time, Monday 9:00, and a real action with a checkable number, 5 people in a room that seats 6, for 30 minutes. Prediction: all 5 people attend, the meeting ends by 9:30, cost zero dollars. Observation: all 5 people attended, the meeting ended at 9:28, cost zero dollars. Result: fits the pick. Score: 1 fit out of 1 new case checked.

Handoff record:

- Problem: pick a time for a weekly team meeting that fits the whole team of 5 people.
- Constraints: start at or after 9:00, 30 minutes or less, room seats 5, all 5 people can attend, cost zero dollars.
- Candidates: Monday 9:00 Room A, 5 passes out of 5. Monday 8:30 Room A, 4 passes out of 5. Tuesday 10:00 Room B, 4 passes out of 5. Wednesday 9:30 Room C, 4 passes out of 5. Thursday 9:00 Room A, 4 passes out of 5.
- Rejected: Monday 8:30 Room A, time. Tuesday 10:00 Room B, room. Wednesday 9:30 Room C, length. Thursday 9:00 Room A, people.
- Pick: Monday 9:00 in Room A, 5 passes out of 5 constraints, no tie-break needed.
- Score: 1 fit out of 1 new case checked.

## Commands

- "show table" lists each candidate with its pass or fail mark per constraint.
- "show record" emits the handoff record from Step 6.
- "save state" emits the constraint table, the rejected list, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
