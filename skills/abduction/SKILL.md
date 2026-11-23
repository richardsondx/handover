---
name: abduction
description: Take a ranked anomaly and invent testable explanations for it, rank them by fit times testability times simplicity, and hand the best ones on with predictions and a killer test each.
---

# Abduction

## What this skill does

This skill takes a ranked anomaly and invents explanations for it. You restate what surprised you. You generate several distinct explanations. You name what each explanation rests on. You derive what each explanation predicts. You rank them. You hand the best ones on, each with its predictions and its killer test named.

An explanation is a claim about why the observation happened, plus at least one prediction that follows if the claim is true. A claim with no prediction is not an explanation. It is a story. Stories are marked as stories and dropped from the ranked list.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning invents an explanation. It does not prove one.

## Input

This skill receives the anomaly handoff record from the step before it: the model, the prediction the observation broke, the observation, the source, and the size of the gap. If any of those five fields is missing, stop and ask for the missing field. Do not invent it.

## Guard: light check or full generation

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 and 2 only, then pick the single best explanation that already carries a prediction and hand it on, or stop if none carries one.
- Full generation. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could the wrong explanation cost time, money, or trust?
- Would a different explanation change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a restated anomaly, explanations drift toward the model you already hold, and the observation gets forgotten.

Judge fit against the observation, not against the model. An explanation that saves the model but ignores what was actually observed is a bad explanation, however neat it sounds.

### Step 1: Restate the anomaly and what would make it unsurprising

Write the anomaly in plain words, in two or three sentences: what the model predicted, what was observed, and the size of the gap. Then write one sentence that names what would make the observation unsurprising. That sentence is the target. Every explanation in Step 2 must answer it.

- Model: what was believed, in one or two sentences.
- Prediction: the prediction the observation broke, with its condition and number.
- Observation: what was actually observed, in plain words.
- Size of gap: the difference between prediction and observation, as a number where one exists, or as a plain-word size where no number exists. Do not invent a number.
- What would make it unsurprising: one sentence naming the kind of fact that would turn the surprise into something expected.

If you cannot write the unsurprising sentence, you do not yet understand the anomaly. Go back to the handoff record before you generate explanations.

### Step 2: Generate at least 3 distinct explanations from different families

Generate at least 3 explanations, and make them distinct. Distinct means they point at different causes, not the same cause in different words. Draw them from different families, so you do not generate three versions of one idea.

The five families:

- Missing part. Something the model left out is present and does the work. Ask: what part, if added, would produce the observation?
- Wrong link. Two things the model joins are not joined that way, or the link runs the other way. Ask: what if the connection I assumed is wrong, or reversed?
- Wrong boundary. The model draws the line in the wrong place, so something outside it belongs inside, or something inside it belongs outside. Ask: what if the system is bigger or smaller than I drew it?
- Hidden input. Something outside the model feeds into it and changes the result. Ask: what input, if it varied, would move the observation in the direction seen?
- Changed rule. A rule the model treats as fixed has changed, or never held in this case. Ask: what rule, if it were different here, would produce the observation?

Write each explanation in one or two sentences, in plain words. Name the family for each one. Do not rank yet. Do not argue for a favourite yet. Generating and ranking at the same time makes you keep the explanations you already like and drop the rest.

### Step 3: For each explanation, list its load-bearing claims and the source that would settle each

For each explanation, list the claims it rests on. Mark each claim as load-bearing or not load-bearing. A claim is load-bearing if the explanation fails when the claim is false.

For each load-bearing claim, name the source that would settle it: the exact record, log, list, instrument, or person that could prove it or break it. If you cannot name a source, mark the claim untestable. An explanation whose load-bearing claims are all untestable is a story, not an explanation. Mark it as such and drop it from the ranked list in Step 5.

At least one load-bearing claim per explanation must name a source that would settle it. An explanation with no settleable claim cannot be tested, and a test is what the next step needs.

- Claim: one sentence, in plain words.
- Load-bearing: yes or no.
- Source that would settle it: named exactly enough to find it again, or marked untestable.

Do not invent a source. A source you cannot name is untestable, not settled.

### Step 4: For each explanation, derive at least 1 prediction that follows if it is true

For each explanation, derive at least 1 prediction that follows if the explanation is true. A prediction names something you would expect to observe, under what conditions, and by how much where a number exists. The prediction must be new: it must say something beyond the observation that started the hunt. An explanation that only repeats the anomaly predicts nothing. The condition must name a concrete case: a specific input, a specific place, a specific time, or a specific record. A prediction whose condition names no concrete case is vague. A vague prediction does not count as a prediction.

