# structural-humanizer

An agent skill that makes AI-assisted writing **less templated at the structural level**, not just the word level.

## Why

Recent research on company blog posts found AI-written articles can be detected more than 98% of the time from structure alone (176 features covering how ideas are introduced, explained, evidenced, and concluded), even when wording is changed. Five different AI models landed in the same structural cluster, while human articles were far more varied.

Common AI structural habits:

- State the thesis immediately, announce what's coming, then recap at the end
- Lean on dichotomies and "battle" frames (old vs. modern, online vs. retail)
- Uniform sections, matched bullet lengths, groups of three
- Vague evidence instead of specific dates, places, and people

Rewording a few paragraphs doesn't change that skeleton. This skill makes the agent **choose a non-default structure up front, write against the tells, and audit the shape of the result**.

## What it does

- Picks a deliberate, non-default article shape before drafting
- Removes roadmap intros and recap endings
- Breaks section symmetry and stock dichotomies
- Demands real specifics, and **never fabricates them**: it leaves `[ADD: ...]` placeholders instead
- Runs an 8-point structural audit and fixes failures by restructuring
- Can rewrite existing drafts: diagnose, re-plan structure, then edit

It does not promise "undetectable" output, add typos, or disguise text with odd vocabulary.

## Install

The skill is a single folder: `skills/structural-humanizer/SKILL.md`. It follows the open Agent Skills layout (folder with `SKILL.md` and YAML frontmatter), so the same file works across agents. Only the install location differs.

First clone:

```bash
git clone https://github.com/YOUR_USERNAME/structural-humanizer.git
cd structural-humanizer
```

### Claude Code

Personal (all projects):

```bash
mkdir -p ~/.claude/skills
cp -r skills/structural-humanizer ~/.claude/skills/
```

Project only:

```bash
mkdir -p .claude/skills
cp -r skills/structural-humanizer .claude/skills/
```

Restart Claude Code. It triggers automatically on writing/editing requests, or call it explicitly.

### Codex CLI

```bash
mkdir -p ~/.codex/skills
cp -r skills/structural-humanizer ~/.codex/skills/
```

Or per repo: `.codex/skills/`. If your Codex version doesn't load skills, paste the body of `SKILL.md` into your `AGENTS.md` instead.

### Pi coding agent

```bash
mkdir -p ~/.pi/agent/skills
cp -r skills/structural-humanizer ~/.pi/agent/skills/
```

Or per project: `.pi/skills/`. If your Pi version uses a different path, check its skills docs, or reference the file from `AGENTS.md`.

> Skill directory locations change between tool versions. If a path above doesn't work, check your agent's current skills documentation. The `SKILL.md` itself needs no changes.

### Any other agent (fallback)

Copy the contents of `SKILL.md` (below the frontmatter) into your `AGENTS.md`, `CLAUDE.md`, or system prompt.

## Usage

Just ask for writing:

```text
Write a blog post about our migration from Heroku to Fly.io.
```

```text
Rewrite draft.md. It sounds like ChatGPT.
```

```text
Humanize this article. Fix the structure, not just the wording.
```

For best results, give it real material: an anecdote, a date, a named person or place, a number from real experience. If you don't, it will flag where those are needed.

## Customize

Edit `SKILL.md`: add your brand voice, banned phrases, or preferred article shapes to the "Pick a non-default shape" section.

## License

MIT
