#!/bin/sh
# Handover check for Stage 2 execution manifests and Discovery router records.
# Run from the repo root: sh scripts/check-handover.sh
# Exit 0 when all checks pass, exit 1 otherwise.
# This is a static check. It proves files match the v7 schemas and the
# router rules as written. It does not prove a run was executed, a check
# was sound, or a harness blocked anything. No Stage 2 harness exists yet,
# so nothing here is a run-time enforcement claim.
# Checks:
#   a manifest JSON file validates against
#     skills/handover/stage2-manifest-schema.json
#   budget ledger numbers reconcile: reserve percent matches reserve
#     dollars, work budget plus reserve equals the cap, ledger cap
#     matches the limits cap
#   cheap-unit collapse entries name a unit that exists in the manifest
#   router call log entries name a registry skill and a trigger that
#     matches router/router-registry.md for that skill
#   a router call-lines file holds one block per call, each with
#     what was seen, which trigger fired, and why this skill, and each
#     trigger matches the registry trigger for the named skill
#   for each called skill, a handoff file exists in the handoff dir,
#     and it holds every field router/router-rules-v02.md lists for
#     that skill (label presence only, not semantic completeness)
# Usage:
#   sh scripts/check-handover.sh
#     Validates the repo's own good examples: the rendered Nov 15
#     manifest, units-template.json, and the router fixtures under
#     skills/handover/examples/. The broken examples are NOT
#     checked by the default run; they must fail, so check them with
#     --manifest or --router-call-lines and expect exit 1.
#   sh scripts/check-handover.sh --manifest FILE...
#     Validates each given Stage 2 manifest JSON file.
#   sh scripts/check-handover.sh --router-call-lines FILE --handoff-dir DIR
#     Validates the call-lines file and the handoff records in DIR.
# Source for the registry and handoff fields: the repo's own
# skills/handover/router/router-registry.md and
# skills/handover/router/router-rules-v02.md.

set -u
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
exec python3 - "$ROOT" "$@" <<'PY'
import json
import os
import re
import sys

try:
    import jsonschema
    from jsonschema import Draft202012Validator
except ImportError:
    print("FAIL: python3 jsonschema module is missing, install jsonschema to run this check")
    sys.exit(1)

root = sys.argv[1]
args = sys.argv[2:]
fail = 0


def note_fail(msg):
    global fail
    fail += 1
    print("FAIL %s" % msg)


def load_json(path):
    with open(path, encoding="utf-8") as fh:
        return json.load(fh)


def parse_registry(path):
    triggers = {}
    for line in open(path, encoding="utf-8"):
        line = line.strip()
        if not line.startswith("|") or line.startswith("| Skill") or line.startswith("| ---"):
            continue
        cells = [c.strip() for c in line.strip("|").split("|")]
        if len(cells) >= 3 and cells[0] and cells[2]:
            triggers[cells[0]] = cells[2]
    return triggers


def slug(name):
    return re.sub(r"[^a-z0-9]+", "-", name.lower()).strip("-")


def parse_handoff_fields(path):
    fields = {}
    skill = None
    in_contract = False
    for line in open(path, encoding="utf-8"):
        if line.startswith("## Handoff contract"):
            in_contract = True
            continue
        if in_contract and line.startswith("## ") and not line.startswith("### "):
            in_contract = False
        if not in_contract:
            continue
        m = re.match(r"^###\s+(.+?)\s*$", line)
        if m:
            skill = m.group(1).strip()
            fields[skill] = []
            continue
        if skill and line.startswith("- "):
            label = line[2:].strip()
            label = re.split(r"\s*[:,]\s*", label, maxsplit=1)[0]
            if label:
                fields[skill].append(label)
    return fields


def label_present(handoff_text, label):
    text = re.sub(r"[^a-z0-9 ]", " ", handoff_text.lower())
    text = re.sub(r"\s+", " ", text)
    words = re.sub(r"[^a-z0-9 ]", " ", label.lower()).split()
    for n in (len(words), 3, 2, 1):
        if n < 1 or n > len(words):
            continue
        phrase = " ".join(words[:n])
        if phrase and phrase in text:
            return True
    return False


