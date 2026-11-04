# Browser study reconciliation, Nov 4, 2026
Source: read-only browser task, ran 10:07 to 10:13 AM EST Nov 4, 2026. No post, like, reply, follow, account switch, or new login. Account switcher checked first, stayed on the already signed-in account.

## What was actually read
- Poteto article: "The Complete Guide to pstack Pt. 1", Aug 31, with an embedded chart labelled August 2026. Full prose readable, no paywall. Embedded images and some code blocks were not fully rendered as text, so those parts are not quoted or relied on here.
- m4lkxx article: "Harness, Loops, Graphs: What Each Layer Fixes and What It Breaks", Oct 25, 2026. Full text readable, no paywall or truncation observed.
- YouTube video: actual title on YouTube is different from the title in the original assignment. It is by Jan Marshal, 1:07:24, Oct 22, 2026, with an auto-generated English transcript from the Show transcript panel. Subtitles in the player were unavailable.

## Corrections to earlier notes
- The Nov 3 note that m4lkxx tasks stop around Level 4 is superseded. The full read gives levels 0 to 3 only: single call, single loop, multi-loop workflow (graph), self-improving workflow. Most people get stuck at Level 1, real work happens at Level 2, Level 3 is the future and the most dangerous if it optimises the wrong metric.
- The 50,000 figure Richardson mentioned is still not verified in any of these three sources. Poteto's article gives 2,000 PRs a month. The video cites 2,500 PRs in the previous month. Neither is 50,000, and neither should be used as a scale target until its meaning is confirmed.
- Poteto's article does not define harness, loop, or graph, and does not give a level ladder or an explicit initial question list. Those definitions and levels come from the m4lkxx article, not from Poteto.
- The video's count of 12 agent definitions does not match the repo study, which found 2 sub-agent files in pstack/agents/. The video count likely includes setup role definitions (about 10 to 12 roles in setup). Do not present 12 as the repo agent-file count.

## What confirms Handover v0.5, in own words
- m4lkxx: failures are mostly architecture failures, not model failures. A bare loop can wander, repeat, or falsely declare success. A graph adds steps, conditions, checkpoints, and recovery. Verification is a gate after implementation, not a suggestion, with routing back on failure. Self-improvement means analysing a run and rewriting the graph (prompt, node order, new verification step), with a human checking that it is improving the right thing.
- m4lkxx human role: the human defines goal, constraints, and definition of done at the start, and checkpoints are for genuinely ambiguous decisions, not every step. This matches Handover's five inputs, human-only questions, and options-first UX.
- Poteto: verification is the most critical skill. Build tools over instructions, make the environment reproducible, and keep a feature map as materialised memory, maintained or agents build on an old understanding. For Handover, the general form is: every field kit needs a lever (a tool or API plus a map of the domain), not just prose playbooks.
- Video workflow: task, then goal plus constraints plus definition of done, then playbook selection, then steps, then verify and review, then a verified result with inspectable evidence. This matches Handover's translator, approval package, execution, and verification.
- Poteto parallelism note, Cursor-specific: cloud agents are recommended over local worktrees for throughput, because worktrees cost local storage and resources. For Muse, this translates to a question to test, not a copied rule: what is the Muse equivalent of a snapshot-based parallel worker, and what are its cost and isolation limits.

## What does not change v0.5
- Handover already defers self-improving workflows (m4lkxx Level 3) until after a narrow supervised workflow succeeds and fails transparently. The full m4lkxx read supports that deferral, it does not argue for bringing Level 3 forward.
- Handover's options-first UX, two-stage approval, harness-enforced gates, budget ledger, and verification coverage rules are not contradicted by any of these three sources. No draft change is made on the basis of this reconciliation alone; any change from it would go through the normal review and approval step, so the v0.5 approval request remains as presented.
