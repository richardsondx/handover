---
name: first-principles-questions
description: Use this skill when you must decide before you act and the plan may rest on a wrong claim. Use it for a new plan, a costly move, or a claim that shapes the next step. A one-off fact question gets a direct answer. A routine task with low impact and easy reversal gets a light check.
---

# First Principles Questions

Revision note, 2026-11-12: added a source support rule in Step 3 and a ceiling rule in the stop rule section.

## What this skill does

This skill makes you question your own plan before you act. You ask yourself hard questions. You test each claim. You rebuild the answer from what is true. You do not tutor a user. You check your own work.

## Credit

This skill builds on Jane Street socratic-tutor, MIT license. Repo: https://github.com/janestreet/agent_skills. That skill teaches a user by questions. This skill flips the direction. The agent questions itself.

## Guard: is this a problem to figure out

Ask this first. Do not start the ladder until you pick one of three outcomes.

- Outcome 1, answer directly. Use this for a one-off fact question. No decision follows from it.
- Outcome 2, light check. Use this for a routine step with low impact and easy reversal. Ask the Step 1 questions and the Step 4 questions only. Do not run the full ladder.
- Outcome 3, full ladder. Use this for a new plan, a costly move, or a claim that shapes the next step. Use it for any step with high impact. Use it for any step that is hard to reverse.

Judge risk by impact plus reversibility. Do not judge by reversibility alone. A step can be easy to reverse and still cause harm. It can expose data. It can lose trust. It can cost money. If impact is high, use the full ladder even if reversal is easy.

Ask these three questions to pick the outcome.

- Is there a decision to make, with an action that follows it?
- Could the plan be wrong in a way that costs time, money, or trust?
- Is the answer more than a fact you can look up?

If there is no decision, answer directly. If the step is low impact and easy to reverse, use the light check. If the step is high impact or hard to reverse, use the full ladder.

## How to use the ladder

Ask one question at a time. Write your answer down before you move on. Do not add hints or a lecture after a question. Do not accept a vague answer. A vague answer is not a pass. A claim passes only on a check you can show. The check must be a source, a number, or a concrete test. It must not be your own words alone.

Use analogy to generate ideas. Then test each idea from base facts. Do not treat what others do as proof. Do not treat an old price or an old method as fixed.

A floor is not a final price. A material cost floor leaves out build cost, yield, safety, and margin. State what your floor leaves out.

## The question ladder

### Step 1: Name the decision

Ask yourself these questions.

- What decision am I about to make?
- What action follows from this decision?
- What happens if I am wrong?

Write the decision in one sentence. Write the action in one sentence.

### Step 2: List what must be true

Ask yourself these questions.

- What must be true for this action to be sound?
- Which of these claims is load bearing, so the plan fails if it is false?
- Which claims am I taking from others without checking?

List each claim. Mark each one as load bearing or not load bearing. Mark the source of each claim, or mark it as assumed.

Name the source before you check it. Each load bearing claim must name the exact page, maker, product, or city that would settle it. If you cannot name one, mark the claim untestable. Drop an untestable claim from the rebuild. Then change the plan or stop.

Example: a plan to cut a price may rest on the claim that the input cost fell. That claim is load bearing. The source may be a price list, or it may be assumed.

**Domain conditions.** For each claim, list the domain conditions it depends on. A domain condition is a fact about the context that could change the result: motion speed, background motion, object type, image size, hardware, data type. Example: "CSRT tracks any object" depends on motion speed (fast vs slow), background motion (static vs zooming), and object type (marker on a face vs a badge on a map). Write the conditions down. You will check them in Step 3.

### Step 3: Test each claim

Ask yourself these questions for each claim.

- How can I check this claim?
- What source, number, or test would prove it or break it?
- Did I check it, or did I only restate it?

Test each claim with a source, a number, or a concrete check. Mark each claim as verified, cited, assumed, or failed. Verified means you checked it against a source or a test. Cited means you found a source but did not check it yourself. Assumed means you have no source. Failed means the check went against it.