def check_manifest(path, schema, triggers):
    rel = os.path.relpath(path, root)
    before = fail
    try:
        data = load_json(path)
    except (ValueError, OSError) as exc:
        note_fail("%s: not valid JSON: %s" % (rel, exc))
        return
    validator = Draft202012Validator(schema)
    errors = sorted(validator.iter_errors(data), key=lambda e: list(e.path))
    for err in errors:
        where = ".".join(str(p) for p in err.path) or "(root)"
        note_fail("%s: %s: %s" % (rel, where, err.message))
    if errors:
        # Schema errors are already reported above. Semantic checks still
        # run, so one bad file reports every fault it carries, not just
        # the first class of fault.
        pass
    ledger = data.get("budgetLedger", {})
    cap = ledger.get("costCapUsd")
    reserve_usd = ledger.get("verificationReserveUsd")
    reserve_pct = ledger.get("verificationReservePct")
    work = ledger.get("workBudgetUsd")
    if None not in (cap, reserve_usd, reserve_pct):
        expect = cap * reserve_pct / 100.0
        if abs(reserve_usd - expect) > 0.02:
            note_fail("%s: budgetLedger reserve $%.2f does not match %.1f%% of cap $%.2f ($%.2f)"
                      % (rel, reserve_usd, reserve_pct, cap, expect))
    if None not in (cap, reserve_usd, work):
        if abs(work + reserve_usd - cap) > 0.02:
            note_fail("%s: budgetLedger work $%.2f plus reserve $%.2f does not equal cap $%.2f"
                      % (rel, work, reserve_usd, cap))
    limits = data.get("limits", {})
    if cap is not None and limits.get("costCapUsd") is not None:
        if abs(limits["costCapUsd"] - cap) > 0.01:
            note_fail("%s: limits cap $%.2f does not match budgetLedger cap $%.2f"
                      % (rel, limits["costCapUsd"], cap))
    unit_names = {u.get("name") for u in data.get("units", []) if isinstance(u, dict)}
    for entry in data.get("cheapUnits", []):
        if entry.get("unit") not in unit_names:
            note_fail("%s: cheapUnits names unit '%s', which is not in units"
                      % (rel, entry.get("unit")))
    for entry in data.get("routerCallLog", []):
        skill = entry.get("skill")
        trigger = entry.get("trigger", "")
        if skill not in triggers:
            note_fail("%s: routerCallLog names skill '%s', which is not in the registry"
                      % (rel, skill))
        elif triggers[skill].lower() not in trigger.lower():
            note_fail("%s: routerCallLog trigger for '%s' does not match the registry trigger '%s'"
                      % (rel, skill, triggers[skill]))
    if fail == before:
        print("PASS %s: manifest validates" % rel)


def check_router(call_lines_path, handoff_dir, triggers, handoff_fields):
    rel = os.path.relpath(call_lines_path, root)
    try:
        text = open(call_lines_path, encoding="utf-8").read()
    except OSError as exc:
        note_fail("%s: cannot read: %s" % (rel, exc))
        return
    blocks = []
    current = None
    for line in text.splitlines():
        m = re.match(r"^##\s+Call line \d+,\s*(.+?)\s*$", line)
        if m:
            current = {"skill": m.group(1).strip(), "lines": []}
            blocks.append(current)
            continue
        if current is not None:
            current["lines"].append(line)
    if not blocks:
        note_fail("%s: no call line blocks found" % rel)
        return
    try:
        names = sorted(os.listdir(handoff_dir))
    except OSError as exc:
        note_fail("%s: cannot list handoff dir: %s" % (handoff_dir, exc))
        return
    for block in blocks:
        skill = block["skill"]
        body = "\n".join(block["lines"])
        low = body.lower()
        for part in ("what i saw", "trigger fired", "why this skill"):
            if part not in low:
                note_fail("%s: call line for '%s' has no '%s' line" % (rel, skill, part))
        if skill not in triggers:
            note_fail("%s: call line names skill '%s', which is not in the registry" % (rel, skill))
            continue
        trig = re.search(r"trigger fired:\s*(.+)", body, re.IGNORECASE)
        if trig and triggers[skill].lower() not in trig.group(1).lower():
            note_fail("%s: call line trigger for '%s' does not match the registry trigger '%s'"
                      % (rel, skill, triggers[skill]))
        want = slug(skill)
        first = skill.lower().split()[0]
        found = None
        for name in names:
            nl = name.lower()
            if want in nl or first in nl:
                found = os.path.join(handoff_dir, name)
                break
        if found is None:
            note_fail("%s: no handoff file found for '%s' in %s"
                      % (rel, skill, os.path.relpath(handoff_dir, root)))
            continue
        wanted = handoff_fields.get(skill)
        if wanted is None:
            note_fail("%s: router rules list no handoff fields for '%s'" % (rel, skill))
            continue
        handoff_text = open(found, encoding="utf-8").read()
        missing = [f for f in wanted if not label_present(handoff_text, f)]
        if missing:
            note_fail("%s: handoff %s for '%s' is missing field(s): %s"
                      % (rel, os.path.basename(found), skill, ", ".join(missing)))
        else:
            print("PASS %s: call line and handoff for '%s' complete" % (rel, skill))
    if blocks:
        print("checked %d call line(s) in %s" % (len(blocks), rel))


