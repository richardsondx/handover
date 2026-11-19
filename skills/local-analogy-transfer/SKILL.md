---
name: local-analogy-transfer
description: Map a shared structure from a source case to a target case, state what carries over and what does not, and reject surface-similar sources with a different structure.
---

# Analogy and Cross-Domain Transfer

## What this skill does

This skill maps a shared structure from a source case to a target case. You state the target problem. You find a source case that solved a similar problem. You map the structure the two cases share. You state what carries over. You state what does not carry over. You reject sources that only look similar on the surface. You test the transfer on a new case.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning maps the structure. It does not prove the transfer works.

## Input

This skill receives a target problem, stated in one or two sentences. It also receives a source case, with a source named exactly enough to find it again. If the target problem has no clear goal, stop and state the goal first. Do not map from a source to a target with no goal.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the shared structure and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong transfer cost time, money, or trust?
- Would a different source case change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a stated target problem, any source can seem to fit, and the map proves nothing.

Map the structure before you carry anything over. Do not carry a fix over first and then look for a structure that fits it. That order hides the parts that do not transfer.

### Step 1: State the target problem

Write the target problem in one or two sentences, in plain words. Name the goal. Name the block. Name the number that matters, if one exists.

- Target: the problem to solve, in plain words.
- Goal: what a good result looks like.
- Block: what stops the goal now.
- Number: the size, rate, or timing that matters, if one exists. If no number exists, say so. Do not invent one.

If the goal is vague, rewrite it until it names one clear result. A vague goal lets any source seem to fit.

### Step 2: Find a source case

Find a source case that solved a similar problem in a different setting. Name the source case in plain words. Name where it came from, exactly enough to find it again. Name what the source case did, and the result it got.

- Source case: the case, in plain words.
- Where it came from: the record, person, or place that holds it, named exactly enough to find it again.
- What it did: the action the source case took.
- Result: the measured result, with a number where one exists.

Find at least 2 source cases before you pick one. Fewer than 2 sources cannot show which structure matters. If you have fewer than 2 sources, stop and gather more first.

A source case counts only if it names a real action and a real result. A story with no action and no result is not a source case. Drop it from the list.

### Step 3: Map the shared structure

List the parts of the target problem and the parts of the source case side by side. For each part, state whether the two cases share the same structure. Name each shared link in one sentence.

- Target part: the part of the target problem.
- Source part: the matching part of the source case.
- Shared link: what the two parts have in common, in one sentence.
- Holds: yes or no, whether the link truly holds.

Count the links that hold. Write the count as a number, for example 3 shared links hold out of 4 links checked. A transfer with no shared link that holds is not a transfer. It is a guess.

Reject a source case when its links do not hold. A source that only looks similar on the surface has a different structure underneath. Name the difference in one sentence, and drop that source. Do not keep a source you rejected.

### Step 4: State what carries over and what does not

For each shared link that holds, state what carries over from the source to the target. For each link that does not hold, state what does not carry over. Write both lists in plain words.

- Carries over: the action, rule, or fix that moves from the source to the target, with the shared link it rests on.
- Does not carry over: the action, rule, or fix that stays behind, with the link that failed.
- Risk: what goes wrong if a part that does not carry over is used anyway, in one sentence.

Do not carry over a part whose link failed in Step 3. A failed link means the part rests on a different structure. Using it anyway is a guess, not a transfer.

### Step 5: Test the transfer on a new concrete case

Name a new concrete case you did not use in Steps 1 to 4. Predict what the carried-over fix will do in that case. Then check the prediction against what happens.

**Authority split for this test.**

- (a) Authorized execution. Run the test only when it is read-only, or when the action is listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition. A read-only check reads, observes, or measures. It does not change, publish, send, pay, delete, or deploy anything.
- (b) Test specification or proposal. When the test needs an action outside the manifest, do not run it. Write the test as a runnable predicate: the case, the prediction with its number, the observation that would count as a pass, and the observation that would count as a fail. Then write a manifest action proposal for the next unit or human gate: the exact action, destination, payload or template, limit, and condition, so the next approval can list it. Hand the specification and the proposal to the next unit or human gate with the record, marked untested. In the record, write the Observation as not run. An untested test has no score. Do not report a fit for a test that did not run.

A concrete case counts as a case only if it names a real place, a real time, and a real action with a number that can be checked. A case with no place, no time, and no checkable number does not count. Do not score a transfer on a case that does not count. Canonical definition: skills/local-handover/router/router-rules.md.

- New case: the case, in plain words, with its place, time, and action.
- Prediction: what the carried-over fix will do, with a number where one exists.
- Observation: what actually happened, with its number where one exists.
- Result: fits the transfer, or breaks it.

