---
name: evolutionary-search
description: Start from a working design, make small changes, keep changes that improve it, drop changes that do not, repeat rounds, and stop when no change improves it.
---

# Evolutionary Search

## What this skill does

This skill improves a working design in small rounds. You start from a design that already works. You make small changes, one at a time. You keep the changes that improve it. You drop the changes that do not. You repeat the rounds. You stop when no change improves it.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning proposes a change. It does not prove the change helps.

## Input

This skill receives a working design, stated in one or two sentences. It also receives the measure of improvement, with its unit and its starting value. If the design does not work yet, stop and fix it first. Do not improve a design that does not work.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility. Do not judge by reversibility alone. A step can be easy to reverse and still cost time, money, or trust.

- Light check. Use this for a routine step with low impact and easy reversal. Do Steps 1 to 3 only, then state the best change found and stop.
- Full use. Use this for a new plan, a costly move, or a claim that shapes the next step. Use it for any step with high impact or that is hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong change cost time, money, or trust?
- Would a different change alter what I do next?

If no decision follows, answer directly. If the step is low impact and easy to reverse, use the light check. If the step is high impact or hard to reverse, use the full use.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a working start and a stated measure, no change can be judged as better or worse.

Change one thing at a time. Do not change two things at once and then claim one of them helped. That order hides which change did the work.

### Step 1: State the working design and the measure

Write the working design in one or two sentences, in plain words. Then name the measure of improvement, with its unit and its starting value. The measure must be a number that can be checked.

- Design: the working design, in plain words.
- Measure: what improves, with its unit.
- Starting value: the number now, checked and written down.
- Goal: the value you aim for, if one exists. If no goal exists, say so. Do not invent one.

If the design does not work yet, stop and fix it first. A broken start cannot show whether a change helps. If the measure cannot be checked, pick a measure that can be checked.

### Step 2: Propose small changes, one at a time

List small changes to try, one at a time. A small change alters one part of the design. Name each change in one sentence. List at least 3 changes before you test any of them.

- Change: the change, in one sentence.
- Part: the part of the design it alters.
- Expectation: what you expect it to do to the measure, with a number where one exists.

A change that alters two parts at once does not count. Split it into two changes, or drop it. A change with no expected effect on the measure does not count either. Drop it from the list.

### Step 3: Test each change and keep or drop it

Test each change from Step 2, one at a time. Run the design with the change in place. Check the measure. Keep a change only if the measure improves. Drop a change if the measure stays the same or gets worse.

- Change: the change tested.
- Result: the new value of the measure, with its number.
- Kept or dropped: kept if the measure improved, dropped if it did not.
- Reason: one line, in plain words.

Test the changes in the order you listed them. Do not skip a change because you expect it to fail. An expected failure is still a test. Write every result down, kept or dropped.

### Step 4: Repeat the rounds

Start a new round from the best design so far. The best design holds all the kept changes and none of the dropped ones. Propose new small changes. Test them. Keep the ones that improve the measure. Drop the rest.

- Round: the round number.
- Starting value: the measure at the start of the round.
- Changes tried: the changes tested in the round.
- Kept: the changes kept, with their new values.
- Dropped: the changes dropped, with their reasons.
- End value: the measure at the end of the round.

Run at least 2 rounds before you stop. One round cannot show whether the gains hold. If a round keeps no change, write that down. A round with no kept change is a result, not a failure.

### Step 5: Watch for a change that helps once but blocks later gains

Check each kept change again after later rounds. A change can help in its own round and still block later improvement. Name such a change in one sentence. Drop it if a later round shows it blocks a bigger gain.

- Change: the change, in one sentence.
- Early gain: the improvement it gave in its own round, with its number.
- Later block: what it stops, with its number where one exists.
- Decision: kept or dropped, with one line of reason.

Test the design without the change before you drop it. If the measure improves without it, drop it and keep the new design. If the measure gets worse without it, keep it and say why. Do not drop a change on a hunch.

Reject at least 1 change that looked good at first but blocks later gains, or state that none did. If you cannot name one, check the kept changes again. A change that helps once and blocks later is easy to miss.

### Step 6: Hand the final design on

Hand on the final design only if it survived Step 4. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Design: the starting design from Step 1, with its starting value.
- Measure: the measure from Step 1, with its unit.
- Rounds: each round from Step 4, with its kept and dropped changes.
- Final design: the design now, with its final value.
- Improvement: the final value minus the starting value, with its number.
- Dropped: the changes dropped, each with its reason, including any change from Step 5.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in a new run, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 5 rounds per run. The maximum is 4 changes tested per round. Do not run more than 5 rounds. Do not test more than 4 changes in one round.

