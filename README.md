# skill-router

An OpenClaw/AgentSkill-style routing skill for environments where the agent has multiple skills, tools, runtimes, or delegation paths and needs to choose the right one deliberately.

`skill-router` is not a domain skill. It is a control skill: it helps an agent decide **which** path should handle a request, **when** to ask a clarifying question, and **how** to fall back without drifting away from the user’s actual intent.

## Why this exists

As skill collections grow, agents start failing in predictable ways:

- routing broad requests through the wrong specialist
- overusing generic execution paths
- asking unnecessary clarifying questions
- choosing a fallback that changes the semantics of the task
- treating tool availability as a reason to improvise

This skill exists to make routing policy explicit, reusable, and easy to install.

## What it covers

- intent-first routing
- specialist-vs-generic path selection
- clarification rules
- fallback discipline
- examples for multi-skill environments

## Good fit

Use `skill-router` when your agent environment has:

- multiple installed skills with overlapping scope
- more than one execution runtime
- both local and delegated execution paths
- external tool paths that should only be used intentionally
- a need for consistent routing behavior across sessions

## Not a good fit

This repo is probably unnecessary if:

- your agent has only a few narrowly scoped skills
- there is no meaningful path ambiguity
- you want a domain skill instead of a routing/meta skill

## Repository layout

```text
skill-router/
├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
├── .gitignore
├── skill/
│   ├── SKILL.md
│   ├── REFERENCE.md
│   ├── EXAMPLES.md
│   └── scripts/
│       └── validate-skill.sh
├── examples/
│   ├── prompts.md
│   └── sample-workflows.md
└── .github/
    ├── ISSUE_TEMPLATE/
    │   ├── bug_report.md
    │   └── feature_request.md
    └── pull_request_template.md
```

## Install

### Option 1: install the full repo

```bash
git clone https://github.com/austincadd/skill-router.git
```

Then copy or symlink the `skill/` directory into the skill location your agent runtime expects.

### Option 2: vendor only the skill files

If you just want the skill itself, copy:

- `skill/SKILL.md`
- `skill/REFERENCE.md`
- `skill/EXAMPLES.md`
- `skill/scripts/validate-skill.sh` (optional)

## Quick validation

```bash
cd skill
./scripts/validate-skill.sh
```

## How to use it

1. Install the skill alongside your other skills.
2. Let the agent load it when a request could fit multiple paths.
3. Keep `SKILL.md` short and operational.
4. Put edge cases, fallback rules, and deeper policy in `REFERENCE.md`.
5. Add real examples before relying on it heavily.

## Design rules

This repo follows a few simple packaging rules:

- `SKILL.md` should stay concise and trigger-focused
- examples should be realistic, not toy prompts only
- helper scripts should be deterministic and optional
- fallback behavior should stay close to the intended path
- routing rules should prefer the most specific correct path

## Versioning

This repo follows Semantic Versioning.

- `PATCH` — wording, examples, doc cleanup
- `MINOR` — new routing branches, examples, helper scripts
- `MAJOR` — breaking structure or behavioral changes

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

MIT
