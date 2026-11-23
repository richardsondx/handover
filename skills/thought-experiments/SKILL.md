---
name: thought-experiments
description: Test a claim by building an imagined scenario, derive what the scenario shows, and state what it does to the claim.
---

# Thought Experiments

## What this skill does

This skill tests a claim by building an imagined scenario. You state the claim. You build one scenario. You run the scenario step by step. You derive what the scenario shows. You state what it does to the claim. You hand the verdict on.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning builds the scenario. It does not prove the claim.

## Input

This skill receives the claim to test, stated in one sentence. The claim needs a scope: where it applies, and where it does not apply. If the claim has no scope, stop and name one first. Do not test a claim with no scope.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state what the scenario shows and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong verdict on the claim cost time, money, or trust?
- Would a different verdict change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a stated claim, a scenario proves nothing, and any result can be read to fit any claim.

Run the scenario from its own rules, not from the claim. A step that assumes the claim is true proves nothing. Each step must follow from the scenario setting and the earlier steps only.

### Step 1: State the claim and its scope

Write the claim in one sentence, in plain words. Then write its scope in plain words. The scope names where the claim applies, and where it does not apply.

- Claim: the claim to test, in one sentence.
- Scope: where the claim applies, and where it does not apply.
- Number: the size, rate, or timing in the claim, if one exists. If no number exists, say so. Do not invent one.

If the claim is vague, rewrite it until it names one clear result. A vague claim cannot be tested by a scenario. A scenario built on a vague claim shows nothing.

### Step 2: Build one scenario

Build one scenario that bears on the claim. Name the setting, the actors, and the rules that hold in the scenario. The scenario must be concrete: a named place, a named time, and named actors.

- Setting: the named place and time.
- Actors: the named people or things that act in the scenario.
- Rules: the rules that hold in the scenario, in plain words, one line each.
- What changes: the one change the scenario makes, named in one line.

Do not build a scenario that assumes the claim is true. The scenario must be able to show the claim is wrong. If no scenario could show it wrong, the claim cannot be tested this way. Say so and stop.

### Step 3: Run the scenario step by step

Run the scenario one step at a time. Number each step. Each step follows from the scenario rules in Step 2, or from earlier steps. Each step states what happens, in one sentence.

- Step: the numbered step, in one sentence.
- Uses: the scenario rule or earlier step it follows from, named by number.
- Follows: yes or no, whether the step truly follows from what it uses.

If a step does not follow from the scenario rules, mark it broken. The run stops at the broken step. Do not carry a broken step forward into Step 4.

### Step 4: Derive what the scenario shows

Write what the scenario shows, in one or two sentences, in plain words. Name the result. Name why it follows from the steps in Step 3. Do not add a fact the scenario did not contain.

- Result: what happens at the end of the scenario, in one sentence.
- Why it follows: the steps it follows from, named by number.
- What it does not show: what the scenario leaves open, in one line.

A scenario shows only what its rules and steps contain. It does not show what would happen under different rules. Say what it leaves open.

### Step 5: State what the result does to the claim

Pick exactly one verdict for the claim, from the four below. Give one line of reason for the verdict.

- Supports: the scenario result fits the claim, and the claim stands stronger.
- Weakens: the scenario result fits the claim only in part, or needs an extra condition.
- Kills: the scenario result contradicts the claim inside its scope.
- Leaves unchanged: the scenario result bears on the claim in no clear way.

Record the verdict and the reason in one line each. Do not pick two verdicts. Do not soften a kill into a weaken. A kill is a kill.

### Step 6: Hand the verdict on

Hand on the verdict only if no step in Step 3 is broken. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Claim: the claim from Step 1, with its scope.
- Scenario: the setting, actors, and rules from Step 2.
- Steps: the numbered steps from Step 3, each with what it uses.
- Result: what the scenario shows, from Step 4.
- Verdict: the verdict from Step 5, with its one line of reason.
- What it leaves open: what the scenario does not show, from Step 4.

The next step receives this record and nothing else as its starting point. Do not add a new scenario to the record. A new scenario belongs in a new run, counted against the stop rule limit.

## Stop rule

Set the limit before the work starts. The maximum is 3 scenarios per claim. Do not build more than 3 scenarios for one claim.

Stop when you reach the limit. Then hand on the best verdict you found, or stop if no scenario ran clean. See skills/handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 3, mark the unfinished scenario as unfinished. Reduce the scope to what you did run. Do not hand on a verdict from an unfinished scenario.

## When this skill does not apply

Do not use this skill when there is no claim to test. A scenario with no claim shows nothing. State the claim first, or use a different skill.

Do not use this skill when the scenario assumes the claim is true. A scenario that assumes the claim cannot test it. Build a scenario that could show it wrong.

Do not use this skill when the scenario rules are vague. Vague rules let any step follow, and the result proves nothing. Name the rules first.

Do not use this skill when the verdict needs a real observation, not an imagined one. A scenario suggests what to check. It does not replace the check. Name the real check that would settle it.

Do not use this skill to re-run a scenario that already killed the claim. Re-run it only if the claim or its scope changed. A killed claim stays killed until a new claim is stated.

## Worked example: the shop that opens an hour earlier

Claim: opening the shop an hour earlier will sell more white bread. Scope: this shop, Saturdays, white bread only.

Scenario: the shop opens at 7:00 instead of 8:00 on a Saturday. The shop stocks 40 loaves of white bread. The same Saturday buyers come, at the earlier time. The stock stays at 40 loaves. No new buyers come.

Steps:

Step 1: the shop opens at 7:00, one hour earlier than usual.

Step 2: the same Saturday buyers arrive earlier, and buy the same loaves.

Step 3: the 40 loaves sell out by 9:00, instead of by 9:50.

Step 4: no loaves remain to sell after 9:00, so total sales stay at 40 loaves.

Result: earlier opening moves the sales earlier, but total sales stay at 40 loaves. The total is set by the stock, not by the opening time.

Verdict: kills the claim as stated. Reason: total sales stay at 40 loaves, set by stock, not by opening time.

What it leaves open: a larger stock could raise total sales. New buyers could also raise total sales. The scenario held stock and buyers fixed.

Handoff record:

- Claim: opening the shop an hour earlier will sell more white bread. Scope is this shop, Saturdays, white bread only.
- Scenario: the shop opens at 7:00 on a Saturday, stocks 40 loaves, and the same buyers come earlier.
- Steps: Step 1 opens at 7:00. Step 2 moves the same buyers earlier.
- Steps, continued: Step 3 sells out by 9:00. Step 4 leaves total sales at 40 loaves.
- Result: earlier opening moves sales earlier, but total sales stay at 40 loaves.
- Verdict: kills the claim as stated, because total sales stay at 40 loaves, set by stock.
- What it leaves open: a larger stock, or new buyers, could raise total sales.

## Commands

- "show scenarios" lists each scenario with its setting and its verdict.
- "show record" emits the handoff record from Step 6.
- "save state" emits the scenarios and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
