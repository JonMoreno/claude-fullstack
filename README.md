# Claude Fullstack

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](#contributing)

Production-ready Claude Code configuration with **3 specialized agents** and **7 workflow commands**.

## What's Inside

- **Agents**: Frontend, Backend, Test specialists
- **Commands**: Context analysis, auto-commit messages, session saving, git worktrees
- **Scripts**: Automated installation and clean removal

## Quick Start

```bash
git clone https://github.com/JonMoreno/claude-fullstack.git
cd claude-fullstack
bash install.sh
```

Then in Claude Code:
```
/.context              # Analyze your project
Use the frontend agent to build a button component
```

## Agents

| Agent | What They Do |
|-------|---|
| **frontend** | React components, TypeScript, Tailwind, performance optimization |
| **backend** | APIs, databases, authentication, security |
| **test** | Unit tests, integration tests, test coverage |

**How to use:**
```
Use the [agent-name] agent to [your task]
```

## Commands

| Command | What It Does |
|---------|---|
| `/.context` | Analyze codebase and current status |
| `/.commit` | Auto-generate commit messages |
| `/.save` | Save session context with notes |
| `/.continue` | Resume from saved sessions |
| `/.changes` | Visual summary of code changes |
| `/.feature` | Create new feature with scaffolding |
| `/.worktree` | Git worktree helpers for parallel work |

## Installation Details

- **Installs to**: `~/.claude/` (global, works everywhere)
- **Adds to**: Existing agents and commands (doesn't remove anything)
- **Option**: Backup existing config before install
- **Uninstall**: `bash uninstall.sh` (preserves your data)

## Examples

### Get Project Overview
```
/.context
```
Shows codebase structure, current branch, recent commits, and next steps.

### Auto-Generate Commit Message
```
/.commit
```
Analyzes your changes and suggests a professional commit message.

### Start a New Feature
```
/.feature "user authentication"
```
Delegates work to specialized agents - backend creates API, frontend builds UI, test writes tests.

## FAQ

**Q: Does this overwrite my existing config?**
A: No! It asks to backup first and only adds new agents/commands.

**Q: Can I use just some agents?**
A: Yes, delete what you don't want from `~/.claude/agents/`

**Q: Works with my tech stack?**
A: Yes, it's flexible. Edit agents to customize for your stack.

**Q: What about privacy?**
A: Everything stays local. See `.gitignore` for what's protected.

## Compatibility

- ✅ macOS, Linux
- ⚠️ Windows (use Git Bash)
- Requires: Claude Code v1.0+

## Contributing

We want your improvements! Add:
- Custom agents for specific frameworks (Django, Rails, Vue, Angular, etc.)
- Slash commands for your workflows
- Workflow patterns and best practices
- Language-specific helpers

**How to contribute:**
1. Fork this repo
2. Create a feature branch
3. Add your changes
4. Test thoroughly
5. Submit a PR

See existing agents/commands as examples.

## License

MIT - Use, modify, and share freely.

---

**Made by developers, for developers.**

Have questions? Open an issue or start a discussion!
