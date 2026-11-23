---
name: possibility-space
description: List the full space of options, prune it by constraint, rank what remains, pick the best with reasons, and name what was rejected and why.
---

# Search the Possibility Space

## What this skill does

This skill lists the full space of options for a choice. You list every option you can name. You prune the space with hard constraints. You rank what remains. You pick the best option and state why. You name what you rejected and why.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning lists the space. It does not prove the pick is best.

## Input

This skill receives a choice to make, stated in one or two sentences. It also receives the hard constraints, each named in one line. If the choice has no clear goal, stop and state the goal first. Do not list options for a choice with no goal.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the pruned list and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong pick cost time, money, or trust?
- Would a different option change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a full list, the pick rests on the options you happened to think of first.

List the space before you prune it. Do not prune first and then list only the options that survive. That order hides the options you never considered.

### Step 1: List the full space of options

List every option you can name for the choice. Name each option in plain words. Include options that look weak at first glance. A full list holds at least 4 options. Fewer than 4 options cannot show the space.

- Option: the option, in plain words.
- Source: where the option came from, named exactly enough to find it again.
- Cost: what the option costs, with a number where one exists.
- Number: the size, rate, or timing that matters, if one exists. If no number exists, say so. Do not invent one.

If the list holds fewer than 4 options, stop and gather more first. A short list is not the full space. It is the first few options you thought of.

### Step 2: Prune the space by constraint

Apply each hard constraint from the Input to every option. A hard constraint is a rule an option must meet. An option that breaks a hard constraint leaves the space. Write the reason for each cut in one line.

- Constraint: the rule, in plain words.
- Option: the option it cuts.
- Reason: why the option breaks the rule, in one line.

Count the options that remain. Write the count as a number, for example 5 options remain out of 8 options listed. A prune with no count written down is not a prune. It is a feeling.

Do not bend a hard constraint to save a favoured option. A bent constraint is not a constraint. If the constraint cuts every option, say so and stop. Do not pick from an empty space.

### Step 3: Rank what remains

Rank the options that remain, best to worst. Rank by the goal from the Input. Score each option on the same measures. Use at least 2 measures. A rank on one measure alone hides the trade.

- Measure: what you score, in plain words, with its unit.
- Score: the number for that option on that measure.
- Rank: the place of the option, best to worst.

Write the rank as a numbered list, best first. State the measure that puts the top option first. If two options tie, name the tie and the measure that would break it. Do not rank by gut feel. A rank with no scores is not a rank.

### Step 4: Pick the best option and state why

Pick the top ranked option. State why it wins, in two or three sentences. Name the measures where it leads. Name the measures where it does not lead, and why they matter less.

- Pick: the option, in plain words.
- Why it wins: the measures where it leads, with its numbers.
- Where it loses: the measures where it does not lead, with its numbers.
- Why the losses matter less: one sentence, in plain words.

Do not pick an option that Step 2 cut. A cut option stays cut until a constraint changes. If the top option fails on a measure that matters most, say so and stop. Do not pick it anyway.

### Step 5: Name what you rejected and why

Name every option you rejected. For each one, state the reason in one line. Rejected options fall into two groups: cut by a constraint in Step 2, or outranked in Step 3.

- Rejected option: the option, in plain words.
- Group: cut by constraint, or outranked.
- Reason: one line, in plain words.

Name at least 1 option that looked best at first glance but is not the pick. If no option looked best at first glance, say so. A pick with no tempting reject is a pick no one checked.

Check the tempting reject again before you move on. State what would have to change for it to win. If nothing could change, say so. That check stops a good looking option from winning by charm alone.

### Step 6: Hand the pick on

Hand on the pick only if it survived Steps 2 to 5. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Choice: the choice from the Input, with its goal and constraints.
- Full space: the options from Step 1, with their costs and numbers.
- Pruned space: the options that remain after Step 2, with the count.
- Rank: the ranked list from Step 3, with scores and measures.
- Pick: the pick from Step 4, with why it wins and where it loses.
- Rejected: the rejected options from Step 5, each with its reason.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in a new run, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 12 options listed per run. The maximum is 3 rounds of re-ranking per run. Do not list more than 12 options. Do not re-rank more than 3 times.

