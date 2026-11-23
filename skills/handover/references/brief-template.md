# Brief template, commit, check CLI, cheap units

Full v7 text for commit, check CLI, and brief rules. The core (SKILL.md) states each rule in short form with its tag. This file is part of the skill. It never relaxes a core rule.

## Commit is the finish line for each unit

- Verify first, on the real artifact, with the unit check. Then commit that unit alone, in the repo where the work lives. No unit is done until its commit exists.
- One commit holds one unit: one feature, one fix, one change. Each commit is a future PR: landable, ordered to tell the story. Amend when the fix belongs in a just-made commit. New commit when separable.
- Conventional Commits: `type(scope): subject`. Never "wip" or "update stuff".
- Commit the fix with its proof: one or two tests of the broken behavior, red on the base, green with the fix, in the same commit where a test fits.
- An agent commits only its own files. Stage only the files listed for that unit. Never commit with `.`, never stash, never switch branches unless explicitly requested, never touch unrelated work in progress.
- Record the commit SHA in the per-unit list when made. Passes flips to passing only after check plus commit.
- Fixes after a unit is committed batch into one push wave per unit, in the lowest unit that owns the code, not a drip that restarts checks each time.
- A commit is local only, not push, merge, publish, or deploy. Those still need exact listing in the Stage 2 manifest. A commit never authorizes them.
- A push must keep every per-unit commit. Never push with a tool that makes one squashed commit from the files, such as gh_bulk_push.py or gh_commit.py. Push with the method named in the host profile for that repo, after a dry run first. A history rewrite, such as a first replay that replaces a squashed remote history, needs the user's explicit approval for that repo, a backup branch at the old remote HEAD first, and a tree check after.
- If the work is not in git, the finish line is a new versioned file for that unit, never an edit in place, version recorded in the per-unit list like a SHA.

## Check CLI per field

- Every field kit ships an executable check CLI for its field, plus a map of what the field covers. Prose alone is not a lever.
- CLI commands: launch (exact start command plus ready signal), doctor (read-only health check), drive (real commands or selectors to operate the artifact as a user would), evidence (what to capture and where: screenshot, log, number, file), cleanup (kill only what it started, never the evidence).
- CLI is composable, has subcommands, `--dry-run` for destructive commands, descriptive errors that tell the agent what to do instead, rich `--help`, machine-readable output (JSON) where the result matters.
- Verifier runs the CLI command for the unit. It does not invent its own test steps from the predicate. Predicate states what counts as a pass. CLI states how to run that pass.
- A CLI must prove itself end to end once before the kit counts as proven. A CLI never run is a draft, not a deliverable. Maintain it as the field changes, or it goes stale.
- If no CLI exists yet, the kit is draft. Verification falls back to the predicate plus the exact manual commands listed in the manifest. Record that fallback in the manifest and the final report. Do not present a draft kit as proven.
- Handover field CLI. The Handover field ships its own CLI. Its path is named in the run manifest for the field. Its commands are launch, doctor, drive, evidence, and cleanup. The verifier runs the CLI for the unit. It does not invent its own test steps from the predicate. Apply moves it only with a separate approval.

## Full brief per spawn, cheap-unit collapse

- Every spawn carries a full brief. Missing field means refuse to spawn. Never resume-chain a brief. Respawn fresh with consolidated scope.
- Brief fields:
- GOAL: one sentence, executable by a stranger with no chat access.
- SCOPE: paths it may and may not write, exclusive files, branch, or worktree.
- CONTEXT: pointers and upstream reports, pasted in full when depended on.
- ACCEPTANCE: checkable criteria, one per line.
- VERIFY: exact commands, normally the field CLI command, plus gotchas.
- TIMEBOX: on expiry, return partial findings and stop.
- FORBIDDEN: no rebase, no force-push, no fixes outside scope, any other ban.
- REPORT: status, branch, commit SHA, verdict, what was actually run, deviations, and follow-ups.
- STANDING: standing orders pasted verbatim.
- Size the brief to the unit. A 4KB scaffold around a two-line edit costs more than the edit. Coordinator owns the brief and records it in the execution record.
- Cheap unit: small, low risk, reversible, checkable with one command. Stage 1 and Stage 2 must name which units are cheap, why, and the single check command. Record the collapse in the manifest. Never call a unit cheap after the fact to skip a check.
- For a cheap unit: worker runs the single VERIFY command, coordinator spot-checks result and evidence, unit still ends with a commit. No dedicated verifier agent for that unit. Judge still checks it at the join, with artifact, predicate, and evidence.
- For near-identical cheap units, the first unit is the pilot. Fan out only after the first passes its check and its commit.
- A cheap unit that fails its check, or whose spot check finds a real problem, loses cheap status, goes back through the full loop with a fresh verifier, reason logged.
- Collapse changes only how much verification machinery runs per unit, and that change is written down before the run. It does not change close-the-loop, separation of powers at the join, budget ledger, or Stage 1 and 2 approvals.
