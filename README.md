# The Laws of Building

This is how my Claude runs every project. I am not a coder. I run a web agency, and I wanted one set of rules that Claude follows in every chat, on every device, without me repeating myself.

Think of it as a small company:

- **Fable is Steve Jobs.** The one I talk to. Fable asks me what I really need, plans the work, suggests better options, and is the final gate. Fable never writes code.
- **Opus is the operations manager.** Takes Fable's brief, splits it into sections, and runs a Sonnet team on each. Then audits every team's work like a QA engineer, fixes what is left, and hands it up.
- **Sonnet is the specialist team.** One team per section. They build.
- **Haiku is the copy staff.** Opus picks the keywords that rank locally, sets the style, and Haiku writes the words.

Nothing reaches me until it would pass Steve Jobs' eyes. Zero AI slop. Every tool Claude needs, it asks for first. Tokens go where they buy perfection and nowhere else.

The full text is in [CLAUDE.md](CLAUDE.md). It is written for Claude to read, so it is long and exact. `LAWS-BACKUP.md` is the safety copy.

## Use these laws in your own Claude Code

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

That copies the laws into `~/.claude/CLAUDE.md`, the file Claude Code reads at the start of every chat. Run the same sync command again any time to pull the latest version.

To make it automatic, add the sync command as a `SessionStart` hook in `~/.claude/settings.json`. Claude Code can do this for you: open a chat and say *"add ~/claude-laws/sync-laws.ps1 (or .sh) as a SessionStart hook"*.

If you already have your own `~/.claude/CLAUDE.md`, the sync script will not overwrite it while it has unsynced edits. Merge by hand, or paste the laws you want into your own file.

Some laws mention skills I have installed (impeccable, Emil Kowalski's design skills, GSAP, find-skills, Strapi and Nginx skills, ECC). Claude will simply skip the ones you do not have, or ask before installing them.

## Say the magic words

In any chat: **"follow the laws"**. Claude loads the full stack at full power, no shortcuts.

## Change the laws

Only I change these laws, in writing. Fork the repo and edit `CLAUDE.md` if you want your own version.
