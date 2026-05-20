# skill-router reference

## Purpose

`skill-router` is a meta-skill for environments where routing decisions matter as much as execution quality.

It helps agents choose the right path when there are multiple plausible options: specialist skills, tool-specific skills, runtime-specific paths, delegated execution, or documented fallback flows.

## Routing order

Use this order by default:

1. exact domain skill
2. exact tool-specific skill
3. exact runtime-specific path
4. generic workflow skill
5. clarification

If two paths look valid, choose the one that is:
- more specific
- less lossy
- closer to the user’s requested execution model

## Trigger conditions

Use this skill when any of these are true:

- the request could map to multiple skills
- the user uses shorthand that implies a path choice
- the agent must choose between local work and delegated work
- the agent must choose between persistent and one-shot runtime behavior
- fallback behavior could materially affect outcomes

## Clarification rule

Ask one focused question only when the answer changes execution in a meaningful way.

Good examples:
- "Do you want this as a one-shot run or a persistent session?"
- "Should I publish this to GitHub, deploy it, or draft release assets only?"

Bad examples:
- asking for reassurance when the correct path is already obvious
- asking broad planning questions that stall execution

## Fallback discipline

When the preferred path fails:

1. say what failed
2. keep the fallback semantically close
3. avoid unrelated tooling pivots
4. preserve the requested outcome
5. say when the fallback changes capabilities

Bad fallback:
- preferred path = managed coding runtime
- fallback = ad hoc shell hacking with different behavior and no continuity

Good fallback:
- preferred path = managed coding runtime
- fallback = documented direct CLI path for the same harness

## Common routing patterns

### Specialist skill vs generic skill

If a specialist exists and clearly matches, prefer it even if the generic path could technically do the task.

### Direct execution vs delegation

Delegate when the task benefits from a separate runtime, longer execution, or tool-specific context. Execute directly when the task is simple, local, and unambiguous.

### One-shot vs persistent runtime

Use persistent sessions for iterative work, ongoing conversations, or repo-bound execution. Use one-shot runs for isolated prompts and disposable tasks.

## Packaging guidance

For public skill repos:

- keep `SKILL.md` under tight control
- split detailed policy into `REFERENCE.md`
- include realistic examples
- include helper scripts only when they reduce ambiguity or setup pain
- make install/adoption friction low

## Maintenance guidance

When updating:

- add examples for every meaningful new routing branch
- keep the description trigger-focused
- avoid turning the skill into a generic methodology essay
- keep fallback rules explicit
- update changelog entries with actual behavior changes, not vague summaries
