---
name: local-serendipity
description: Notice an unexpected observation, judge whether it is worth following, follow it with a small test, keep what the test confirms, and reject coincidences.
---

# Serendipity and the Prepared Mind

## What this skill does

This skill turns an unexpected observation into a tested finding. You notice something you did not expect. You judge whether it is worth following. You follow it with a small test. You keep what the test confirms. You reject what the test does not confirm.

A claim passes only on a source, a number, or a concrete test. Reasoning alone is not a check. Reasoning judges the observation. It does not prove the observation means anything.

## Input

This skill receives an unexpected observation, stated in one or two sentences. It also receives the work you were doing when you noticed it, in one sentence. If the observation is not unexpected, stop and say so. Do not dress up an expected result as a surprise.

## Guard: light check or full use

Pick one before you start. Judge by impact plus reversibility, never by reversibility alone. Full framework: skills/local-handover/router/router-rules.md.

- Light check. Routine step, low impact, easy reversal. Do Steps 1 to 3 only, then state the judgement and stop.
- Full use. New plan, costly move, claim that shapes the next step, or high impact or hard to reverse. Run all steps.

Ask these three questions to pick.

- Is there a decision to make, with an action that follows it?
- Could a wrong follow up cost time, money, or trust?
- Would a different reading change what I do next?

If no decision follows, answer directly.

## Steps in order

Work the steps in order. Write each result down before you move on. Do not skip Step 1. Without a stated observation, any follow up can seem to fit, and the test proves nothing.

Judge before you follow. Do not run a big test first and then look for a reason it was worth it. That order burns time on every coincidence.

### Step 1: Name the unexpected observation

Write the observation in one or two sentences, in plain words. State what you expected to see. State what you saw instead. Name the source, exactly enough to find it again.

- Observation: what you saw, in plain words.
- Expected: what you expected to see, in one sentence.
- Surprise: what differs between the two, in one sentence.
- Source: where it was observed, named exactly enough to find it again.
- Number: the size, rate, or timing that matters, if one exists. If no number exists, say so. Do not invent one.

If the observation matches what you expected, stop. It is not unexpected, and this skill does not apply. If you cannot name what you expected, write down the expectation first. A surprise with no expectation is not a surprise.

### Step 2: Judge whether the observation is worth following

Judge the observation on three checks. First, does it repeat, or did it happen once? Second, does it touch the goal of the work you were doing? Third, can a small test check it? Score each check yes or no.

- Repeats: yes or no, with the count of times it was seen.
- Touches the goal: yes or no, with one line of reason.
- Small test exists: yes or no, with the test named in one sentence.

Follow the observation only if at least 2 of the 3 checks say yes. If fewer than 2 say yes, write the observation down and stop. A written down observation is not lost. It is parked, and it costs nothing to park it.

Do not follow an observation that fails all 3 checks. A one off event with no link to the goal and no small test is a coincidence until proven otherwise.

### Step 3: Follow it with a small test

Name a small test that checks the observation. A small test runs in one session, costs little, and gives a clear result. State what the test will do. State what result would confirm the observation, and what result would break it.

**Authority split for this test.**

- (a) Authorized execution. Run the test only when it is read-only, or when the action is listed exactly in the Stage 2 manifest, with action, destination, payload or template, limit, and condition. A read-only check reads, observes, or measures. It does not change, publish, send, pay, delete, or deploy anything.
- (b) Test specification or proposal. When the test needs an action outside the manifest, do not run it. Write the test as a runnable predicate: the test, the result that would confirm with its number, and the result that would break it with its number. Then write a manifest action proposal for the next unit or human gate: the exact action, destination, payload or template, limit, and condition, so the next approval can list it. Hand the specification and the proposal to the next unit or human gate with the record, marked untested. Do not record a result for a test that did not run.

- Test: what the test does, in one or two sentences.
- Confirms: the result that would confirm the observation, with a number where one exists.
- Breaks: the result that would break the observation, with a number where one exists.
- Cost: the time or money the test costs, with a number.

Run the test. Write the result down with its number. Do not run a big test first. A big test before a small one wastes the budget that a small test would have saved.

### Step 4: Keep what the test confirms, drop what it does not

Compare the test result with the confirms and breaks lines from Step 3. If the result matches the confirms line, keep the observation. If it matches the breaks line, drop the observation. If it matches neither, say so and run one more small test, or stop.

- Result: what the test found, with its number.
- Matches: confirms, breaks, or neither.
- Decision: keep or drop, with one line of reason.

A kept observation must have a number from the test. A kept observation with no number is a hunch, not a finding. Do not hand on a hunch as a finding.

### Step 5: Reject coincidences

List the other explanations for the observation. For each one, state whether the test rules it out or not. Reject each explanation the test rules out, with one line of reason each. Keep the explanations the test does not rule out, and name them.

