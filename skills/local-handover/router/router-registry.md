# Router Registry

This file lists the 17 Discovery skills.
The coordinator reads this file before it routes a case.
Each row holds one skill.
Use the trigger to pick the skill.
Use the phase to pick the order.

| Skill | Path | Trigger | Inputs | Outputs | When not to use | Phase |
| --- | --- | --- | --- | --- | --- | --- |
| Anomaly Hunting | ../local-anomaly-hunting/SKILL.md | What you see breaks what you expected | Stated model, predictions, observations with source | Top ranked anomaly handoff record | No stated model to test | Research |
| Abduction | ../local-abduction/SKILL.md | You need the best cause for a surprise | Anomaly handoff record with model, prediction, observation, source, gap | Top 3 explanations with predictions and killer tests | No anomaly to explain | Research |
| Falsification | ../local-falsification/SKILL.md | You need a check that can prove a claim wrong | Ranked explanations with predictions and killer tests | Verdicts, ranked survivors, falsifier per survivor | No ranked explanation to test | Proof |
| First Principles Questions | ../local-first-principles-questions/SKILL.md | You need to rebuild from what must be true | Decision, claims, sources, domain conditions | Decision record with true facts and open risk | To re-derive settled facts that are already cited | Research |
| Induction | ../local-induction/SKILL.md | A pattern across cases points to a wider rule | At least 3 observed cases with source or number | Tested rule with scope, breaker, score | Fewer than 3 cases | Research |
| Deduction | ../local-deduction/SKILL.md | A rule should predict one clear result | Stated premises marked sourced or assumed | Chain, fallacy checks, conclusion, limits | No stated premises | Proof |
| Analysis and Synthesis | ../local-analysis-synthesis/SKILL.md | You need to split a thing apart, then rebuild it | Whole, observed behavior, list of parts | Rebuilt account with new case test and score | Whole has no observed behavior | Research |
| Thought Experiments | ../local-thought-experiments/SKILL.md | You need to test an idea in your head first | Claim with scope | Verdict, scenario steps, result, open points | No claim to test | Stuck |
| Analogy and Cross-Domain Transfer | ../local-analogy-transfer/SKILL.md | A fix from another field may fit this problem | Target problem with goal, at least 2 source cases | Transfer with shared structure, new case test, score | Target has no clear goal | Research |
| Inversion | ../local-inversion/SKILL.md | Forward work has failed, so work back from failure | Goal with clear result and number | Workable steps from top failures, new case test, score | Goal has no clear result | Stuck |
| Counterfactual Thinking | ../local-counterfactual/SKILL.md | You need to ask what would change if one fact differed | What happened with source and number, one key factor | Causal link, changed case, rejected factors, score | What happened has no source or number | Stuck |
| Constraint-Based Discovery | ../local-constraint-discovery/SKILL.md | A hard limit shapes what can work | Problem, at least 3 constraints with limits | Pick that passes all constraints, new case test, score | Constraint list is incomplete | Search |
| Search the Possibility Space | ../local-possibility-space/SKILL.md | You need to map the options before you pick one | Choice with goal, hard constraints | Ranked options, pick, rejected list with reasons | Choice has no clear goal | Search |
| Evolutionary Search | ../local-evolutionary-search/SKILL.md | Small changes, kept or dropped by test, can find a better form | Working design, measure with unit and starting value | Final design, rounds, improvement, dropped list | Design does not work yet | Search |
| Serendipity + Prepared Mind | ../local-serendipity/SKILL.md | A chance find meets a mind ready to see its use | Unexpected observation, work in progress | Tested finding, judgement, rejected coincidences, rival | Observation matches what you expected | Search |
| Consilience | ../local-consilience/SKILL.md | Separate lines of proof point to the same answer | Question, at least 3 independent lines of evidence | Converged answer, contrary lines weighed, score | Fewer than 3 lines are independent | Proof |
| Discovery | ../local-discovery/SKILL.md | You need to route a discovery problem to the right engines in order | Problem, model, observations with source, goal | Route, engine handoffs, invention with test and limits | No problem to solve, or no model and no observations | Entry |
