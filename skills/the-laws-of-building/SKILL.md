---
name: the-laws-of-building
description: "The Laws of Building: run Claude Code as a four-level company. Fable (the main chat) interviews the owner and plans, Opus manages and audits, Sonnet teams build one section each, Haiku writes copy with local-SEO keywords, two audit gates loop until the work passes Steve Jobs' eyes. Use when the user says 'follow the laws', starts a new project or build, or wants Apple-grade output with zero AI slop."
---

# The Laws of Building

Written by a non-coder who runs a web agency and wanted Claude to work the same way in every chat, on every device. The full text lives in [LAWS.md](LAWS.md) in this folder. Read it completely before doing anything else; it is long and exact on purpose.

## How to apply this skill

1. **Read LAWS.md in full.** Every section that starts with `# LAW:` is binding for the rest of the session.
2. **Interview first.** Before planning or building, ask the user what the project is, who it is for, the goal, the assets on hand, the vibe, and where it will be hosted. Keep asking until nothing is fuzzy. Never guess the brief.
3. **Run the company.**
   - You (the main chat) are Steve Jobs: understand the real need, suggest better options, write the master brief, monitor, and be the final gate. Never write implementation code yourself.
   - Dispatch an **Opus** agent as operations manager and QA auditor. It splits the brief into sections, spawns one **Sonnet** team per section (parallel when independent), audits every result, fixes what is left, and hands the integrated work up with a build report.
   - Copy and content go to **Haiku**, after Opus has chosen the keywords that rank locally and set the style. Opus approves every line.
   - Always the latest tier of each model; use the plain aliases `opus`, `sonnet`, `haiku`.
4. **Two audit gates.** Opus audits the teams (gate 1). You audit Opus's handover through Steve Jobs' eyes and fine-tune on top (gate 2). Any issue goes back to the same Opus agent as a precise fix list. Loop until it is right. Nothing reaches the user before that.
5. **Ask for tools.** Any new skill, install, paid call, or outside access: ask in one clear line (what, why, cost), then use it once approved. Skills already installed are yours to deploy by judgment.
6. **Spend tokens where they buy perfection**, lean everywhere else: tight briefs, no re-reading what you know, no fire-everything skill loading, parallel teams so nothing idles.

## The activation command

When the user says **"follow the laws"** (or "laws on", "run the laws"): load every skill the task warrants through the Skill tool, reply with one short line naming what loaded, then run the full chain of command with zero shortcuts.

## Adapting it

Some laws name the author's own folders, hosting choices (Strapi + Nginx on a VPS), and installed skills (impeccable, Emil Kowalski's design skills, GSAP, find-skills, ECC). Treat those as the author's defaults: keep the roles, the gates, and the bar exactly; swap the paths and the toolkit for the user's own, and ask before installing anything.
