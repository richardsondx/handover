#!/bin/sh
# Check YAML frontmatter on every SKILL.md in skills/.
# Run from the repo root: sh scripts/check-frontmatter.sh
# Exit 0 when all checks pass, exit 1 otherwise.
# Checks per file: frontmatter block present, name present, name has no
# underscore, name matches the skill folder name, description present.
# If a skill.yaml sits next to SKILL.md, its name must match the frontmatter.

set -u
fail=0
checked=0

for f in skills/*/SKILL.md; do
  dir=$(dirname "$f")
  folder=$(basename "$dir")
  checked=$((checked + 1))

  first=$(sed -n '1p' "$f")
  if [ "$first" != "---" ]; then
    echo "FAIL $f: no frontmatter block at the top"
    fail=1
    continue
  fi

  close=$(awk 'NR>1 && $0=="---" {print NR; exit}' "$f")
  if [ -z "$close" ]; then
    echo "FAIL $f: frontmatter block never closes"
    fail=1
    continue
  fi

  front=$(sed -n "2,$((close - 1))p" "$f")
  name=$(printf '%s\n' "$front" | sed -n 's/^name: *//p' | tr -d '"'"'" | tr -d ' ' | head -n 1)
  desc=$(printf '%s\n' "$front" | sed -n 's/^description: *//p' | head -n 1)

  if [ -z "$name" ]; then
    echo "FAIL $f: frontmatter has no name"
    fail=1
  elif [ "$name" != "${name#*_}" ]; then
    echo "FAIL $f: name '$name' holds an underscore, use a hyphen name"
    fail=1
  elif [ "$name" != "$folder" ]; then
    echo "FAIL $f: name '$name' does not match folder '$folder'"
    fail=1
  fi

  if [ -z "$desc" ]; then
    echo "FAIL $f: frontmatter has no description"
    fail=1
  fi

  if [ -f "$dir/skill.yaml" ]; then
    yname=$(sed -n 's/^name: *//p' "$dir/skill.yaml" | tr -d '"'"'" | tr -d ' ' | head -n 1)
    if [ -n "$yname" ] && [ -n "$name" ] && [ "$yname" != "$name" ]; then
      echo "FAIL $f: skill.yaml name '$yname' does not match frontmatter name '$name'"
      fail=1
    fi
  fi
done

echo "checked $checked SKILL.md files"
if [ "$fail" -eq 0 ]; then
  echo "frontmatter check: pass"
  exit 0
else
  echo "frontmatter check: fail"
  exit 1
fi
