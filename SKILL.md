---
name: structural-humanizer
description: Write or rewrite articles, blog posts, essays, newsletters, and docs so they don't have the recognizable structural "shape" of AI-generated text, not just different wording. Use this skill whenever the user asks to write, draft, edit, polish, "humanize", or "de-AI" any long-form prose, or says something sounds generic, waffly, templated, or "like ChatGPT", or wants content that passes AI detection. Also use it when drafting any article-length content, even if the user never mentions AI. Swapping words or rewording a few paragraphs is NOT enough; this skill restructures.
---

# Structural Humanizer

Research on company blog posts found that AI-written articles can be told apart from human ones more than 98% of the time by **structure alone**, across 176 features (how ideas are introduced, how points are explained, how evidence is used, how pieces end). Five different AI models clustered into one tight structural shape. Human writing was far more varied.

So the fix is not synonyms. Rewording sentences leaves the skeleton intact. This skill works at the level of **structure, decisions, and content**.

## Core principle

AI makes the same writing decisions every time. Your job is to make *different, article-specific decisions* instead of defaults. Before writing, decide the shape on purpose. After writing, audit the shape.

## Hard rule: never fabricate specifics

Humans use real dates, places, and people. That is the point, but **do not invent them**. Fake specifics are worse than generic ones.

- Use specifics the user supplied, files in the repo, or facts you can verify (search if available).
- If a section needs a concrete anchor and you don't have one, insert a visible placeholder like `[ADD: year/place/person from your own experience]` and tell the user.
- Ask the user for 2-3 real anecdotes, numbers, or names up front when drafting from scratch.

## Workflow

### 1. Gather raw material (drafting from scratch)
Ask for or find: a real story, a specific date or event, a named person or place, a number from actual experience, and one opinion the author actually holds. If none exist, say so and flag where they're needed.

### 2. Pick a non-default shape *before* writing
Do not use the default. Choose one deliberately and write it down in one line:

- Start in the middle of a specific scene or incident, explain later
- Start with the odd detail or counterexample, then widen out
- Chronological story with the argument emerging late
- Problem, failed attempt, second failed attempt, what finally worked
- Q&A or objection-driven (each section answers a real objection)
- One long argument with no sub-headings
- Uneven sections: one deep, others brief

Vary section lengths. Let the piece be lopsided where the material is lopsided.

### 3. Write against the tells (below)

### 4. Run the structural audit (below), then fix by restructuring, not rewording

## The tells to avoid

**Opening and closing (the "tell them, tell them, tell them" pattern)**
- Don't state the thesis in sentence one, then announce what the article will cover ("In this post we'll explore...").
- Don't end with a recap of what you just said, or a tidy "In conclusion / Ultimately / The takeaway".
- End when the content ends. Acceptable endings: a final concrete detail, an open question you can't answer, a next action, or just stopping.

**Framing**
- Avoid the stock dichotomy or "battle" frame: old vs. new, traditional vs. modern, online vs. in-store, then vs. now. Use it only if the topic is genuinely a two-sided conflict.
- Avoid "not just X, but Y" and "it's not about X, it's about Y" constructions as organizing devices.

**Rhythm and symmetry**
- Avoid uniform sections: same length, same internal pattern (claim, explanation, example, mini-summary) repeated down the page.
- Avoid always listing three items, matched bullet lengths, and every heading in parallel grammar.
- Avoid a heading above every two paragraphs. Many human articles have few or none.

**Evidence**
- Avoid vague authority ("studies show", "experts agree", "many businesses find").
- Avoid generic examples that could appear in any article on the topic.
- Prefer one specific, checkable example over three generic ones.

**Idea handling**
- Don't introduce every idea with a setup sentence and close it with a lesson sentence.
- Allow digressions, tangents that earn their place, unresolved tension, and opinions stated without hedging.
- Not every point needs equal weight. Cut the weakest one instead of padding the list.

## Structural audit (run on every draft)

Check each, and restructure if it fails:

1. **Opening:** Does paragraph one announce the thesis plus a roadmap? If yes, rewrite the opening so it starts with material, not meta-description.
2. **Ending:** Does the last paragraph restate earlier points? If yes, delete it, or replace it with something new.
3. **Symmetry:** Are 3+ sections nearly the same length or built the same way? Merge, cut, or expand one so they differ.
4. **Dichotomy:** Is the whole piece built on an X-vs-Y frame? Reframe or drop it.
5. **Anchors:** Does the piece contain real dates, places, and named people where relevant? If not, add verified ones or flag placeholders.
6. **Roadmap language:** Search for "we'll explore", "let's dive in", "in this article", "in conclusion", "to summarize". Remove them.
7. **Repetition:** Is any point made in the intro, body, and conclusion? Say it once, where it matters most.
8. **Specificity:** Could any paragraph be pasted into a different article on a similar topic unchanged? If yes, replace it with something only this author could say.

## Rewriting existing text

When given a draft to "humanize":

1. Diagnose first: list which tells from above appear and where. Keep it short.
2. Re-plan the structure (pick a shape from step 2). Move, merge, delete, and reorder sections. Do not just edit sentence by sentence.
3. Cut the roadmap intro and recap ending.
4. Replace generic evidence with specifics the user provides, or flag `[ADD: ...]` placeholders.
5. Preserve the author's facts, claims, and intent. Don't add new claims.
6. Re-run the audit on the result.

## Output format

- Deliver the finished text first.
- Then, in at most 5 lines, report: the structure you chose, what you removed or restructured, and any `[ADD: ...]` placeholders the user must fill.
- Do not describe the piece as "undetectable". No process can guarantee that, and the goal is writing that reads as less templated and more specific.

## Anti-goals

- Don't introduce typos or deliberate errors to look human.
- Don't invent anecdotes, quotes, dates, or people.
- Don't swap in rare or odd vocabulary as a disguise. Plain words are fine; structure is what changes.
