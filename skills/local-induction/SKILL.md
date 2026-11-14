---
name: induction
description: Infer a general rule from observed cases, name its scope, name what would break it, and reject rules that overreach the cases.
---

# Induction

## What this skill does

This skill infers a general rule from observed cases. You collect cases. You state a candidate rule. You name its scope. You name what would break it. You test the rule against new cases. You keep the rule only if the new cases fit it.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning suggests a rule. It does not prove one.

## Input

This skill receives observed cases. Each case needs a source, a number, or a concrete test. If a case has none of these, drop it from the list. Do not build a rule from dropped cases.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility. Do not judge by reversibility alone. A step can be easy to reverse and still cost time, money, or trust.

- Light check. Use this for a routine step with low impact and easy reversal. Do Steps 1 to 3 only, then state the rule with its scope and stop.
- Full use. Use this for a new plan, a costly move, or a claim that shapes the next step. Use it for any step with high impact or that is hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong rule cost time, money, or trust?
- Would a different rule change what I do next?

If no decision follows, answer directly. If the step is low impact and easy to reverse, use the light check. If the step is high impact or hard to reverse, use the full use.

## How to use the steps

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without cases, a rule is a guess, and a guess is not a rule.

Collect cases before you state a rule. Do not state the rule first and then pick cases that fit it. That order hides the cases that break the rule.

## Step 1: Collect observed cases

List each case in plain words. Each case needs a source, a number, or a concrete test. Record all three where you have them.

- Case: what happened, in plain words.
- Source: where the case came from, named exactly enough to find it again.
- Number: the measured size, rate, or timing.
- Test: the concrete check that produced the case, if any.

Collect at least 3 cases before you state a rule. Fewer than 3 cases cannot support a general rule. If you have fewer than 3 cases, stop and gather more cases first.

## Step 2: State a candidate rule

Write the rule in one sentence, in plain words. The rule must say what happens, and under what conditions it happens. A rule with no condition is too wide. A rule that only repeats one case is too narrow.

- Rule: the general claim, in one sentence.
- Condition: when and where the rule should hold.
- Number: the expected size, rate, or timing, if one exists. If no number exists, say so. Do not invent one.

Write the rule before you check it. Do not change the rule after you see the new cases in Step 5. If the new cases break the rule, mark the rule broken. Then state a new rule, and count it against the stop rule limit.

## Step 3: Name the scope of the rule

Write the scope in plain words. The scope names where the rule applies, and where it does not apply. Name the cases it covers. Name the cases it does not cover.

- Covers: the cases, places, and times the rule applies to.
- Does not cover: the cases, places, and times the rule does not apply to.
- Unknown: the cases you have not seen, where the rule may or may not hold.

If the scope is wider than the cases you collected, narrow it. A rule cannot cover cases you have not seen. State that limit in the record.

## Step 4: Name what would break the rule

Write one breaker for the rule. A breaker is a concrete case that would show the rule is wrong. Name the case, the source that would show it, and the number it would need.

- Breaker: the concrete case that would break the rule.
- Source: where that case would come from, named exactly enough to find it again.
- Number: the size, rate, or timing that would count as a break.

If you cannot name a breaker, the rule cannot be tested. Mark it untestable and drop it. Do not keep an untestable rule.

## Step 5: Check the rule against new cases

Find new cases you did not use in Step 1. Check each new case against the rule. Record whether each case fits the rule or breaks it.

- New case: what happened, in plain words.
- Source: where the case came from, named exactly enough to find it again.
- Number: the measured size, rate, or timing.
- Result: fits the rule, or breaks the rule.

Score the rule as fits out of total new cases checked. Write the score as a count, for example 4 fits out of 5 cases. A rule with no new cases checked has no score. Do not hand on a rule with no score.

One break does not always kill a rule. Check whether the break sits inside the scope from Step 3. If the break sits outside the scope, the rule stands, and the scope stands. If the break sits inside the scope, the rule is broken. Mark it broken and stop, or narrow the scope and test again.

## Step 6: Hand the rule on

Hand on the rule only if it survived Step 5. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Rule: the rule from Step 2, in one sentence.
- Scope: the scope from Step 3, covers and does not cover.
- Breaker: the breaker from Step 4, with its source and number.
- Cases: the cases from Step 1, each with its source and number.
- New cases: the new cases from Step 5, each with its result and score.
- Score: fits out of total new cases checked.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in the next step, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 4 candidate rules per run. The maximum is 12 cases checked per run. Do not state more than 4 rules. Do not check more than 12 cases.

Stop when you reach either limit. Then hand on the best rule you found, or stop if none survived Step 5. Do not keep splitting one rule into smaller rules to get around the limit. Do not spend more time inferring than the decision is worth.

If the budget runs out in the middle of Step 5, mark the unchecked cases as unchecked. Reduce the scope to what you did check. Do not hand on a rule with no score.

## When this skill does not apply

Do not use this skill when you have fewer than 3 cases. A rule built from 1 or 2 cases is a guess, not a rule. Gather more cases first, or use a different skill.

Do not use this skill when all cases come from one source and no second check exists. That is a source question, not an induction. Get a second source first.

Do not use this skill to extend a rule beyond its scope. A rule that held for one shop does not prove the same rule for every shop. Name the new scope and test it as a new rule.

Do not use this skill when a new case inside the scope breaks the rule. Do not keep a broken rule. A broken rule stays broken until a new rule is stated and tested.

## Worked example: the shop that sells out of bread by 10:00

Cases come from the shop sales log for the last four weeks. The shop stocks 40 loaves of white bread each day. On the last 4 Saturdays, all 40 loaves sold by 9:40, 9:50, 9:35, and 9:55. On weekdays, the same 40 loaves lasted until 14:00 or later. Source: the shop sales log, dates and times as listed.

Candidate rule: On Saturdays, this shop sells all 40 loaves of white bread before 10:00.

Scope: the rule covers Saturdays at this shop, white bread only, with 40 loaves in stock. It does not cover weekdays, other bread types, or other shops.

Breaker: a Saturday when loaves of white bread remain unsold after 10:00.

New cases: the next 2 Saturdays sold out at 9:45 and 9:52. Score: 2 fits out of 2 new cases checked.

Rejected overgeneralization: the rule does not claim that all bread sells out, or that every shop sells out.

Handoff record:

- Rule: On Saturdays, this shop sells all 40 loaves of white bread before 10:00.
- Scope: covers Saturdays at this shop, white bread only, with 40 loaves in stock.
- Does not cover: weekdays, other bread types, or other shops.
- Breaker: a Saturday when loaves of white bread remain unsold after 10:00.
- Cases: 4 Saturdays, all 40 loaves sold by 9:40, 9:50, 9:35, and 9:55.
- New cases: 2 Saturdays, sold out at 9:45 and 9:52, both fit the rule.
- Score: 2 fits out of 2 new cases checked.

## Commands

- "show rules" lists each candidate rule with its scope and its score.
- "show record" emits the handoff record from Step 6.
- "save state" emits the candidate rules and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
