#!/usr/bin/env bash
# Pulls the latest laws and installs them into ~/.claude/CLAUDE.md.
# Safe: never overwrites a CLAUDE.md that has local edits which were not synced yet.
set -u
repo="$(cd "$(dirname "$0")" && pwd)"
target="$HOME/.claude/CLAUDE.md"
backup="$HOME/.claude/LAWS-BACKUP.md"
stamp="$HOME/.claude/.laws-applied-sha"
mkdir -p "$HOME/.claude"

git -C "$repo" pull -q --ff-only 2>/dev/null || echo "laws: offline, using the local copy"

sha() { if [ -f "$1" ]; then (sha256sum "$1" 2>/dev/null || shasum -a 256 "$1") | awk '{print $1}'; else echo ""; fi; }

repo_sha="$(sha "$repo/CLAUDE.md")"
local_sha="$(sha "$target")"
applied_sha="$( [ -f "$stamp" ] && cat "$stamp" || echo "" )"

if [ "$repo_sha" = "$local_sha" ]; then
  printf '%s' "$repo_sha" > "$stamp"; echo "laws: up to date"; exit 0
fi
if [ -n "$local_sha" ] && [ "$local_sha" != "$applied_sha" ]; then
  echo "laws: ~/.claude/CLAUDE.md has local edits that were never synced. Not overwriting. Publish them or merge by hand."; exit 0
fi
cp "$repo/CLAUDE.md" "$target"
cp "$repo/LAWS-BACKUP.md" "$backup"
printf '%s' "$repo_sha" > "$stamp"
echo "laws: updated ~/.claude/CLAUDE.md to the latest version"