schema_path = os.path.join(root, "skills", "handover", "stage2-manifest-schema.json")
registry_path = os.path.join(root, "skills", "handover", "router", "router-registry.md")
rules_path = os.path.join(root, "skills", "handover", "router", "router-rules-v02.md")

try:
    schema = load_json(schema_path)
    Draft202012Validator.check_schema(schema)
except (ValueError, OSError) as exc:
    note_fail("stage2-manifest-schema.json: %s" % exc)
    schema = None
except jsonschema.exceptions.SchemaError as exc:
    note_fail("stage2-manifest-schema.json is not a valid schema: %s" % exc)
    schema = None

triggers = parse_registry(registry_path)
if not triggers:
    note_fail("router-registry.md: no skill triggers parsed")
handoff_fields = parse_handoff_fields(rules_path)
if not handoff_fields:
    note_fail("router-rules-v02.md: no handoff field lists parsed")

manifests = []
call_lines = None
handoff_dir = None
i = 0
while i < len(args):
    if args[i] == "--manifest":
        i += 1
        while i < len(args) and not args[i].startswith("--"):
            manifests.append(args[i])
            i += 1
    elif args[i] == "--router-call-lines":
        i += 1
        if i < len(args):
            call_lines = args[i]
            i += 1
    elif args[i] == "--handoff-dir":
        i += 1
        if i < len(args):
            handoff_dir = args[i]
            i += 1
    else:
        note_fail("unknown argument: %s" % args[i])
        i += 1

if not manifests and call_lines is None:
    examples = os.path.join(root, "skills", "handover", "examples")
    manifests = [
        os.path.join(examples, "stage2-manifest-router-wire-2026-11-15.json"),
        os.path.join(root, "skills", "handover", "units-template.json"),
    ]
    call_lines = os.path.join(examples, "router-call-lines-router-wire-2026-11-15.md")
    handoff_dir = os.path.join(examples, "handoffs")

if schema is not None:
    for path in manifests:
        if os.path.isfile(path):
            check_manifest(path, schema, triggers)
        else:
            note_fail("manifest file not found: %s" % path)
    # The handover schema carries a compact stage2Manifest def. The good
    # example must validate against that compact form too.
    handover_schema_path = os.path.join(root, "skills", "handover", "handover-schema.json")
    try:
        handover_schema = load_json(handover_schema_path)
        Draft202012Validator.check_schema(handover_schema)
        example = load_json(os.path.join(root, "skills", "handover", "examples",
                                         "stage2-manifest-router-wire-2026-11-15.json"))
        errs = list(Draft202012Validator(handover_schema).iter_errors({"stage2Manifest": example}))
        if errs:
            for err in errs:
                note_fail("handover-schema.json compact stage2Manifest: %s" % err.message)
        else:
            print("PASS handover-schema.json: example validates against the compact stage2Manifest def")
    except (ValueError, OSError) as exc:
        note_fail("handover-schema.json: %s" % exc)
    except jsonschema.exceptions.SchemaError as exc:
        note_fail("handover-schema.json is not a valid schema: %s" % exc)

if call_lines is not None:
    if handoff_dir is None:
        note_fail("--router-call-lines needs --handoff-dir")
    else:
        check_router(call_lines, handoff_dir, triggers, handoff_fields)

if fail == 0:
    print("handover check: pass")
    sys.exit(0)
print("handover check: fail")
sys.exit(1)
PY
