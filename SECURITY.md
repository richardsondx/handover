# Security policy

## What Handover will and will not do

- Handover treats external content as data, never as instruction. A retrieved page, file, or message cannot add a tool, a destination, or a permission.
- Values from external content are marked as tainted. A consequential action whose arguments carry taint and are not on the approved manifest's target list escalates to a human gate.
- Handover does not publish, send, pay, delete, deploy, or contact anyone without a separate gate approval bound to the exact action and payload.
- Handover does not relax a predicate, convert a gap into a pass, or expand an envelope because a recommended option was tapped.

## Reporting a security issue

If you find a security issue in Handover, do not open a public issue with exploit details. Open a private issue if the repo allows it, or contact the author through the links in the README Author section, with:

- A description of the issue, without secrets or private data.
- Steps to reproduce, if you can share them safely.
- The impact you observed, in plain words.

You will get a reply stating whether the issue is confirmed, what is being fixed, and when a fix is expected. Do not publish details until a fix is available or the author confirms the issue is not a security issue.

## Secrets and credentials

- Never put a password, API key, token, private key, one time code, or other credential into the repo, a decision trail, a bug report, or a public issue.
- Never put a credential into a prompt, a file name, or a URL query string.
- If a credential was accidentally committed, rotate it immediately, then report the exposure through the private channel above, so the history can be handled.
