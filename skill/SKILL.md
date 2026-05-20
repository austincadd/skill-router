---
name: skill-router
description: Route broad or ambiguous user requests into the correct skill, tool, runtime, or delegation path. Use when multiple execution paths could fit and the agent needs explicit routing, clarification, and fallback rules instead of guessing.
---

# Skill Router

## Quick start

Use this skill when the request is real but the path is unclear.

Typical cases:
- a request could fit more than one installed skill
- the agent must choose between direct execution and delegation
- a user asks for something broad like "publish this" or "run this in Codex"
- fallback behavior matters because the preferred path may be unavailable

## Core rule

Route by **actual task semantics**, not by surface wording alone.

## Routing workflow

1. Identify the real outcome the user wants.
2. Check whether a more specific skill already fits.
3. Prefer the narrowest correct path.
4. Ask one clarifying question only if the answer materially changes execution.
5. If the preferred path is unavailable, use the nearest documented fallback.

## Use this skill when

- multiple skills overlap
- multiple runtimes exist
- there is a risk of misrouting
- the agent needs a stable fallback policy

## Do not use this skill when

- a single obvious specialist skill already applies
- the request is purely conversational
- no meaningful routing choice exists

## Do

- prefer specialist paths over generic ones
- keep clarifying questions minimal
- make routing failures explicit
- preserve user intent when falling back

## Don’t

- guess when one question would resolve ambiguity
- route everything through one favorite path
- use fallback behavior that changes the nature of the task
- bury routing policy in long prose

## More

- See [REFERENCE.md](./REFERENCE.md) for policy and maintenance guidance.
- See [EXAMPLES.md](./EXAMPLES.md) for concrete request-routing examples.
