---
name: local-falsification
description: Try to kill each ranked explanation with a test named before the result is known, keep only the survivors, and say what would change the verdict.
---

# Falsification

## What this skill does

This skill takes ranked explanations, each with predictions and a named killer test, and tries to kill each one. You restate each explanation and its prediction. You build two worlds for each one. You name the cheapest test that separates them, before the result is known. You run the test or name the source that settles it. You mark each explanation killed, surviving, or untested. You keep only the survivors, ranked by how hard the test was to survive. You write what would change the verdict, in one sentence per survivor.

A hypothesis is never kept because it fits the old data. It is kept only if it survives a test that could have killed it. Fitting old data is not survival. A test that could not have killed the explanation is not a falsification attempt.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning invents a test. It does not run one.

## Input

This skill receives the ranked explanations from the step before it: each explanation, its predictions with conditions and numbers where they exist, and its killer test. If an explanation arrives with no prediction, stop and send it back. An explanation with no prediction cannot be tested, and this skill cannot test it.

## Guard: light check or full falsification

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, for the top-ranked explanation only, then mark it killed, surviving, or untested and stop. Do not rank survivors.
- Full falsification. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps, for every ranked explanation handed in.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could keeping a wrong explanation cost time, money, or trust?
- Would killing the top explanation change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a restated prediction, a test can be bent to fit any result after the fact.

Name the test before the result is known. Write the test, the observation it would produce, and which result would kill the explanation, before you look at any result. A test named after the result is known does not count, and the explanation stays untested. This rule has no exception.

### Step 1: Restate each explanation and its prediction

For each ranked explanation, write it in one or two sentences, in plain words. Then write its prediction: what you expect to observe if the explanation is true, under what conditions, and by how much where a number exists. Copy the prediction from the handoff record. Do not rewrite it to make it easier to pass.

- Explanation: the claim, in one or two sentences.
- Prediction: what follows if the explanation is true.
- Condition: when and where the prediction should hold.
- Number: the expected size, rate, or timing, if one exists. If no number exists, say so. Do not invent one.

If an explanation has no prediction, mark it untested now and do not test it. It stays untested until a prediction is written for it.

### Step 2: For each explanation, build two worlds and name one observation that separates them

For each explanation, build two worlds.

- World A, the explanation is true. Write what the world looks like: what happens, where, and when.
- World B, the explanation is false. Write what the world looks like instead. World B must be a real alternative, not just the words "the explanation is false". Name what else would produce the observation, or what the world looks like with the explanation removed.

Then name one observation that separates the two worlds: one thing you would see in World A and not in World B, or see in World B and not in World A. The observation must be concrete enough that a named source, instrument, log, or person could settle it. If you cannot name such an observation, the explanation cannot be tested this way. Mark it untested and say why, in one line.

- World A: what holds if the explanation is true.
- World B: what holds if it is false, stated as a real alternative.
- Separating observation: the one observation that differs between the two worlds.

Do not build a World B that is identical to World A except for the label. If the two worlds predict the same observation, the test cannot separate them, and no test built on that observation counts.

### Step 3: Name the cheapest test that would produce that observation, and name it before the result is known

For each explanation, name the cheapest test that would produce the separating observation from Step 2. Cheapest means the least time, money, and effort that still settles the observation. A cheap test that settles the observation beats a thorough test that does not.

Write the test down before you run it and before you look at any result. The written test must hold four parts.

- Test: the concrete check, named exactly enough to repeat it.
- Source that settles it: the exact record, log, list, instrument, or person that would prove or break the observation.
- Observation expected in World A: what you would see if the explanation is true.
- Result that kills: what you would see if the explanation is false, stated before the result is known.

If you already know the result when you write the test, the test does not count. Say so, mark the explanation untested, and find a different test whose result you do not yet know, or leave the explanation untested.

### Step 4: Run the test or name the source that settles it

Run each test from Step 3, in ranked order, or name the source that settles the separating observation. Record what you did, what you found, and where it came from.

- Test run: what you actually did, in one line.
- Observation recorded: what you actually observed, with its number where one exists.
- Source: where the observation came from, named exactly enough to find it again.

Do not run a test and then change the kill condition to fit what you found. The kill condition was written in Step 3, before the result. Apply it as written. If the observation is unclear or the source is missing, mark the explanation untested, not surviving. An unclear result is not survival.

