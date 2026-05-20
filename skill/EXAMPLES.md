# skill-router examples

## 1) Coding runtime vs direct local edit

User:
> Build this feature in Codex

Route:
- use the coding runtime / ACP-style path
- do not silently convert it into a direct local edit

Why:
- the user specified the execution model, not just the outcome

## 2) Tool-specific skill vs generic coding workflow

User:
> Check the CI on this GitHub PR

Route:
- use GitHub-specific tooling or skill
- do not route through a general coding workflow

Why:
- this is a repository-status task, not an implementation task

## 3) Ambiguous publish request

User:
> Publish this

Route:
- ask one clarifying question if destination is unclear
- likely options might include GitHub, deployment, package publishing, or posting content

Why:
- "publish" has multiple materially different meanings

## 4) Fallback when no specialist exists

User:
> Summarize this local transcript file

Route:
- use the summarize skill if available
- otherwise use the nearest documented text-extraction/summarization path
- state the fallback clearly

Why:
- fallback should preserve the task, not invent a different one

## 5) Persistent vs one-shot runtime

User:
> Start a Codex session for this repo and keep working there

Route:
- use a persistent session path
- do not use one-shot execution

Why:
- the user asked for continuity

## 6) Delegation vs direct handling

User:
> Refactor this codebase and keep iterating until the failing tests pass

Route:
- prefer a delegated or long-running coding path
- avoid treating this as a single direct-edit turn

Why:
- task size and iteration requirements change the correct path
