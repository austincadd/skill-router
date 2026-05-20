# skill-router examples

## Example 1: coding vs direct edit

User:
> Build this feature in Codex

Route:
- use the coding-agent / ACP harness path, not a direct local edit path

## Example 2: skill vs tool request

User:
> Check the CI on this GitHub PR

Route:
- use GitHub-specific tooling/skill
- do not route through a generic coding workflow

## Example 3: ambiguous external action

User:
> Publish this

Route:
- ask one clarifying question if destination is unclear
- do not guess whether that means GitHub, deployment, package publish, or social posting

## Example 4: no specialized path available

User:
> Summarize this local transcript file

Route:
- use the summarize skill if present
- if unavailable, use the nearest supported local text extraction path
- state the fallback clearly

## Example 5: persistent vs one-shot runtime

User:
> Start a Codex thread for this repo and keep working there

Route:
- use the persistent session path
- do not use a one-shot execution path