Score the transfer as fits out of total new cases checked. Write the score as a count, for example 1 fit out of 1 new case checked. A transfer with no new case checked has no score. Do not hand on a transfer with no score.

If the new case breaks the transfer, mark the transfer broken. Go back to Step 2 and find a new source case, or stop.

### Step 6: Hand the transfer on

Hand on the transfer only if it survived Step 5. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Target: the target problem from Step 1, with its goal and block.
- Source cases: the source cases from Step 2, each with where it came from and its result. The record names every source case used, not only the first one.
- Shared structure: the shared links from Step 3, each marked holds or does not hold.
- Carries over: the list from Step 4, what carries over and what does not.
- New case: the new case from Step 5, with its prediction, observation, and result.
- Score: fits out of total new cases checked.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in the next step, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 3 source cases per run. The maximum is 4 new cases checked per run. Do not use more than 3 sources. Do not check more than 4 new cases.

Stop when you reach either limit. Then hand on the best transfer you found, or stop if none survived Step 5. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 5, mark the unchecked cases as unchecked. Reduce the scope to what you did check. Do not hand on a transfer with no score.

## When this skill does not apply

Do not use this skill when the target problem has no clear goal. A goal with no clear result lets any source seem to fit. State the goal first, or use a different skill.

Do not use this skill when no source case names a real action and a real result. A story with no action and no result is not a source case. Find a real source first.

Do not use this skill when the source only looks similar on the surface and its structure differs. A different structure means the fix does not transfer. Name the difference, drop the source, and find another one.

Do not use this skill to carry over a part whose link failed in Step 3. A failed link stays failed until a new source case is found and mapped.

Do not use this skill when a new case breaks the transfer and you keep the transfer anyway. A broken transfer stays broken until a new source is mapped and tested.

## Worked example: the bike shop that borrows from a bakery

Target problem: a bike shop has long waits on Saturday mornings. Goal: cut the average wait from 40 minutes to under 20 minutes. Block: bikes arrive in a rush between 9:00 and 11:00, and only 2 mechanics are on shift. Number: average wait 40 minutes, measured from the shop log for the last 4 Saturdays.

Source cases: a bakery that takes bread orders the night before, and a clinic that books morning slots in 15 minute blocks. The bakery source: the bakery on Main Street takes orders by phone the night before, and its morning wait fell from 25 minutes to 5 minutes. The clinic source: the clinic books 15 minute slots, and its morning wait fell from 30 minutes to 10 minutes.

Shared structure: the bakery and the bike shop both face a morning rush of work that can be booked ahead. The clinic and the bike shop both face a morning rush that can be split into fixed time slots. Links: bookable ahead, holds for the bakery. Fixed time slots, holds for the clinic. Same staff all day, does not hold for the clinic, because the shop adds a third mechanic on Saturdays.

Rejected source: a taxi firm that adds more cars at rush hour. It looks similar on the surface, because it also faces a rush. Its structure differs, because it solves the rush by adding vehicles, not by booking ahead. The bike shop cannot add more mechanics at short notice. Name the difference, drop the source.

Carries over: booking ahead, from the bakery. Fixed time slots, from the clinic. Does not carry over: the clinic staffing pattern, because the shop staffing differs on Saturdays.

New concrete case: the next Saturday, the shop books 12 repairs ahead by phone on Friday, in 30 minute slots. The case names a real place, the bike shop, a real time, Saturday 9:00 to 11:00, and a real action with a checkable number, 12 booked repairs and the average wait. Prediction: average wait under 20 minutes. Observation: average wait 15 minutes, from the shop log. Result: fits the transfer. Score: 1 fit out of 1 new case checked.

Handoff record:

- Target: cut the Saturday morning wait at the bike shop from 40 minutes to under 20 minutes.
- Source cases: the bakery on Main Street, orders taken the night before, wait fell from 25 minutes to 5 minutes; and the clinic, 15 minute slots, wait fell from 30 minutes to 10 minutes.
- Shared structure: bookable ahead, holds. Fixed time slots, holds. Same staff all day, does not hold.
- Carries over: booking ahead, from the bakery; fixed time slots, from the clinic. Does not carry over: the clinic staffing pattern, because the shop staffing differs on Saturdays.
- New case: 12 repairs booked ahead in 30 minute slots, average wait 15 minutes, fits the transfer.
- Score: 1 fit out of 1 new case checked.

## Commands

- "show map" lists each shared link with whether it holds.
- "show record" emits the handoff record from Step 6.
- "save state" emits the source cases, the map, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