- Prediction: what you expect to observe if the explanation is true.
- Condition: when and where it should hold. The condition must name a concrete case, as defined above.
- Number: the expected size, rate, or timing, if one exists. If no number exists, say so. Do not invent one.
- Concrete case: a specific input, a specific place, a specific time, or a specific record. If an explanation holds only vague predictions, mark it as a story and drop it from the ranked list.

Rule: an explanation with no prediction is marked story, not explanation, and drops from the ranked list. Do not keep it as a low-ranked entry. Do not keep it "for interest". Drop it, and record that it was dropped as a story, with the reason in one line.

A prediction that only the favourite explanation makes is worth more than a prediction every explanation makes. Note which predictions separate the explanations from each other. The next step tests those first.

### Step 5: Rank explanations by fit times testability times simplicity

For each surviving explanation, score three things on a scale of 1 to 5.

- Fit: how well the explanation matches the observation. 1 means it explains only part of the gap, or needs extra help. 5 means it explains the whole gap, in the direction observed. Judge fit against the observation, not against the model. An explanation that protects the model but fits the observation poorly scores low.
- Testability: how easily you can test the explanation. 1 means no test exists, or the only test is slow and costly. 5 means a cheap, direct test exists. Use the predictions from Step 4 and the sources from Step 3 to judge this. An explanation with a sharp prediction and a named source scores high.
- Simplicity: how few new parts, links, or rules the explanation adds. 1 means it adds many new pieces, or a piece that is itself unexplained. 5 means it adds one small piece, or reuses pieces already in the model.

Score each explanation as fit times testability times simplicity. The highest product ranks first. If two explanations have the same product, break the tie by the higher fit. If fit is also the same, break it by the higher testability. If testability is also the same, break it by the higher simplicity. If all three scores are the same, the explanation generated first in Step 2 ranks first. Record each tie and the rule that broke it. A low score on any one factor pulls the explanation down, even if the other two scores are high. That is the point. A neat explanation you cannot test is not the best one to hand on. A testable explanation that fits poorly is not either.

Record the three scores and the product for each explanation. Do not rank by feeling. Show the numbers.

### Step 6: Hand the top explanations on

Hand on the top-ranked explanations, up to 3. The handoff record must hold all seven fields below for each explanation handed on. A handoff missing any field is not complete.

- Explanation: the explanation in one or two sentences, with its family named.
- Load-bearing claims: each claim, marked load-bearing, with the source that would settle it.
- Predictions: each prediction from Step 4, with its condition and number where one exists.
- Scores: fit, testability, simplicity, and the product.
- Killer test: the single test that would most sharply prove or break this explanation. Name the test, what it would observe, and which result would kill the explanation. One killer test per explanation.
- Rank: its place in the ranked list.
- Stories dropped: each explanation dropped as a story, with the reason in one line.

The next step receives this record and nothing else as its starting point. Do not add a verdict about which explanation is true. A verdict belongs in the next step, after the tests run, not in this one.

## Stop rule

Set the limit before generation starts. The maximum is 6 explanations generated per anomaly. Generate means: write it down, list its claims, and derive its predictions. Do not generate more than 6.

Stop when you reach the limit. Then rank what you generated, or stop if none survived Steps 3 and 4. See skills/handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 4, mark the explanations without predictions as stories. Reduce the scope to what you did finish. Do not hand on an explanation with no prediction.

## When this skill does not apply

Do not use this skill when there is no anomaly to explain. If no prediction was broken, there is nothing to explain, and any explanation you invent is a guess about a fact, not an answer to a surprise.

Do not use this skill to explain a single observation with no model behind it. One observation with no prediction is a fact to record, not an anomaly to explain.

Do not use this skill when the anomaly record is missing its model, prediction, observation, source, or size of gap. Get the missing field first. An explanation built on a guessed anomaly explains the guess, not the world.

Do not use this skill to pick a favourite explanation and defend it. If you already know which explanation you want, you are not generating explanations, you are arguing. Generate at least 3 distinct explanations first, then rank by the numbers.

Do not use this skill when no test could ever separate the explanations. If every explanation predicts the same thing, the ranking is a guess. Say so, and hand the problem back with the shared prediction named, instead of a ranked list that pretends to know more than it does.

## Worked example: the bus that runs late only on Fridays

