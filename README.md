# skill-router

A reusable OpenClaw/AgentSkill-style skill for routing plain-language requests into the right tool, workflow, or agent path.

## What this repo is

`skill-router` is a publishable skill repo template built around a routing skill. It helps an agent interpret user intent, select the correct execution path, and avoid weak fallback behavior like guessing, misrouting, or using the wrong runtime.

This repo is structured for public reuse: concise skill entrypoint, deeper reference docs, examples, optional helper scripts, and basic GitHub hygiene.

## Features

- Intent-based request routing
- Clear trigger phrases and use conditions
- Explicit "do / do not do" guidance
- Progressive documentation structure
- Example prompts and workflows
- Optional script hooks for validation or deterministic helpers

## Repository structure

```text
skill-router/
├── README.md
├── LICENSE
├── CHANGELOG.md
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

### Option 1: clone the repo

```bash
git clone https://github.com/<your-user>/skill-router.git
```

Then copy or symlink the `skill/` directory into the location your OpenClaw/AgentSkill setup expects.

### Option 2: vendor just the skill folder

If you only want the skill itself, copy:

- `skill/SKILL.md`
- `skill/REFERENCE.md`
- `skill/EXAMPLES.md`
- `skill/scripts/` (if you want helpers)

## Configuration

This starter repo is instruction-first and works without external secrets.

If you adapt it for a real routing skill, document:

- supported agent/runtime IDs
- required CLIs or binaries
- expected working directory assumptions
- fallback behavior
- any environment variables

## Usage

See:

- `skill/SKILL.md` for the main skill entrypoint
- `skill/REFERENCE.md` for detailed routing policy
- `skill/EXAMPLES.md` for invocation examples
- `examples/` for adoption examples and sample workflows

## Versioning

This repo follows Semantic Versioning.

- `PATCH` for doc fixes and non-breaking wording updates
- `MINOR` for new workflows/examples/helper scripts
- `MAJOR` for breaking structure or behavior changes

See `CHANGELOG.md` for release history.

## Contributing

Contributions should keep the skill:

- concise at the entrypoint
- explicit about triggers
- clear about boundaries and failure handling
- easy for another operator to install and extend

## License

MIT