### Step 5: Mark each explanation killed, surviving, or untested, with the observation recorded

Mark each explanation with exactly one verdict.

- Killed: the test ran, the observation matched the kill condition written in Step 3, and the source is named. The explanation is out. Do not keep it as a low-ranked entry. Do not keep it "for interest". Record the observation that killed it.
- Surviving: the test ran, the observation matched World A and not the kill condition, and the source is named. The explanation stays, for now. Survival is not proof. It means the explanation lived through one test that could have killed it.
- Untested: no test ran, or the test was named after the result was known, or the result was unclear, or the explanation had no prediction. A hypothesis that fits old data but faced no killer test is marked untested, never surviving. Record the reason in one line.

Record the observation for every verdict. A verdict with no recorded observation is not a verdict. Mark it untested.

### Step 6: Keep only survivors, ranked by how hard the test was to survive

Keep only the survivors from Step 5. Drop the killed explanations and the untested ones from the kept list. Keep the untested ones in the record, marked untested, with the reason. Do not promote an untested explanation because the ranked list looks thin.

Rank the survivors by how hard the test was to survive, hardest first. Judge hardness by three things, in this order.

1. How sharply the test separated World A from World B. A test that only one world could pass is harder than a test both worlds could nearly pass.
2. How costly or unlikely the passing result was. A test the explanation passed despite a result that would have been easy to fail is harder than a test it could hardly fail.
3. How direct the source was. A direct record, log, or measurement beats a second-hand report.

Write the ranked survivor list down, with the test and the observation for each survivor. If no explanation survives, say so plainly. An empty survivor list is a result, not a failure of the skill. Hand it on as empty, with the killed and untested records attached.

### Step 7: Write what would change the verdict, in one sentence per survivor

For each survivor, write one sentence that names what would change the verdict. The sentence must name a concrete observation, not a feeling. It must say what you would see, and where, that would kill the explanation or demote it below another survivor.

- What would change the verdict: one sentence per survivor, naming the observation and its source.

If you cannot write such a sentence, the survivor has no falsifier. Mark it untested and say why. A survivor with no named falsifier is a kept story, not a tested explanation.

## Handoff

Hand the verdicts on only if the tests ran under Steps 1 to 7. The handoff record holds these fields, matching the router contract.

- Explanation and prediction: each ranked explanation, with its prediction.
- World A and World B: the two worlds from Step 2 for each explanation.
- Separating observation: the one observation that separates the worlds.
- Test named before the result is known: the test from Step 3, with its kill condition.
- Test run, observation recorded, source: the run from Step 4, with what was observed and where it came from.
- Verdict: killed, surviving, or untested, for each explanation.
- Ranked survivors: the survivors from Step 6, hardest test first.
- What would change the verdict: one sentence per survivor, from Step 7.

A handoff missing any field is not complete.

## Stop rule

Set the limit before the tests start. The maximum is 3 tests per explanation. Count tests run, not tests named. Do not run more than 3 tests on one explanation.

Stop when you reach the limit for an explanation. Then mark it by the best test you ran, or mark it untested if none of the tests settled the separating observation. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 4, mark the untested explanations as untested. Reduce the scope to what you did test. Do not hand on an untested explanation as a survivor.

## When this skill does not apply

Do not use this skill when there is no ranked explanation to test. If no explanation carries a prediction, there is nothing to falsify. Generate explanations first, or use a different skill.

Do not use this skill to confirm a favourite explanation. If you already know which explanation you want to keep, you are not testing, you are arguing. Test every ranked explanation in order, including the favourite, with the same kill condition rule.

Do not use this skill when the two worlds in Step 2 predict the same observation. If no observation separates them, no test can falsify the explanation. Say so, mark the explanation untested, and hand the problem back with the shared prediction named.

Do not use this skill to re-test an explanation that was already killed, unless new evidence arrives that changes the separating observation. A killed explanation stays killed until a new test is named, before its result is known, that could revive it.

Do not use this skill when the only available test is to re-read the old data the explanation was built from. Fitting old data is not a test. A test must risk a new observation, or a source the explanation has not yet been checked against.

## Worked example: the bus that runs late only on Fridays

