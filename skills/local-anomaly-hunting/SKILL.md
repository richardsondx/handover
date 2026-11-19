---
name: local-anomaly-hunting
description: Find where reality disagrees with your current model, rank the mismatches by surprise times importance times checkability, and hand the best one on with a full record.
---

# Anomaly Hunting

## What this skill does

This skill finds where reality disagrees with your current model. You state what you expect. You gather what you observed. You score each mismatch. You throw out the noise. You hand the best mismatch to the next step, with a record that lets someone else check it.

An anomaly is a mismatch between a stated prediction and an observed result, backed by a source, a number, or a concrete test. A surprise you cannot check is not an anomaly yet. It is a question.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning finds a mismatch. It does not prove one.

## Input

This skill receives the stated model and its predictions, plus the observations to test against them, each with its source. If no model is stated, stop and state one first. If no observation carries a source, drop it from the list. Do not hunt for an anomaly with no model and no sourced observation.

## Guard: light check or full hunt

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 and 2 only, then score the mismatches in one pass and hand on the best one, or stop if none survives.
- Full hunt. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could the current model be wrong in a way that costs time, money, or trust?
- Would a mismatch change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a stated model, every observation looks like an anomaly, and none of them is.

Rank by surprise times importance times checkability, not by ease. An easy mismatch that changes nothing is not the best anomaly. A hard mismatch that would change the plan, and that you can test, beats it. This matters most when the current model already works well. When the model is right most of the time, the easy mismatches are usually noise, and the valuable ones are the rare, important, testable ones.

### Step 1: State the current model and its predictions

Write the model in plain words, in one or two sentences. Then list its predictions. Each prediction must name what you expect to observe, under what conditions, and by how much where a number exists.

- Model: what you believe is true, in one or two sentences.
- Prediction: what you expect to observe if the model is right.
- Condition: when and where the prediction should hold.
- Number: the expected size, rate, or timing, if one exists. If no number exists, say so. Do not invent one.

If you cannot state a prediction, you cannot hunt for an anomaly. Go back and state the model first.

### Step 2: Collect observations

Gather what was actually observed. Each observation needs a source, a number, or a concrete test. Record all three where you have them.

- Observation: what happened, in plain words.
- Source: where the observation came from, named exactly enough to find it again.
- Number: the measured size, rate, or timing.
- Test: the concrete check that produced the observation, if any.

Collect observations before you score them. Do not score as you collect. Scoring early makes you keep the observations that fit your guess and drop the rest.

Keep observations that agree with the model too. A list with only mismatches is a cherry-picked list, and it will mislead the ranking in Step 5.

### Step 3: Score each mismatch for surprise, importance, and checkability

For each pursued mismatch, score three things on a scale of 1 to 5. If candidates exceed the cap, use the selection rule in the stop rule first to pick the 3 to pursue.

- Surprise: how far the observation sits from the prediction. 1 means close to expected. 5 means far from expected, or in the opposite direction.
- Importance: how much the mismatch would change the next decision if it is real. 1 means nothing changes. 5 means the plan changes.
- Checkability: how easily you can test whether the mismatch is real. 1 means no test exists. 5 means a cheap, direct test exists.

Score each mismatch as surprise times importance times checkability. The highest product ranks first. A mismatch with a low score on any one factor falls in the ranking, even if the other two scores are high. That is the point. A surprising mismatch you cannot test is not the best anomaly to hand on. A testable mismatch that changes nothing is not either.

Record the three scores and the product for each mismatch. Do not rank by feeling. Show the numbers.

A mismatch with checkability 1 cannot be handed on as the top anomaly. It stays a question, with its scores recorded, until a test exists.

### Step 4: Separate noise from signal

Before you rank, test each mismatch against four named traps. A mismatch that falls into a trap is noise until a new check clears it. Name the trap in the record. Do not drop a mismatch silently.

- Measurement error. The instrument, the log, the clock, or the count was wrong. Ask: would a second, independent measurement give the same result? If the only evidence is one reading from one source, treat it as noise until a second reading confirms it.
- Selection bias. The observations you collected are not the full set. Ask: did I collect only the cases that stood out, or only the cases that were easy to reach? If the sample is skewed, the mismatch may describe your sample, not the world.
- Stale model. The model was right once, and the world changed. Ask: did the conditions change since the model was built? A mismatch that follows a known change in conditions is a signal that the model needs updating, not proof of a new hidden cause. Record the change.
- Cherry-picked outlier. One extreme case stands out, and the rest fit the model. Ask: does the mismatch survive when you look at the full set, or does it vanish? One case alone, with no pattern around it, is noise until a second case joins it.

If a mismatch survives all four traps, it is signal. If it fails one trap, mark it as noise, name the trap, and keep it in the record. Do not delete it. A later observation may revive it.

### Step 5: Rank anomalies

