# Gloo AI Skills

Open-source skills for AI coding assistants, built by [Gloo](https://gloo.com).

## Installation

### Quick Install

```bash
git clone https://github.com/glooai/skills.git ~/.gloo/skills
cd ~/.gloo/skills && ./install.sh
```

### Manual Install

Copy or symlink any skill into your assistant's skill directory:

```bash
# Claude Code
mkdir -p ~/.claude/skills
ln -sfn /path/to/skills/skills/flourishing-ai ~/.claude/skills/flourishing-ai

# OpenCode
mkdir -p ~/.config/opencode/skills
ln -sfn /path/to/skills/skills/flourishing-ai ~/.config/opencode/skills/flourishing-ai
```

## Available Skills

### `/gloo:flourishing`

Assess AI implementation alignment with the [Flourishing AI Benchmark](https://arxiv.org/abs/2507.07787) — a seven-dimension evaluation framework based on the Harvard Human Flourishing Program.

**Usage:**
```
/gloo:flourishing                                    # Interactive mode
/gloo:flourishing --prompt "AI chatbot for therapy"   # Assess a specific implementation
/gloo:flourishing --model claude-opus-4-6 --report           # Generate a saved report
/gloo:flourishing --dimensions faith,meaning          # Focus on specific dimensions
```

**Dimensions evaluated:**
1. Character and Virtue
2. Close Social Relationships
3. Happiness and Life Satisfaction
4. Meaning and Purpose
5. Mental and Physical Health
6. Financial and Material Stability
7. Faith and Spirituality

## Contributing

1. Create a directory under `skills/` with your skill name
2. Add a `SKILL.md` with YAML frontmatter (`name`, `description`, `argument-hint`)
3. Optionally add a `references/` subdirectory for supporting documentation
4. Submit a PR

## License

MIT