Anomaly, from the handoff record: the model says the number 12 bus runs on its posted timetable every weekday, Main Street to the station in 20 minutes in the morning rush. The prediction is that the bus arrives at the station at 8:20, Monday to Friday, within 5 minutes either way. The observation, from the transit log for the last four weeks, is that Monday to Thursday arrivals are 8:18 to 8:23, while Friday arrivals are 8:34, 8:41, 8:38, and 8:45. The size of the gap is 14 to 25 minutes late on Fridays, against a predicted maximum of 5 minutes late.

What would make it unsurprising: if something on Fridays adds 15 to 25 minutes to the trip, or moves the departure later by that much.

Explanations, from different families:

1. Missing part, the Friday market. A market sets up on Main Street every Friday morning, and its stalls narrow the road, so the bus moves slowly past it. Load-bearing claim: stalls narrow Main Street on Friday mornings. Source that would settle it: the market permit and stall map from the city, plus a photo of Main Street on a Friday morning. Prediction: on Fridays the bus is slow only on the Main Street stretch, and on time once it leaves Main Street; on a Friday with no market, the bus arrives on time.
2. Hidden input, Friday school traffic. A school near the station runs a Friday-only early drop-off, so extra cars crowd the station approach on Fridays. Load-bearing claim: the school runs a Friday-only early drop-off. Source that would settle it: the school calendar and drop-off schedule. Prediction: the delay appears only near the station, not on Main Street, and it vanishes on a Friday when school is out.
3. Wrong link, the timetable link. The Friday timetable the riders read is not the timetable the drivers follow: the Friday run is scheduled 20 minutes later, and the posted time is wrong. Load-bearing claim: the driver schedule for Friday differs from the posted timetable. Source that would settle it: the driver roster and the posted timetable side by side. Prediction: the bus leaves Main Street 20 minutes late on Fridays but takes the usual 20 minutes to reach the station.
4. Changed rule, Friday road works. The city runs road works on Main Street on Friday mornings, closing one lane. Load-bearing claim: road works close one lane on Main Street on Friday mornings. Source that would settle it: the city road-works schedule for Main Street. Prediction: the bus is slow on Main Street on Fridays, and the delay ends when the road works end.

Story dropped: "Friday is just a slow day." It names no part, link, boundary, input, or rule, and it predicts nothing new. Marked story, dropped from the ranked list.

Scores, fit times testability times simplicity:

- Market: fit 4, testability 5, simplicity 4, product 80. Fit 4 because it explains the size of the delay but needs the stalls to narrow the road enough. Testability 5 because the market permit and a Friday photo settle it directly. Simplicity 4 because it adds one known Friday event.
- School traffic: fit 3, testability 4, simplicity 4, product 48. Fit 3 because the delay would sit near the station, and the log does not say where the delay sits. Testability 4 because the school calendar settles the schedule, but not the traffic itself. Simplicity 4 because it adds one known Friday event.
- Wrong timetable: fit 4, testability 5, simplicity 5, product 100. Fit 4 because a 20-minute-late departure fits the 14 to 25 minute gap. Testability 5 because the driver roster against the posted timetable settles it in one look. Simplicity 5 because it changes no road and no traffic, only a wrong link between two timetables.
- Road works: fit 4, testability 4, simplicity 3, product 48. Fit 4 because a closed lane fits the delay. Testability 4 because the road-works schedule settles it, but the schedule may change week to week. Simplicity 3 because it adds a weekly works pattern that needs its own reason.

Ranked handoff:

- Rank 1, wrong timetable. Predictions: the bus leaves Main Street about 20 minutes late on Fridays and takes the usual 20 minutes to the station. Killer test: compare the driver roster with the posted timetable for next Friday. If they match, this explanation dies.
- Rank 2, Friday market. Predictions: the bus is slow only on the Main Street stretch on Fridays, and on time on a Friday with no market. Killer test: time the bus along Main Street on the next Friday, and check the market permit. If the bus is on time through Main Street, this explanation dies.
- Rank 3, Friday road works. Predictions: the bus is slow on Main Street on Fridays, and the delay ends when the road works end. Killer test: read the city road-works schedule for Main Street, and time the bus past the works on the next Friday. If no works are scheduled, this explanation dies.

School traffic scores the same product as road works, 48, so the tie-break decides it. Road works has fit 4 and school traffic has fit 3, so road works ranks third and school traffic ranks fourth. Only the top 3 are handed on, so school traffic is not handed on.

## Commands

- "show explanations" lists each explanation with its family, its three scores, and its product.
- "show stories" lists each explanation dropped as a story, with the reason in one line.
- "show record" emits the handoff record from Step 6.
- "save state" emits the ranked list and the handoff record together.
- "resume from:" restores a saved ranked list and continues the generation.