Order the surviving mismatches by their score from Step 3, highest product first. Break ties by importance first, then by checkability. Write the ranked list down, with the three scores and the product for each entry.

Do not pursue every mismatch. The stop rule in the next section sets the limit. Rank first, then pursue in rank order.

### Step 6: Hand the top anomaly on

Hand on the top-ranked anomaly only. The handoff record must hold all seven fields below. A handoff missing any field is not complete.

- Model: the model from Step 1, in one or two sentences.
- Prediction: the prediction the observation broke, with its condition and number.
- Observation: what was actually observed, in plain words.
- Source: where the observation came from, named exactly enough to find it again.
- Size of gap: the difference between prediction and observation, as a number where one exists, or as a plain-word size where no number exists. Do not invent a number.
- Scores: surprise, importance, checkability, and the product.
- Traps checked: each of the four traps from Step 4, with a one-line result for each.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in the next step, not in this one.

## Stop rule

Set the limit before the hunt starts. The maximum is 3 anomalies pursued per hunt. Pursue means: score it, test it against the traps, and hand it on or mark it as noise. Do not pursue more than 3.

Selection rule. When candidates exceed the cap, pick the 3 to pursue before you score. Estimate surprise for each candidate, on the 1 to 5 scale from Step 3. Rank the candidates by that estimate, highest first. Pursue the top 3 in that order through full scoring and trap checks. Record the estimate and the choice for each candidate, pursued or not.

Stop when you reach the limit. Then hand on the best anomaly you found, or stop if none survived Step 4. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 3, mark the unscored mismatches as unscored. Reduce the scope to what you did score. Do not hand on an unscored anomaly.

## When this skill does not apply

Do not use this skill when there is no stated model to test. If you have no prediction, you have no mismatch, and any surprise you find is a guess, not an anomaly. State the model first, or use a different skill.

Do not use this skill to explain a single observation with no comparison. One observation with no prediction is a fact to record, not an anomaly to hunt.

Do not use this skill when the observations are all from one source and no second check exists. That is a measurement question, not an anomaly hunt. Get a second source first.

Do not use this skill to re-check a mismatch that already failed a trap and has no new evidence. A failed mismatch stays failed until a new observation arrives.

## Worked example: the bus that runs late only on Fridays

Model: the number 12 bus runs on its posted timetable every weekday. The trip from Main Street to the station takes 20 minutes in the morning rush.

Predictions: the bus leaves Main Street at 8:00 and arrives at the station at 8:20, Monday to Friday. The arrival time varies by no more than 5 minutes either way.

Observations, from the transit log for the last four weeks: Monday to Thursday arrivals are 8:18 to 8:23. Friday arrivals are 8:34, 8:41, 8:38, and 8:45. Source: the transit log, dates and times as listed.

Mismatch: Friday arrivals break the prediction. The gap is 14 to 25 minutes late, against a predicted range of 5 minutes late at most. Monday to Thursday arrivals fit the prediction, so the mismatch is tied to Friday, not to the route as a whole.

Scores: surprise 4, because 14 to 25 minutes late is far outside the 5-minute range. Importance 4, because a 20-minute delay changes whether a rider catches the 8:30 train. Checkability 5, because the transit log gives a direct test: check next Friday, and check whether the Friday market on Main Street blocks the road. Product: 4 times 4 times 5 equals 80.

Traps checked: measurement error, cleared, because four separate Fridays show the same pattern, not one reading. Selection bias, cleared, because the log covers all weekdays, not only Fridays. Stale model, checked, because the timetable has not changed in the last four weeks. Cherry-picked outlier, cleared, because all four Fridays are late, not one.

Ranked anomaly: the Friday lateness ranks first, with a product of 80. No other mismatch survived, because Monday to Thursday fit the model.

Handoff record:

- Model: the number 12 bus runs on its posted timetable every weekday, Main Street to the station in 20 minutes in the morning rush.
- Prediction: the bus arrives at the station at 8:20, Monday to Friday, within 5 minutes either way.
- Observation: Friday arrivals were 8:34, 8:41, 8:38, and 8:45 over the last four weeks, while Monday to Thursday arrivals were 8:18 to 8:23.
- Source: the transit log for the last four weeks.
- Size of gap: 14 to 25 minutes late on Fridays, against a predicted maximum of 5 minutes late.
- Scores: surprise 4, importance 4, checkability 5, product 80.
- Traps checked: measurement error cleared, four Fridays agree; selection bias cleared, all weekdays in the log; stale model checked, timetable unchanged in four weeks; cherry-picked outlier cleared, all four Fridays late.

## Commands

- "show mismatches" lists each mismatch with its three scores and its product.
- "show record" emits the handoff record from Step 6.
- "save state" emits the ranked list and the handoff record together.
- "resume from:" restores a saved ranked list and continues the hunt.
