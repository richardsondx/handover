#!/bin/sh
# fleet-worktree.sh: prove a Fleet PR branch passes the repo checks in a clean checkout.
#
# What it does:
#   It builds a throwaway git worktree for a new branch, runs the three
#   repo check scripts inside that worktree, then removes the worktree.
#   It leaves no worktree behind, whether the checks pass or fail.
#
# Arguments:
#   1. branch: name of the new branch to create in the worktree.
#   2. base: commit or ref the new branch starts from, such as fleet/worktrees.
#   3. worktree-root (optional): folder that holds the worktree.
#      Default is /tmp/handover-fleet-worktrees.
#
# Usage:
#   sh scripts/fleet-worktree.sh test/my-branch fleet/worktrees
#   sh scripts/fleet-worktree.sh test/my-branch abc1234 /tmp/my-worktrees
#
# Exit codes:
#   0: the worktree was built, all three checks passed, and the worktree is gone.
#   1: the worktree could not be built, or a check failed. The worktree is gone.
#   2: the arguments are wrong, or the branch name is not valid.
#
# Failure behavior:
#   The script prints a clear FAIL line that names the cause.
#   It removes the worktree it built, even when a check fails.
#   It never deletes a worktree folder it did not build.
#   It never touches the main checkout except to read its git state.

set -u

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
DEFAULT_ROOT="/tmp/handover-fleet-worktrees"

usage() {
  echo "Usage: sh scripts/fleet-worktree.sh <branch> <base> [worktree-root]" >&2
  echo "  branch: name of the new branch to create in the worktree" >&2
  echo "  base: commit or ref the new branch starts from" >&2
  echo "  worktree-root: folder that holds the worktree (default /tmp/handover-fleet-worktrees)" >&2
}

if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
  echo "FAIL: fleet-worktree needs a branch name and a base commit" >&2
  usage
  exit 2
fi

BRANCH=$1
BASE=$2
if [ "$#" -eq 3 ]; then
  WT_ROOT=$3
else
  WT_ROOT=$DEFAULT_ROOT
fi

if ! git check-ref-format --branch "$BRANCH" >/dev/null 2>&1; then
  echo "FAIL: branch name '$BRANCH' is not a valid git branch name" >&2
  exit 2
fi

if git -C "$REPO_ROOT" show-ref --verify --quiet "refs/heads/$BRANCH"; then
  echo "FAIL: branch '$BRANCH' already exists, pick a new branch name" >&2
  exit 1
fi

if ! git -C "$REPO_ROOT" rev-parse --verify --quiet "$BASE^{commit}" >/dev/null; then
  echo "FAIL: base '$BASE' does not resolve to a commit in this repo" >&2
  exit 1
fi

SAFE=$(printf '%s' "$BRANCH" | tr '/' '_')
WT_PATH="$WT_ROOT/$SAFE"

if [ -e "$WT_PATH" ]; then
  echo "FAIL: worktree path '$WT_PATH' already exists, remove it or pick another branch name" >&2
  exit 1
fi

ATTEMPTED=0

cleanup() {
  if [ "$ATTEMPTED" = 1 ] && [ -e "$WT_PATH" ]; then
    if ! git -C "$REPO_ROOT" worktree remove --force "$WT_PATH" 2>/dev/null; then
      rm -rf "$WT_PATH"
    fi
    git -C "$REPO_ROOT" worktree prune 2>/dev/null || true
  fi
}
trap cleanup EXIT

mkdir -p "$WT_ROOT" || {
  echo "FAIL: cannot create worktree root '$WT_ROOT'" >&2
  exit 1
}

ATTEMPTED=1
if ! git -C "$REPO_ROOT" worktree add "$WT_PATH" -b "$BRANCH" "$BASE"; then
  echo "FAIL: cannot create worktree for branch '$BRANCH' from base '$BASE'" >&2
  exit 1
fi

echo "worktree ready: $WT_PATH on branch $BRANCH from $BASE"

STATUS=0
for check in check-frontmatter.sh check-loader.sh check-handover.sh; do
  echo "--- running scripts/$check in the worktree ---"
  if (cd "$WT_PATH" && sh "scripts/$check"); then
    echo "PASS: $check passed in the worktree"
  else
    echo "FAIL: $check failed in the worktree for branch '$BRANCH'"
    STATUS=1
  fi
done

if [ "$STATUS" -eq 0 ]; then
  echo "fleet worktree check: pass for branch '$BRANCH', worktree removed"
  exit 0
fi
echo "FAIL: one or more checks failed in the worktree for branch '$BRANCH'" >&2
exit 1