Stop when you reach either limit. Then hand on the best pick you found, or stop if the space is empty. See skills/handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 3, mark the unranked options as unranked. Reduce the scope to what you did rank. Do not hand on a pick with no rank.

## When this skill does not apply

Do not use this skill when the choice has no clear goal. A goal with no clear result lets any option seem best. State the goal first, or use a different skill.

Do not use this skill when the space holds fewer than 4 options. A short list cannot show the space. Gather more options first.

Do not use this skill when a hard constraint cuts every option. An empty space holds no pick. Change a constraint, or use a different skill.

Do not use this skill to pick an option that Step 2 cut. A cut option stays cut until a constraint changes.

Do not use this skill when the rank rests on one measure alone. A rank on one measure hides the trade. Add a second measure, or use a different skill.

## Worked example: the cafe that picks a new oven

Choice: a small cafe must pick a new oven. Goal: bake 40 loaves each morning before 8:00, with a budget of 2,500 dollars. Hard constraints: the oven must fit a 90 cm wide gap. It must run on the cafe power supply of 220 volts.

Full space, 8 options listed: Oven A costs 1,900 dollars and bakes 30 loaves per batch. Oven B costs 2,400 dollars and bakes 45 loaves per batch. Oven C costs 2,200 dollars and bakes 50 loaves per batch. Oven D costs 2,800 dollars and bakes 60 loaves per batch. Oven E costs 1,500 dollars and bakes 25 loaves per batch. Oven F costs 2,300 dollars and bakes 40 loaves per batch. Oven G costs 2,100 dollars and bakes 42 loaves per batch. Oven H costs 2,600 dollars and bakes 48 loaves per batch.

Prune by constraint: Oven D costs 2,800 dollars, above the 2,500 dollar budget, so it is cut. Oven H costs 2,600 dollars, above the budget, so it is cut. Oven C needs 380 volts, not 220 volts, so it is cut. 5 options remain out of 8 options listed.

Rank what remains, by loaves per batch and by cost, best first. Oven B: 45 loaves, 2,400 dollars, rank 1. Oven G: 42 loaves, 2,100 dollars, rank 2. Oven F: 40 loaves, 2,300 dollars, rank 3. Oven A: 30 loaves, 1,900 dollars, rank 4. Oven E: 25 loaves, 1,500 dollars, rank 5.

Pick: Oven B. It wins because it bakes 45 loaves per batch. That is the most of the options that remain. It also fits the 2,500 dollar budget. It loses on cost, because Oven G costs 300 dollars less. The cost loss matters less. Oven B bakes 3 more loaves per batch. It clears the 40 loaf goal with room to spare.

Rejected: Oven D and Oven H, cut by the budget. Oven C was cut by the power supply. It bakes 50 loaves per batch and looks best at first glance. Oven G, outranked, because it bakes 3 fewer loaves per batch than Oven B. Oven F, outranked, because it bakes 5 fewer loaves per batch. Oven A and Oven E, outranked, because they bake too few loaves per batch to meet the goal.

The tempting reject is Oven C. It bakes the most loaves, 50 per batch, and costs only 2,200 dollars. It loses because it needs 380 volts and the cafe has 220 volts. It would win only if the cafe rewired its power supply, which costs more than the budget allows.

Handoff record:

- Choice: pick a new oven for the cafe, bake 40 loaves each morning before 8:00, budget 2,500 dollars.
- Full space: 8 ovens listed, costs from 1,500 dollars to 2,800 dollars, batches from 25 loaves to 60 loaves.
- Pruned space: 5 options remain out of 8, after the budget and power cuts.
- Rank: Oven B first, then Oven G, Oven F, Oven A, and Oven E.
- Pick: Oven B, 45 loaves per batch, 2,400 dollars.
- Rejected: Oven D and Oven H on budget, Oven C on power, Oven G, Oven F, Oven A, and Oven E outranked.

## Commands

- "show space" lists the full space with the pruned count.
- "show rank" lists the ranked options with scores and measures.
- "show record" emits the handoff record from Step 6.
- "save state" emits the space, the rank, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
