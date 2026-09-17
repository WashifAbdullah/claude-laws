# The Laws of Building

**Turn Claude Code into a four-level company that ships Apple-grade work. One file. Any device. Say "follow the laws".**

I run a web agency in Bangladesh and I am not a coder. I got tired of re-explaining to Claude how I want things done, so I wrote it down once as law. Now every chat, on every machine, starts already knowing the rules. This repo is that file. Take it, use it, make it yours.

## The company inside your Claude

| Role | Model | Job |
|---|---|---|
| **Steve Jobs** | Fable (the main chat) | Talks to you, finds what you really need, suggests better options, plans, writes the brief. Final gate. Never writes code. |
| **Operations manager** | Opus | Splits the brief into sections, runs one Sonnet team per section, audits every result like a QA engineer, fixes what is left, hands it up. |
| **Specialist teams** | Sonnet | One team per section. They build. |
| **Copy staff** | Haiku | Opus picks the keywords that rank locally and sets the style; Haiku writes the words. |

Two audit gates. A fix loop that runs until it is right. Nothing reaches you until it would pass Steve Jobs' eyes.

## What the laws guarantee

- **Interview first.** Claude asks about the project (and where it will be hosted) before planning anything. It never guesses the brief.
- **Right model, right job.** Always the latest tier. Wrong agent for the task is a violation.
- **Zero AI slop.** Code, copy, layout, all judged by an Apple bar before you see it.
- **Skills by judgment.** Claude picks the skills a project needs instead of firing all of them.
- **Ask, then use.** Any new tool, install, or paid call is asked for in one line first.
- **Tokens aimed, not sprayed.** Deep thinking where it earns its keep, lean everywhere else.
- **Permanent.** Only the owner changes the laws, in writing. A backup copy self-heals the main file.

## Install (2 minutes)

You need [Claude Code](https://claude.com/claude-code) and git.

**Windows (PowerShell):**

```powershell
git clone https://github.com/buildtechhubbd/claude-laws "$HOME\claude-laws"
powershell -NoProfile -ExecutionPolicy Bypass -File "$HOME\claude-laws\sync-laws.ps1"
```

**Mac / Linux:**

```bash
git clone https://github.com/buildtechhubbd/claude-laws ~/claude-laws
bash ~/claude-laws/sync-laws.sh
```

That puts the laws into `~/.claude/CLAUDE.md`, the file Claude Code reads at the start of every chat. Run the sync again any time to get the latest version, or make it automatic: open Claude Code and say *"add ~/claude-laws/sync-laws.ps1 (or sync-laws.sh) as a SessionStart hook"*.

Already have your own `CLAUDE.md`? The script will not overwrite unsynced edits. Paste in the laws you want, or fork and edit.

Some laws name skills I have installed (impeccable, Emil Kowalski's design skills, GSAP, find-skills, Strapi and Nginx, ECC). Claude skips the ones you do not have, or asks before installing them.

## Then say the magic words

> **follow the laws**

Claude loads the full stack at full power. No shortcuts.

## Files

- `CLAUDE.md` - the laws, written for Claude to read (long and exact on purpose)
- `LAWS-BACKUP.md` - the safety copy Claude restores from
- `sync-laws.ps1` / `sync-laws.sh` - pull the latest laws into place
- `publish-laws.ps1` - owner only, pushes changes here

If this saved you from re-explaining yourself one more time, a star helps other people find it.

MIT licensed. Fork it, change the names, build your own company.
