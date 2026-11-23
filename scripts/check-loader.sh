#!/bin/sh
# Loader check for every SKILL.md in skills/.
# Run from anywhere: sh scripts/check-loader.sh
# Exit 0 when all checks pass, exit 1 otherwise.
# This is a static check. It proves the files follow the Agent Skills
# spec and the repo's own section rules. It does not prove a real load
# through the Muse, Codex, or Claude Code loader. No loader command
# for those tools exists in this environment, so a real load stays open.
# Checks per file:
#   frontmatter parses as YAML, and holds only spec fields
#   (name, description, license, compatibility, metadata, allowed-tools)
#   name is 1 to 64 chars, lowercase letters, digits, hyphens only,
#   no leading, trailing, or double hyphen, no XML tag, no reserved
#   word anthropic or claude, and matches the skill folder name
#   description is present, 1 to 1024 chars, no XML tag
#   required sections are present (see REQUIRED below)
#   body is under 500 lines, per the spec recommendation
#   skill.yaml next to SKILL.md, when present, has the same name
# Usage: sh scripts/check-loader.sh
# Source for the name rules: https://agentskills.io/specification

set -u
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
exec python3 - "$ROOT" <<'PY'
import os
import re
import sys

try:
    import yaml
except ImportError:
    print("FAIL: python3 yaml module is missing, install pyyaml to run this check")
    sys.exit(1)

root = sys.argv[1]
SPEC_FIELDS = {"name", "description", "license", "compatibility", "metadata", "allowed-tools"}
NAME_RE = re.compile(r"^[a-z0-9]+(-[a-z0-9]+)*$")
RESERVED = ("anthropic", "claude")

# Sections every Discovery skill must have. handover is the
# orchestrator skill, not an engine, so it has its own section list.
REQUIRED = [
    "What this skill does",
    "Steps in order",
    "Stop rule",
    "Commands",
]
HANDOVER_REQUIRED = [
    "Hard rules",
    "Step 1. Translate intent",
    "Step 2. Approval package, two stages",
    "Step 3. Execute, narrow supervised",
    "Step 4. Verify, before any claim of done",
    "Step 5. Field kit generator, inspect, generate, prove, maintain",
    "Loop",
    "Graph",
]

fail = 0
checked = 0
files = sorted(
    os.path.join(root, "skills", d, "SKILL.md")
    for d in os.listdir(os.path.join(root, "skills"))
    if os.path.isfile(os.path.join(root, "skills", d, "SKILL.md"))
)

for path in files:
    rel = os.path.relpath(path, root)
    folder = os.path.basename(os.path.dirname(path))
    checked += 1
    problems = []
    text = open(path, encoding="utf-8").read()
    lines = text.splitlines()

    if not lines or lines[0] != "---":
        print("FAIL %s: no frontmatter block at the top" % rel)
        fail += 1
        continue
    try:
        close = lines.index("---", 1)
    except ValueError:
        print("FAIL %s: frontmatter block never closes" % rel)
        fail += 1
        continue

    try:
        front = yaml.safe_load("\n".join(lines[1:close]))
    except yaml.YAMLError as exc:
        print("FAIL %s: frontmatter does not parse as YAML: %s" % (rel, exc))
        fail += 1
        continue
    if not isinstance(front, dict):
        print("FAIL %s: frontmatter is not a YAML mapping" % rel)
        fail += 1
        continue

    unknown = sorted(set(front) - SPEC_FIELDS)
    if unknown:
        problems.append("frontmatter holds non-spec field(s): %s" % ", ".join(unknown))

    name = front.get("name")
    if not isinstance(name, str) or not name:
        problems.append("frontmatter has no name")
    else:
        if not 1 <= len(name) <= 64:
            problems.append("name '%s' is not 1 to 64 characters" % name)
        if not NAME_RE.match(name):
            problems.append("name '%s' must be lowercase letters, digits, and single hyphens only" % name)
        if "<" in name or ">" in name:
            problems.append("name '%s' holds an XML tag" % name)
        if any(word in name for word in RESERVED):
            problems.append("name '%s' holds a reserved word" % name)
        if name != folder:
            problems.append("name '%s' does not match folder '%s'" % (name, folder))

    desc = front.get("description")
    if not isinstance(desc, str) or not desc.strip():
        problems.append("frontmatter has no description")
    else:
        if not 1 <= len(desc) <= 1024:
            problems.append("description is %d characters, must be 1 to 1024" % len(desc))
        if "<" in desc or ">" in desc:
            problems.append("description holds an XML tag")

    if len(lines) > 500:
        problems.append("body is %d lines, spec recommends under 500" % len(lines))

    headings = set()
    for line in lines[close + 1:]:
        m = re.match(r"^##\s+(.+?)\s*$", line)
        if m:
            headings.add(m.group(1))
    required = HANDOVER_REQUIRED if folder == "handover" else REQUIRED
    for section in required:
        if section not in headings:
            problems.append("missing required section: ## %s" % section)

    yaml_path = os.path.join(os.path.dirname(path), "skill.yaml")
    if os.path.isfile(yaml_path):
        try:
            ydata = yaml.safe_load(open(yaml_path, encoding="utf-8").read())
        except yaml.YAMLError as exc:
            problems.append("skill.yaml does not parse as YAML: %s" % exc)
            ydata = None
        if isinstance(ydata, dict):
            yname = ydata.get("name")
            if isinstance(yname, str) and isinstance(name, str) and yname != name:
                problems.append("skill.yaml name '%s' does not match frontmatter name '%s'" % (yname, name))

    if problems:
        fail += 1
        for problem in problems:
            print("FAIL %s: %s" % (rel, problem))
    else:
        print("PASS %s" % rel)

print("checked %d SKILL.md files" % checked)
if fail == 0 and checked > 0:
    print("loader check: pass")
    sys.exit(0)
print("loader check: fail")
sys.exit(1)
PY
