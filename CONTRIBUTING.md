# Contributing to Handover

Thank you for considering a contribution. Handover is a supervised workflow, so contributions are judged the same way runs are: by evidence, not by enthusiasm.

## How to propose a change

1. Open an issue first for anything larger than a typo, stating the problem, the change, and what would prove it works.
2. Keep the change small and verifiable. One field kit, one playbook, one fix, one translation, not a bundle of unrelated changes.
3. Do not weaken a check to make a run pass. If a check fails, fix the artifact or the kit, or report the failure as a gap.
4. Do not add an external send, publish, post, pay, delete, or deploy without a separate gate approval bound to the exact action and payload. A contribution that adds such an action must state it plainly in the issue and in the change.

## Field kit contributions

A field kit proposal must include:

- The field and the task patterns it covers, with at least one real task it was proven on.
- A router, at least one playbook, domain principles, and verification and cleanup routines.
- A capability map: what the kit can actually drive, plus its tools or APIs, and its known limits.
- The proof run: the artifact, its predicate, the verifier verdict, and any gaps recorded, not just a success claim.

A generated kit that was never executed is a draft, not a deliverable. Do not submit it as a finished kit.

## Translations

English is the source README. A translation must:

- Translate the full README, not just the headline, and keep code blocks, commands, and file paths unchanged.
- Be checked by a second reader who can read that language, with that check noted in the pull request.
- Link back to the English source, so a reader can compare them.

Once a translation is accepted, it will be linked from the README language line at the top.

## Code and documentation style

- Plain, direct language. No em dashes. No slogan-like sentences. Every claim that matters must carry a specific, checkable detail: a number, a mechanism, or a reason.
- No internal step names or phase numbers in user-facing text. Say the step in plain words.
- Keep the approval gate visible. Never hide a material term behind a details link in a user-facing package or README section.

## Reporting a bug

Include: what you did, what you expected, what happened, the skill and manifest versions if you have them, and the decision trail or evidence pointer if you can share it safely. Do not include secrets, credentials, one time codes, or private data in a bug report. See SECURITY.md.
