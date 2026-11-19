---
name: local-analysis-synthesis
description: Break a whole into its parts, show how the parts produce the whole behavior, and rebuild the account of the whole from the parts.
---

# Analysis and Synthesis

## What this skill does

This skill breaks a whole into its parts, then rebuilds the account of the whole from the parts. You name the whole and its observed behavior. You list the parts. You show what each part does. You show how the parts work together. You rebuild the account of the whole. You test the rebuilt account against a new case.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning splits the whole and rebuilds it. It does not prove the split.

## Input

This skill receives the whole and its observed behavior, plus a list of parts. The behavior needs a source, a number, or a concrete test. If the behavior has none of these, stop and get one first. Do not split a whole you have not observed.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the parts and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong account of the whole cost time, money, or trust?
- Would a different account change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without the observed behavior, the parts explain nothing, and the rebuild has no target.

Split the whole before you rebuild it. Do not write the rebuilt account first and then pick parts that fit it. That order hides the parts that do the real work.

### Step 1: Name the whole and its observed behavior

Write the whole in one sentence, in plain words. Then write its observed behavior in one or two sentences, with a source and a number where one exists.

- Whole: what you are splitting, in one sentence.
- Behavior: what the whole does, in plain words.
- Source: where the behavior was observed, named exactly enough to find it again.
- Number: the measured size, rate, or timing of the behavior, if one exists. If no number exists, say so. Do not invent one.

If you cannot state the behavior, you cannot split the whole. Go back and observe the whole first.

### Step 2: List the parts

List each part of the whole, in plain words. Each part needs a name and one line that says what it does.

- Part: the name of the part.
- What it does: one line, in plain words.
- Source: where you saw the part, or the record that lists it, named exactly enough to find it again.

List only parts you can name and place in the whole. A part you cannot place is a guess. Mark it as a guessed part and keep it out of the rebuild in Step 5.

### Step 3: Show what each part does alone

For each part from Step 2, write what it does on its own. Name the source or the test that shows it, where one exists. If no source or test exists, mark the part untested.

- Part: the name of the part.
- What it does alone: one or two sentences, in plain words.
- Source or test: the record or check that shows it, or marked untested.

Do not claim a part does a job it has not been shown to do. An untested part stays untested in the record. It does not enter the rebuild as a proven part.

### Step 4: Show how the parts work together

Name each link between parts. A link says how one part acts on another part, or how two parts act together. Each link needs a source or a test, where one exists.

- Link: the two parts it joins, and what passes between them, in one sentence.
- Source or test: the record or check that shows the link, or marked untested.

Do not invent a link to make the rebuild work. A link with no source or test stays untested. The rebuild in Step 5 must say which links are untested.

### Step 5: Rebuild the account of the whole from the parts

Write the rebuilt account in plain words, in two or three sentences. It must use only the parts from Step 2 and the links from Step 4. It must explain the observed behavior from Step 1. It must say which parts are untested and which links are untested.

- Rebuilt account: the whole behavior, explained from the parts and links.
- Parts used: each part from Step 2 that the account uses.
- Links used: each link from Step 4 that the account uses.
- Untested: each part or link that is still untested.

If the rebuilt account cannot explain the behavior, say so. Do not add a new part to close the gap. Go back to Step 2, list the missing part, and run the steps again.

### Step 6: Test the rebuilt account against a new case

Name a new case you did not use in Step 1. Predict what the whole will do in that case, from the rebuilt account. Then check the prediction against what happens.

- New case: the case, in plain words, with its source.
- Prediction: what the rebuilt account says the whole will do, with a number where one exists.
- Observation: what actually happened, with its number where one exists.
- Result: fits the rebuilt account, or breaks it.

Score the rebuild as fits out of total new cases checked. Write the score as a count, for example 1 fit out of 1 case. A rebuild with no new case checked has no score. Do not hand on a rebuild with no score.

If the new case breaks the rebuilt account, mark the rebuild broken. Go back to Step 2 and find the part or link that failed, or stop.

## Handoff

Hand the rebuilt account on only if it survived Step 6. The handoff record holds these fields, matching the router contract.

- Whole: the whole from Step 1, with its observed behavior.
- Parts: each part from Step 2, with what it does.
- Links: each link from Step 4, with what passes between the parts.
- Rebuilt account: the account from Step 5, in plain words.
- Untested parts and links: each part or link still untested.
- New case: the new case from Step 6, with its prediction, observation, and result.
- Score: fits out of total new cases checked.

A handoff missing any field is not complete.

## Stop rule

Set the limit before the work starts. The maximum is 8 parts per whole. The maximum is 3 rebuild attempts per run. Do not list more than 8 parts. Do not rebuild more than 3 times.

Stop when you reach either limit. Then hand on the best rebuild you found, or stop if none survived Step 6. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 6, mark the unchecked cases as unchecked. Reduce the scope to what you did check. Do not hand on a rebuild with no score.

## When this skill does not apply

Do not use this skill when the whole has no observed behavior. A whole with no behavior gives the split no target. Observe the whole first, or use a different skill.

Do not use this skill when the parts list is only guessed parts. Guessed parts cannot rebuild the whole. Find the real parts first.

Do not use this skill to explain the whole from one part alone. One part is not the whole. List the other parts, or say the account is incomplete.

Do not use this skill when the rebuilt account adds a part that Step 2 did not list. A new part needs its own step in the list, with its own source or test.

Do not use this skill when a new case breaks the rebuilt account and you keep the rebuild anyway. A broken rebuild stays broken until the parts or the links change.

## Worked example: the kettle that boils water in 3 minutes

The whole is an electric kettle. Its observed behavior is that it boils 1 litre of water in 3 minutes. Source: the kitchen timer and the markings on the jug.

Parts:

- Heating element: it heats the water in the jug.
- Switch: it starts the flow of power to the element.
- Thermostat: it cuts the power when the water boils.
- Jug: it holds the water around the element.
- Lid: it holds heat inside the jug.
- Power cord: it carries power from the wall to the kettle.

What each part does alone: the element heats water when power flows through it. The switch starts and stops the flow of power. The thermostat cuts power at boiling point. The jug holds the water. The lid holds heat in. The cord carries power.

Links: the switch sends power through the cord to the element. The element heats the water held in the jug. The lid holds the heat in the jug. The thermostat cuts power when the water reaches boiling point.

Rebuilt account: the switch sends power through the cord to the element. The element heats the water in the jug. The lid holds heat in, so the water reaches boiling point in 3 minutes. The thermostat then cuts the power. All parts and links are tested by the kettle manual and by the timed run.

New case: the kettle boils 0.5 litres of water. Prediction: about 90 seconds, from the rebuilt account, because half the water needs about half the heat. Observation: 95 seconds, timed on the kitchen timer. Result: fits the rebuilt account. Score: 1 fit out of 1 new case checked.

Handoff record:

- Whole: an electric kettle that boils 1 litre of water in 3 minutes.
- Parts: heating element, switch, thermostat, jug, lid, power cord.
- Links: switch to element through the cord; element to water in the jug.
- Links, continued: lid holds heat in; thermostat cuts power at boiling point.
- Rebuilt account: power flows to the element and heats the water. The lid holds heat in. The thermostat cuts power at boiling point.
- New case: 0.5 litres boiled in 95 seconds, against a prediction of about 90 seconds, fits the account.
- Score: 1 fit out of 1 new case checked.

## Commands

- "show parts" lists each part with what it does and its source or test.
- "show rebuild" emits the rebuilt account from Step 5.
- "show record" emits the handoff record from Step 6.
- "save state" emits the parts, the rebuild, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
