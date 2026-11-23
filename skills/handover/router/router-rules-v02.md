# Router Rules

This file sets the rules for the router.
The router is a required step inside the Handover skill.
It reads the registry and the rules in this file, then routes a case.
It does not change the Handover skill text on its own.
A change to the Handover skill text needs its own approval.
A Handover coordinator reads the registry, routes a case, and records each call.

## Call line

Before each skill call, the coordinator writes one line: what it saw, which trigger fired, why this skill.
The coordinator writes the line before the call.
The line stays in the run record.
Do not call a skill with no line.

## Handoff contract

Each skill call produces a handoff record in that skill's own format.
Each record holds the fields below for its skill.
The coordinator records each handoff before the next call.
If a field is missing, the handoff is not complete.
Do not carry a guessed cause forward as a fact.

### Four traps

- Measurement error: the instrument, the log, the clock, or the count was wrong, so ask whether a second, independent measurement would give the same result.
- Selection bias: the observations collected are not the full set, so ask whether only the cases that stood out, or only the cases easy to reach, were collected.
- Stale model: the model was right once and the world changed, so ask whether the conditions changed since the model was built, and record the change.
- Cherry-picked outlier: one extreme case stands out while the rest fit the model, so ask whether the mismatch survives when the full set is viewed, or vanishes.

### Score scale and product rule

- Each score factor runs on a scale of 1 to 5, where 1 means lowest and 5 means highest.
- Anomaly Hunting scores surprise, importance, and checkability, and the product is surprise times importance times checkability.
- Surprise means how far the observation sits from the prediction, importance means how much the mismatch would change the next decision if it is real, and checkability means how easily the mismatch can be tested.
- Abduction scores fit, testability, and simplicity, and the product is fit times testability times simplicity.
- Fit means how well the explanation matches the observation, testability means how easily the explanation can be tested, and simplicity means how few new parts, links, or rules the explanation adds.
- The highest product ranks first, and a low score on any one factor pulls the entry down even if the other two scores are high.
- Anomaly Hunting breaks a tie by importance first, then by checkability.
- Abduction breaks a tie by fit first, then by testability, then by simplicity, then by the explanation generated first.

### Anomaly Hunting

- Model
- Prediction with condition and number
- Observation
- Source
- Size of gap
- Scores: surprise, importance, checkability, product
- Traps checked: four traps, one line each

### Abduction

- Explanation with family, for each explanation handed on, up to 3
- Load-bearing claims with source that would settle each claim
- Predictions with condition and number
- Scores: fit, testability, simplicity, product
- Killer test
- Rank
- Stories dropped with reason in one line

### Falsification

- Explanation and prediction
- World A and World B
- Separating observation
- Test named before the result is known
- Test run, observation recorded, source
- Verdict: killed, surviving, or untested
- Ranked survivors
- What would change the verdict, one sentence per survivor

### First Principles Questions

- Decision
- Claim with status, source, and one line of evidence
- True facts used
- Biggest open risk
- What would change my mind
- Open questions

### Induction

- Rule
- Scope: covers and does not cover
- Breaker with source and number
- Cases with source and number
- New cases with result and score
- Score: fits out of total new cases checked

### Deduction

- Premises with source or assumed mark
- Assumed premises named again
- Chain: numbered steps with what each step uses
- Fallacy checks: clear or broken with fallacy named
- Conclusion
- Limits

### Analysis and Synthesis

- Whole
- Parts
- Links
- Rebuilt account
- Untested parts and links
- New case with prediction, observation, result
- Score: fits out of total new cases checked

### Thought Experiments

- Claim with scope
- Scenario: setting, actors, rules
- Steps: numbered steps with what each step uses
- Result
- Verdict with one line of reason
- What it leaves open

### Analogy and Cross-Domain Transfer

- Target with goal and block
- Source case with origin and result
- Shared structure: links marked holds or does not hold
- Carries over and does not carry over
- New case with prediction, observation, result
- Score: fits out of total new cases checked

### Inversion

- Goal with number
- Inverted question
- Failure list with top 3 marked
- Workable steps with action, time, number
- New case with prediction, observation, result
- Score: fits out of total new cases checked

### Counterfactual Thinking

- What happened with source and number
- Key factor with old value and new value
- Changed case with expected result
- Causal link with steps in order
- Rejected factors with reason
- Score: fits out of total new cases checked, with evidence

### Constraint-Based Discovery

- Problem
- Constraints with limit and source
- Candidates with score
- Rejected candidates with constraint broken
- Pick with score and tie-break rule
- Score: fits out of total new cases checked

### Search the Possibility Space

- Choice with goal and constraints
- Full space with costs and numbers
- Pruned space with count
- Rank with scores and measures
- Pick with why it wins and where it loses
- Rejected options with reason

### Evolutionary Search

- Design with starting value
- Measure with unit
- Rounds with kept and dropped changes
- Final design with final value
- Improvement: final value minus starting value
- Dropped changes with reason

### Serendipity + Prepared Mind

- Observation with source and number
- Judgement: 3 checks marked yes or no
- Test with cost
- Result with number, kept or dropped
- Rejected coincidences with reason
- Rival with test that would settle it

### Consilience

- Question
- Lines with source, number, independence mark
- What each line says with limit
- Convergence with count of supporting lines
- Contrary lines with weight and decision
- Score: fits out of total new cases checked, with new case

### Discovery

- Route: phase, engines in order, reason for each
- Finding from each engine run
- Source or number behind each finding
- Next question each finding raises
- Invention
- Invention test with number and fail result
- Limits

## Phase map

The phase map places each skill in one phase.
Each skill sits in one phase only.
The coordinator starts in Entry.
The coordinator may move to another phase later.
Record each move and its reason.

### Entry

- Discovery

### Research

- Anomaly Hunting
- Abduction
- First Principles Questions
- Induction
- Analogy and Cross-Domain Transfer
- Analysis and Synthesis

### Proof

- Falsification
- Deduction
- Consilience

### Stuck

- Inversion
- Counterfactual Thinking
- Thought Experiments

### Search

- Constraint-Based Discovery
- Search the Possibility Space
- Evolutionary Search
- Serendipity + Prepared Mind