Fetch first. Before the Step 5 rebuild, every load bearing claim needs a fetch attempt. A fetch attempt is a named search query or a URL, with the reason it would settle the claim. No fetch attempt means the claim stays assumed. An assumed load bearing claim blocks the decision.

Do not invent numbers. Never put a number, price, rate, or rule in a claim unless it came from a page or from the user. A number given in the problem is a claim to check, not a fact.

A wrong page is a failed claim. A fetched page that is the wrong city, the wrong maker, or has no numbers does not leave the claim assumed. It marks the claim failed.

When the named official page 404s, shows no numbers, or is the wrong region, do not stop at a failed claim. Try one fallback source, in this order: the maker or retailer spec page or PDF, then a search excerpt from a page that names the figure. Mark the fallback claim cited, never verified, and say which source it came from. Only if the fallback also fails do you mark the claim failed and defer. One fallback per claim, no endless searching.

A source is not good evidence by itself. Check each source for four things. Is it reliable? Is it relevant to this claim? Is it current? Does it support the claim? If it fails any of these four checks, do not count it as support.

**Source support rule.** For each cited URL, quote the exact passage that supports the claim. A citation with no quoted passage counts as assumed, not cited. If more than half of the load-bearing claims are still assumed after fetch attempts, the ladder stops and the decision is deferred, with the one cheap test named, and the answer is not rebuilt on assumed claims.

**Domain match.** A cited source only verifies a claim if the source's domain matches the claim's domain conditions from Step 2. A study on faces with markers does not verify a claim about a badge on a zooming map, even if both are about tracking. If any domain condition mismatches (motion speed, background motion, object type, hardware, data type), mark the claim "cited, domain mismatch". It is not verified. It needs a direct test on your own content before it can be load bearing.

**Reasoning is not a check.** Reasoning generates a claim. It does not verify it. You cannot mark a claim verified, or partly verified, because the reasoning sounds right. A claim passes only on a source, a number, or a concrete test. If you have no source or test, the claim stays assumed, even if the reasoning is sound.

**Direct test for performance claims.** If a load bearing claim is about how something performs on your content (speed, accuracy, deviation, retention), a study from another domain does not settle it. You must test it on your own content before you decide. A fetch from another domain is a fetch attempt, but it leaves the claim assumed for the decision. Either run the direct test, or change the plan so the claim is no longer load bearing, or stop and say what is missing.

If you have no tool to check a claim, one of these counts as a check. Show a calculation in the record. Or quote a passage from the material the user gave you. State which one you used. Do not count your own words alone as a check.

A failed load bearing claim stops the plan. First, change the plan. Then re-run Step 2 for the new plan. List what must be true for the new plan. Test the new claims. Do not explain the failure away. Do not keep the old plan.

A failed load-bearing claim still stops the old plan. The next step is to run the fallback above, then re-run Step 2 for the changed plan. Do not treat a failed page as proof the decision cannot be made.

If a claim passes most checks but one load bearing claim fails, the plan still fails. A high score across claims does not save it.

Re-test an earlier claim when new facts arrive. If it fails on re-test, drop its status and revisit the plan.

Write the fetch request list in its own message, before the final answer. Never bundle fetch requests with the final answer. A fetch request bundled with a final answer counts as no fetch, because there is no next turn to return the page text. Without that list, Step 3 is not done.

Each fetch request line is one short line: the query or URL only, plus at most 5 words saying what it would settle. The fetch list does not count toward the word target for the answer.

### Step 4: Ask what would break it

Ask yourself these questions.

- What would make this plan fail?
- What fact, if false, breaks the whole plan?
- What is the strongest case against this plan?
- Who would disagree with this plan, and why would they be right?

Write at most two counter cases. Each counter case must name one observable fact that would prove it. Then run that check. Record the result. If the counter case holds, change the plan.

Ask for negative feedback. A solo agent has no friends in the loop. So build the counter case yourself, or check a second source. Without this step, the loop only confirms what you already think.