Ranked explanations, from the step before: the number 12 bus runs late only on Fridays, Monday to Thursday arrivals 8:18 to 8:23, Friday arrivals 8:34, 8:41, 8:38, and 8:45, from the transit log for the last four weeks. The ranked list is: 1, the Friday timetable riders read is not the timetable drivers follow; 2, a Friday market narrows Main Street; 3, Friday road works close one lane on Main Street; 4, Friday school traffic crowds the station approach. Road works ranks third because it ties school traffic on product at 48 and wins the tie-break on fit, 4 against 3. All four tests below were named before any result was looked at.

Explanation 1, wrong timetable, rank 1. Prediction: the bus leaves Main Street about 20 minutes late on Fridays and takes the usual 20 minutes to the station. World A: the driver roster sets the Friday departure at 8:20, the posted timetable says 8:00, and the bus leaves at 8:20 and arrives at 8:40. World B: the roster and the posted timetable agree at 8:00, and the bus leaves on time but is delayed on the road. Separating observation: the Friday departure time at Main Street, and the roster time against the posted time. Cheapest test: compare the driver roster with the posted timetable for next Friday, and note the departure time at Main Street. Kill condition, named before the result: if the roster and the posted timetable match, and the bus leaves on time, this explanation dies. Test run: roster and posted timetable compared, departure noted at Main Street. Observation recorded: the roster sets Friday departure at 8:20, the posted timetable says 8:00, and the bus left at 8:21 and arrived at 8:41. Source: the driver roster, the posted timetable, and the transit log for that Friday. Verdict: surviving. What would change the verdict: if the roster and the posted timetable agreed on a Friday and the bus still arrived 20 minutes late, this explanation would die.

Explanation 2, Friday market, rank 2. Prediction: the bus is slow only on the Main Street stretch on Fridays, and on time on a Friday with no market. World A: stalls narrow Main Street on Friday mornings, and the bus crawls past them. World B: Main Street is clear on Friday mornings, and the delay sits elsewhere. Separating observation: the bus speed on the Main Street stretch on Friday. Cheapest test: time the bus along Main Street on the next Friday, and check the market permit. Kill condition, named before the result: if the bus is on time through Main Street, this explanation dies. Test run: bus timed along Main Street, permit checked. Observation recorded: the bus passed Main Street on schedule, and the delay was already present at departure, before Main Street. Source: the timed run and the market permit. Verdict: killed. What would change the verdict: this explanation is killed; a new test would need a Friday where the bus is slow on Main Street itself.

Explanation 3, road works, rank 3. Prediction: the bus is slow on Main Street on Fridays, and the delay ends when the road works end. World A: road works close one lane on Main Street on Friday mornings. World B: no works are scheduled on Main Street on Fridays, and the road is open. Separating observation: the city road-works schedule for Main Street on Fridays. Cheapest test: read the city road-works schedule for Main Street. Kill condition, named before the result: if no works are scheduled on Main Street on Fridays, this explanation dies. Test run: schedule read. Observation recorded: no road works are scheduled on Main Street on any Friday in the last four weeks. Source: the city road-works schedule. Verdict: killed. What would change the verdict: this explanation is killed; a new test would need a Friday with scheduled works on Main Street.

Explanation 4, school traffic, rank 4. Prediction: the delay appears only near the station, and vanishes on a Friday when school is out. World A: extra cars crowd the station approach on Friday mornings. World B: the station approach is clear, and the bus is already late before it reaches the station. Separating observation: the bus time on the station approach on Friday. Cheapest test: time the bus near the station on the next Friday, and check the school calendar. Kill condition, named before the result: if the station approach is clear while the bus is still late, this explanation dies. Test run: bus timed near the station, calendar checked. Observation recorded: the station approach was clear, and the bus reached it at 8:38, already 18 minutes late. Source: the timed run and the school calendar. Verdict: killed. What would change the verdict: this explanation is killed; a new test would need a Friday where the delay appears only at the station approach.

Kept survivors, ranked by how hard the test was to survive: 1, wrong timetable, surviving, because the roster and the departure time both matched World A and the test could have killed it in one look. No other explanation survives. The untested list is empty: every explanation faced a test named before its result.

## Commands

- "show verdicts" lists each explanation with its verdict and its recorded observation.
- "show survivors" lists only the survivors, ranked by how hard the test was to survive.
- "show record" emits the verdict record from Step 5 with the one-sentence falsifier per survivor from Step 7.
- "save state" emits the ranked survivor list and the verdict record together.
- "resume from:" restores a saved verdict record and continues the testing.
