# skill-router reference

## Purpose

This skill exists to make agent routing explicit and reusable.

It is useful when an agent environment has:
- multiple installed skills
- multiple execution runtimes
- multiple tools that could satisfy the same request
- risk of misrouting due to vague user language

## Routing priorities

Use this order:

1. exact domain skill
2. exact tool-specific skill
3. exact runtime-specific skill
4. generic workflow skill
5. clarification

If more than one path appears valid, prefer the most specific path with the lowest ambiguity.

## Trigger conditions

Use this skill when:
- a request could map to more than one skill
- the user uses shorthand that may imply a specific path
- a task involves selecting between direct execution, delegation, or external runtime use
- fallback behavior matters
- the agent needs consistent routing policy across sessions

## Clarification rule

Ask one question only when the answer materially changes execution.

Examples:
- "Do you want this as a one-shot run or a persistent session?"
- "Should I route this through GitHub tooling or just scaffold it locally?"

Do not ask for clarification when the better route is obvious.

## Fallback behavior

When the preferred path is unavailable:

1. say what failed
2. keep the fallback close to the preferred path
3. avoid fallback drift into unrelated tooling
4. preserve user intent

Bad fallback:
- switching from a routing skill to a random shell-heavy workaround with different semantics

Good fallback:
- switching from runtime-managed routing to a documented direct tool path with equivalent purpose

## Packaging guidance

For public reuse, keep:
- `SKILL.md` concise and trigger-focused
- `REFERENCE.md` detailed but readable
- `EXAMPLES.md` realistic
- helper scripts optional and deterministic

## Maintenance guidance

When updating the skill:
- keep examples current
- note new routing branches in the changelog
- avoid turning `SKILL.md` into a giant reference dump
- split rare edge cases into reference docs instead of bloating the entrypoint
