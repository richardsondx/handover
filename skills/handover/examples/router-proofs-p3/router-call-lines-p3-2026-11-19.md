# Proof call lines, Priority 3 router proof coverage

Run: p3-router-proof-2026-11-19-01.
Date: 2026-11-19.
Rule used: the Discovery router step in skills/handover/SKILL.md (v8 lean core, Priority 2). Each line was written before its call.
Home: skills/handover/examples/router-proofs-p3/.
Manifest: stage2-manifest-p3-2026-11-19.json in the same folder.

## Phase moves

- Start: Entry phase. The registry places Discovery in Entry.
- Move: Entry to Proof. Reason: the first proof tests ranked explanations, and Falsification sits in Proof.
- Move: Proof to Stuck. Reason: forward curation work failed (1 usable case of 40), so the next proof works back from failure, and Inversion sits in Stuck.
- Move: Stuck to Search. Reason: the next proof picks under hard limits, and Constraint-Based Discovery sits in Search.
- No further phase move. Serendipity sits in Search with Constraint-Based Discovery.

## Call line 1, Falsification

- What I saw: the Nov 15 Abduction handoff files 3 ranked explanations for the 39-case yield gap, each with a prediction and a killer test named before any result was known.
- Trigger fired: "You need a check that can prove a claim wrong", registry row Falsification, phase Proof.
- Why this skill: the next step needs a verdict on the ranked explanations, not another explanation, and Falsification runs the killer tests and keeps only survivors.

## Call line 2, Inversion

- What I saw: forward curation work failed, Nov 15 built 1 usable case against a bar of 40, after Nov 9 built 20 and Nov 11 built 13, so the forward route is stuck.
- Trigger fired: "Forward work has failed, so work back from failure", registry row Inversion, phase Stuck.
- Why this skill: the goal has a clear result and number (40 usable cases in one run), and the next step needs workable steps derived from what would guarantee failure, not another forward plan.

## Call line 3, Constraint-Based Discovery

- What I saw: three killer tests from the Abduction handoff compete for the next unit, and hard limits decide between them: only read-only tests can run in this proof run, and the kill condition must already be filed.
- Trigger fired: "A hard limit shapes what can work", registry row Constraint-Based Discovery, phase Search.
- Why this skill: the choice is a pick under stated constraints, and the skill checks each candidate against each constraint, rejects violators by name, and tests the pick on a new case.

## Call line 4, Serendipity + Prepared Mind

- What I saw: while reading the Nov 15 Anomaly handoff, the listed held reasons sum to 208, not the 213 total the handoff states, a surprise with a number and a source.
- Trigger fired: "A chance find meets a mind ready to see its use", registry row Serendipity + Prepared Mind, phase Search.
- Why this skill: the observation is unexpected, and the next step needs a judgement on whether to follow it or park it, not a verdict on the curation gap itself.

## Skills not called, with reasons

- Negative routing test: no call line exists for the status-check task in negative-routing-2026-11-19.md. Reason: no registry trigger fired for that task, so no skill was called and the coordinator answered directly. The validator has no no-call mode; see the verification file.
- Discovery (umbrella): trigger noted, not called. Reason: each proof names its engine directly from the registry, so no Entry routing call was needed.
- Consilience: trigger noted, not called. Reason: the Proof phase proof uses Falsification only; fewer than 3 independent lines of evidence were assembled for one question, so the Consilience trigger did not fire.
- Counterfactual Thinking: trigger noted, not called. Reason: the Stuck phase proof uses Inversion only; no single key factor was isolated to vary, so the Counterfactual trigger did not fire.
- Evolutionary Search: trigger noted, not called. Reason: the Search phase proof uses Constraint-Based Discovery only; no working design with a starting measure was put forward to improve by small changes, so the Evolutionary Search trigger did not fire.
- All other registry skills: triggers did not fire for these tasks. No call was forced.