Stop when you reach either limit. Stop also when a full round keeps no change. Then hand on the best design you found. Do not keep trying new changes after a round with no kept change. Do not spend more time improving than the gain is worth.

If the budget runs out in the middle of a round, mark the untested changes as untested. Reduce the scope to what you did test. Do not hand on a design with untested changes in it.

## When this skill does not apply

Do not use this skill when the design does not work yet. A broken start cannot show whether a change helps. Fix the design first, or use a different skill.

Do not use this skill when the measure cannot be checked. A measure with no number gives no way to judge a change. Pick a checkable measure first.

Do not use this skill when a change alters two parts at once. A two part change shows nothing about either part. Split it, or use a different skill.

Do not use this skill to keep a change that a later round shows blocks a bigger gain. A blocking change stays blocking until it is dropped and tested.

Do not use this skill when a full round keeps no change and you keep going anyway. A round with no kept change means the search has stopped improving. Hand on the best design, or stop.

## Worked example: the delivery route that gets faster

Working design: a courier drives one route each morning, with 12 stops in fixed order. Measure: total driving time, in minutes. Starting value: 74 minutes, measured from the driver log for the last 5 mornings. Goal: under 60 minutes.

Round 1 changes, one at a time. Change 1: move stop 7 to just after stop 3. Expectation: saves 4 minutes. Change 2: start 15 minutes earlier, at 7:45. Expectation: saves 3 minutes. Change 3: skip the toll road and take the river road. Expectation: saves 2 minutes. Change 4: load the van in stop order the night before. Expectation: saves 5 minutes.

Round 1 results. Change 1: 70 minutes, kept, saved 4 minutes. Change 2: 71 minutes, kept, saved 3 minutes. Change 3: 76 minutes, dropped, cost 2 minutes. Change 4: 66 minutes, kept, saved 5 minutes. End of round 1: 66 minutes, down from 74 minutes.

Round 2 changes. Change 1: move stop 11 to just after stop 9. Expectation: saves 3 minutes. Change 2: start 15 minutes earlier still, at 7:30. Expectation: saves 2 minutes. Change 3: swap stops 5 and 6. Expectation: saves 1 minute.

Round 2 results. Change 1: 63 minutes, kept, saved 3 minutes. Change 2: 63 minutes, dropped, saved 0 minutes. Change 3: 62 minutes, kept, saved 1 minute. End of round 2: 62 minutes.

Round 3 changes. Change 1: move stop 2 to the end of the route. Expectation: saves 2 minutes. Change 2: take the toll road for the last 3 stops only. Expectation: saves 1 minute.

Round 3 results. Change 1: 64 minutes, dropped, cost 2 minutes. Change 2: 61 minutes, kept, saved 1 minute. End of round 3: 61 minutes.

The blocking change: starting at 7:45 helped once, saving 3 minutes in round 1. In round 2, starting at 7:30 saved 0 minutes. The early start helped once because the roads were clear. But it blocked later gains. The driver then waited at stop 1, which opens at 8:00. The design without the 7:45 start, tested in round 2, still ran 63 minutes. So the early start was kept, but the still earlier start was dropped.

Round 4: no new change improved the time. Change 1: reorder stops 4 and 5, 61 minutes, dropped. Change 2: load the van in reverse stop order, 62 minutes, dropped. A full round kept no change, so the search stops.

Final design: 12 stops in the new order. The van loads in stop order. The start is 7:45. The toll road serves the last 3 stops only. Final value: 61 minutes. Improvement: 13 minutes, from 74 minutes to 61 minutes. The goal of under 60 minutes was not met, and the record says so.

Handoff record:

- Design: one morning route with 12 stops in fixed order, starting value 74 minutes.
- Measure: total driving time, in minutes.
- Rounds: 4 rounds run, round 1 kept 3 changes, round 2 kept 2 changes, round 3 kept 1 change, round 4 kept 0 changes.
- Final design: new stop order, van loaded in stop order, start at 7:45, toll road for the last 3 stops.
- Improvement: 13 minutes, from 74 minutes to 61 minutes.
- Dropped: the river road, the 7:30 start, moving stop 2 to the end, reordering stops 4 and 5, reverse loading.

## Commands

- "show rounds" lists each round with its kept and dropped changes.
- "show design" states the current design and its measure value.
- "show record" emits the handoff record from Step 6.
- "save state" emits the rounds, the design, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