- Other explanation: the explanation, in one sentence.
- Ruled out: yes or no.
- Reason: one line, in plain words.

Reject at least 1 coincidence before you move on. A coincidence looks meaningful at first glance but has no link to the work. Name the coincidence, state why it is a coincidence, and drop it. If you cannot name one, look again at what else happened at the same time.

A finding that still has a live rival explanation is not settled. Name the rival, and state what test would settle it. Do not hide the rival from the record. The test that would settle the rival is a proposal for the next unit or human gate, not an instruction to run it.

### Step 6: Hand the finding on

Hand on the finding only if it survived Step 4. The handoff record must hold all six fields below. A handoff missing any field is not complete.

- Observation: the observation from Step 1, with its source and number.
- Judgement: the 3 checks from Step 2, each marked yes or no.
- Test: the small test from Step 3, with its cost.
- Result: the test result from Step 4, with its number, kept or dropped.
- Rejected: the coincidences and explanations from Step 5, each with its reason.
- Rival: any live rival explanation that remains, with the test that would settle it.

The next step receives this record and nothing else as its starting point. Do not add a guessed cause to the record. A guessed cause belongs in a new run, not in this one.

## Stop rule

Set the limit before the work starts. The maximum is 3 observations followed per run. The maximum is 3 small tests per observation. Do not follow more than 3 observations. Do not run more than 3 small tests on one observation.

Stop when you reach either limit. Then hand on the best finding you confirmed, or stop if none survived Step 4. See skills/local-handover/router/router-rules.md for the no-splitting and time rules.

If the budget runs out in the middle of Step 3, mark the unrun tests as unrun. Reduce the scope to what you did run. Do not hand on a finding with no test result.

## When this skill does not apply

Do not use this skill when the observation matches what you expected. An expected result is not a surprise. Use a different skill.

Do not use this skill when fewer than 2 of the 3 checks in Step 2 say yes. A parked observation is not a lost observation. Park it and return to the work.

Do not use this skill to run a big test before a small one. A big test first wastes the budget a small test would have saved.

Do not use this skill to keep an observation the test broke. A broken observation stays broken until a new test confirms it.

Do not use this skill when a coincidence looks meaningful and you keep it anyway. A coincidence with no link to the work is not a finding. Name it, reject it, and move on.

## Worked example: the cafe that finds a lunch crowd

Work in progress: a cafe tracks morning sales each day. Observation: on Tuesday, the cafe sold 18 sandwiches before 11:00, while it usually sells 4 sandwiches before 11:00. Expected: about 4 sandwiches before 11:00, based on the last 20 mornings. Surprise: 14 extra sandwiches before 11:00. Source: the till log for Tuesday, checked against the last 20 mornings.

Judgement, 3 checks. Repeats: no, seen once so far. Touches the goal: yes, the goal is to grow morning sales, and sandwiches are a morning sale. Small test exists: yes, put a sandwich board outside on Wednesday morning and count sandwich sales before 11:00.

Score: 2 of the 3 checks say yes. The observation is worth following.

Small test: put a sandwich board outside the cafe on Wednesday. Run it from 8:00 to 11:00. Count sandwich sales before 11:00. Confirms: 10 or more sandwiches sold before 11:00. Breaks: 4 or fewer sandwiches sold before 11:00. Cost: 1 hour of staff time and the cost of the board, 25 dollars.

Test result: on Wednesday, the cafe sold 13 sandwiches before 11:00. The result matches the confirms line. Decision: keep the observation.

Rejected coincidences: a school trip passed the cafe on Tuesday. The trip passed once. The board test on Wednesday had no trip. Sales still rose to 13. So the trip did not cause it. A rainy morning kept people inside. Tuesday was sunny, and Wednesday was sunny too, so the rain did not cause it. The till log was wrong. The till log was checked twice and the count held, so the log error did not cause it.

Rival that remains: the board itself may have drawn the crowd, not the sandwiches. The test that would settle it: put the board out with no sandwiches listed. Count foot traffic for one morning. That test is not run yet, and the record says so.

Handoff record:

- Observation: 18 sandwiches sold before 11:00 on Tuesday, against a usual 4, from the till log.
- Judgement: repeats no, touches the goal yes, small test exists yes.
- Test: sandwich board outside on Wednesday, 8:00 to 11:00, cost 25 dollars and 1 hour.
- Result: 13 sandwiches sold before 11:00 on Wednesday, confirms, kept.
- Rejected: the school trip, the rain, and the till log error.
- Rival: the board may have drawn the crowd, not the sandwiches, unsettled.

## Commands

- "show observation" lists the observation with its source and number.
- "show judgement" lists the 3 checks with yes or no.
- "show record" emits the handoff record from Step 6.
- "save state" emits the observation, the test, and the handoff record together.
- "resume from:" restores a saved handoff record and continues the work.
