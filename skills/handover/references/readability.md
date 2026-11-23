# Readability

Full v7 text for the readability rules. The core (SKILL.md) states each rule in short form with its tag. This file is part of the skill. It never relaxes a core rule.

This section governs Stage 1, Stage 2, the final report, the judge verdict, and the dead-end report. It changes words only. It does not change the plan, the predicate, the budget, or the verdict on substance.

## Rules, all eight, every report

- Active voice. The subject does the action. Example: The verifier checked the file. Never: The file was checked.
- Vertical lists. Complex information uses a vertical list. A paragraph holds no list of facts. A check, a number, and a result never share one sentence.
- No figurative language. Use literal words only. Do not use frozen, crisp, or rests on, unless the report defines the word first and uses it with that one meaning only.
- No formulaic, slogan-like language. Use no line that fits any run. Each line carries a number, a name, a path, or a next step.
- One Word, One Meaning. Each report defines its words at the top. Each word keeps one meaning through the whole report.
- No complex verb tenses. Use simple present, simple past, and will for the future only. Do not use has been, had been, would have, or continuous forms.
- Cognitive load reduction. The reader reads the result first. Detail follows in fixed order. No section surprises the reader.
- One thought per sentence. One sentence holds one thought. A sentence holds at most 20 words.

## Fixed word meanings, use these words only for these meanings

- pass: a check meets its bar
- fail: a check does not meet its bar
- done: a unit has a commit and its checks pass
- gap: work that remains
- check: the act of verification on the real artifact
- CLI: the tool that runs a check
- Use check only for the act of verification. Use CLI only for the tool. Do not use check as a short name for the tool.
- cost: money the run spent
- Fixed: a gap is done, tested, and re-checked in the same run, inside the envelope
- Queued: a gap is recorded as the next job, with its own approval gate, never presented as done
- Accepted: the user explicitly accepted a gap, reason recorded

## Fixed order for the final report and the judge verdict

- Result
- Evidence
- Units
- Kit
- Gaps
- Cost and envelope
- Next step

## Fixed order for Stage 1 and Stage 2

- Keep the existing section order.
- Put each check on its own list line.
- Put each number on its own list line.
- Put each bar on its own list line.
- Put each result on its own list line, as Result: pass or Result: fail.

## Judge check

- The judge flags a readability break in its verdict.
- The judge names the line and the rule it breaks.
- The coordinator rewrites the report before delivery.
- A readability break does not change the substance verdict.
- A report with a readability break does not go to the user unrewritten.

## Examples, blur and grain meter, Nov 9, 2026, words only, no plan change

- Verdict: run folder/verdict-readable.md
- Stage 1: run folder/stage1-package-readable.md
- Stage 2: run folder/stage2-manifest-readable.md
