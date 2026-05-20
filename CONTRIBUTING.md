# Contributing

Thanks for improving `skill-router`.

## Contribution rules

Keep contributions aligned with the purpose of this repo:

- improve routing clarity
- reduce ambiguity
- preserve user intent
- keep packaging simple
- avoid turning the skill into an overgrown framework

## Before opening a PR

Make sure changes:

- keep `skill/SKILL.md` concise
- move deep policy into `skill/REFERENCE.md`
- add or update examples when behavior changes
- preserve the distinction between preferred path and fallback path
- pass the basic validation script

## Validation

```bash
cd skill
./scripts/validate-skill.sh
```

## Good contributions

- better trigger wording
- clearer fallback policy
- stronger real-world examples
- lower-friction install documentation
- deterministic helper scripts that remove ambiguity

## Contributions to avoid

- bloating `SKILL.md`
- adding domain-specific logic that belongs in another skill
- adding helper scripts that duplicate obvious manual steps
- making routing rules vague or purely keyword-based
