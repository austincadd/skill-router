---
name: skill-router
description: Route plain-language user requests into the correct skill, runtime, tool, or workflow path. Use when a request could fit multiple execution paths and the agent needs explicit routing rules, trigger phrases, handoff criteria, or fallback behavior.
---

# Skill Router

## Quick start

Use this skill when a user asks for something that could be handled in more than one way and the agent needs to choose the right path deliberately.

Examples:
- route a coding request to a coding agent
- route a GitHub request to GitHub tooling
- route a weather request to a weather skill
- route a vague request to clarification instead of premature execution

## What this skill does

- identifies routing intent
- matches the request to the correct execution path
- defines when to ask a clarifying question
- defines when not to use a path
- documents fallback behavior when the preferred path is unavailable

## Routing workflow

1. Identify the user’s actual intent.
2. Check whether a more specific skill already exists.
3. Prefer the narrowest correct path over a generic one.
4. If the action is ambiguous and materially changes execution, ask one focused question.
5. If the preferred path is unavailable, use the documented fallback instead of inventing one.

## Do

- route by task type, not by superficial keywords alone
- prefer the most specific applicable skill
- keep fallback behavior explicit
- document boundary cases

## Don’t

- guess intent when one clarifying question would resolve it
- route everything through one generic path
- ignore stronger existing specialized skills
- hide routing failures

## Files

- See [REFERENCE.md](./REFERENCE.md) for detailed routing policy.
- See [EXAMPLES.md](./EXAMPLES.md) for concrete examples.