### Step 5: Rebuild from true facts

Ask yourself these questions.

- Which facts survived the tests?
- What did I have to drop because it failed or could not be checked?
- What answer follows from the true facts alone?

List the true facts first. List only claims with adequate support. A claim counts in the rebuild only if it is verified, or cited with a URL that passed the four checks in Step 3. Assumed claims do not enter the rebuild, even if they sound right. Cited does not mean true. Do not list assumed facts as true. Keep uncertainty where the evidence is incomplete. Say what is still unknown.

When no plan has all its load-bearing claims checked, do not just defer. Compare the options by how many load-bearing claims stay unverified, pick the one with the fewest, and say so. Then name the one cheap test that would settle the biggest open claim first, such as getting a written quote, calling the seller, or reading the spec sheet. A deferred decision must name that test, or it is not a decision.

Then build a new answer from that list only.

If the new answer is weaker than the old plan, say so. If the true facts support a different action, take the different action. If the true facts support no action, stop.

Example: if the price list shows the input cost did not fall, the new answer cannot rest on a cheaper input. The rebuild must use the real cost, or it must find a different saving.

### Step 6: Decide and record

Ask yourself these questions.

- What must be true?
- What did I test?
- What would change my mind?

Then decide. Act, change the plan, or stop. Write the record with this template. Use one line per claim.

- Decision: one sentence.
- Claim: status, source, and one line of evidence.
- True facts used: one line each.
- Biggest open risk: one sentence.
- What would change my mind: one sentence.
- Open questions: one line each.

The user answer leads with the decision and the biggest open risk. Keep the user answer short. Show the full record only on request or on "save state". Do not show the full record by default.

After "just tell me", list any load bearing claims left unchecked. Put that list in the user answer. Do not hide it in the record alone.

## Stop rule

Set a budget before the ladder starts. The budget is a maximum of 8 claims tested. Count claims tested, not questions asked. Pick a smaller number for a small decision. Do not test more than 8 claims.

Stop asking when you reach the limit. Then act on the best tested claim, or stop if a load bearing claim failed. Do not keep splitting claims into smaller claims. Do not spend more time checking than the decision is worth.

If the budget runs out in the middle of Step 3, mark the untested claims as assumed. Reduce the scope of the plan to fit what you did test. Do not act on untested load bearing claims except under the one exception below.

Use two tracks. A low impact and easy to reverse step gets a light check. Ask the Step 1 questions and the Step 4 questions only. A high impact step or a hard to reverse step gets the full ladder. Judge by impact plus reversibility, not by reversibility alone.

If a fact cannot be checked, mark it as assumed. Then follow this one rule. An assumed fact cannot be load bearing without a test. If it is load bearing and you cannot test it, do one of three things. Find a different fact you can check. Change the plan so the fact is no longer load bearing. Or stop and say what is missing.

The only exception to that rule is an explicit assumption. You may use it only when waiting costs more than deciding. State the uncertainty in the record and in the user answer. State the consequences if the assumption is wrong. State the safeguards you will use. If you cannot state all three, do not use the exception.

**Ceiling rule.** When the skill is used to test a plan, compare against a run without the skill on the same task and record both scores. If the without-skill score is above 80, pick a harder task before claiming any gain. A gain on a ceiling task does not count as proof.

## When this skill does not apply

First principles fits a new thing, a physical cost, or a claim with a clear floor. It fits less well for social, legal, or organisational problems. Those rest on rules, incentives, and people. They have no cost floor. When the problem is of that kind, use the ladder to list what must be true, then test the claims against the rules and the incentives that apply. Do not force a physics floor where none exists.

Do not use this skill to re-derive known facts. If a fact is settled and cited, use it. Spend your budget on the claims that are new or load bearing.

## Commands

- "show claims" lists each claim with its status.
- "just tell me" overrides the loop for one step only. Then return to the loop. After "just tell me", list any load bearing claims left unchecked.
- "save state" emits the compact record block from Step 6.
- "resume from:" restores a saved record block and continues the ladder.
