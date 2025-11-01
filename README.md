# Claude Fullstack

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](#contributing)

A powerful, production-ready configuration package for [Claude Code](https://docs.claude.com/en/docs/claude-code) featuring custom agents, slash commands, and development automation tools.

## What is This?

Claude Fullstack is a distribution package that extends Claude Code with:
- **Specialized Agents**: Frontend, Backend, and Testing specialists
- **Custom Slash Commands**: Workflow automation for git, commits, context management, and more
- **Installation Scripts**: Easy setup and removal
- **Best Practices**: Battle-tested conventions for fullstack development

### Installation Scope

This package installs **globally** to `~/.claude/`:
- ✅ Works across **all your projects**
- ✅ One-time setup - use everywhere
- ✅ **Additive only** - keeps your existing agents, commands, and data
- 📁 All Claude Code sessions will have access to these agents and commands

## Why Use This?

- **Performance-First Architecture**: Agents actively prevent scalability issues and N+1 problems before you write them
- **Zero-Config Workflow Automation**: One-command workflows for commits, context, and session management
- **Stack-Aware Development**: Specialized agents understand React, APIs, databases, and testing patterns

## Table of Contents

- [What is This?](#what-is-this)
  - [Installation Scope](#installation-scope)
- [Why Use This?](#why-use-this)
- [Prerequisites](#prerequisites)
- [Quick Start](#quick-start)
- [What's Included](#whats-included)
  - [Custom Agents](#custom-agents)
  - [Custom Slash Commands](#custom-slash-commands)
- [Directory Structure](#directory-structure)
- [Usage Examples](#usage-examples)
- [Tips & Best Practices](#tips--best-practices)
- [Creating Custom Commands](#creating-custom-commands)
- [Troubleshooting](#troubleshooting)
- [Quick Reference](#quick-reference)
- [FAQ](#faq)
- [Compatibility](#compatibility)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

- **Claude Code** installed ([installation guide](https://docs.claude.com/en/docs/claude-code))
- **Git**
- **Bash** (macOS/Linux) or **Git Bash** (Windows)

## Quick Start

### Installation

```bash
# Clone the package
git clone https://github.com/YOUR-USERNAME/claude-fullstack.git
cd claude-fullstack

# Run the installer
bash install.sh
```

The installer will:
- Backup your existing `~/.claude` configuration (if any)
- Copy agents, commands, and documentation to `~/.claude`
- Set up proper permissions

### Uninstallation

```bash
cd claude-fullstack
bash uninstall.sh
```

This removes installed agents and commands while preserving your session history and personal data.

### First 5 Minutes

**After installing, verify everything works:**

1. **Start Claude Code:**
   ```bash
   claude
   ```

2. **Check commands are installed:**
   ```
   /help
   ```
   You should see: `/.context`, `/.commit`, `/.save`, `/.continue`, `/.changes`, `/.feature`, `/.worktree`

3. **Try your first command:**
   ```
   /.context
   ```
   This analyzes your current project and shows status.

4. **Test an agent:**
   ```
   Use the frontend agent to explain React hooks
   ```
   Agent should respond with expertise.

**✅ Success!** If all 4 work, you're ready to go.

**❌ Troubleshooting:**
- Commands not showing? Restart Claude Code
- Agent not responding? Say "Use the [agent-name] agent to..."

---

## What's Included

### Custom Agents

Specialized agents that understand your stack and optimize for performance:

#### `frontend` - Frontend Development Specialist
**Expertise**: React, TypeScript, Tailwind CSS, responsive design, accessibility, performance optimization

**Use when**:
- Building UI components or forms
- Creating React applications
- Implementing client-side features
- Optimizing frontend performance

**Priority**: Speed and scalability. This agent will flag performance issues and recommend backend solutions when client-side approaches won't scale.

**Key features**:
- Identifies N+1 problems and data fetching anti-patterns
- Recommends pagination, virtualization, and caching strategies
- Ensures accessibility (WCAG) and responsive design
- Follows React best practices with TypeScript

**Example**:
```
Use the frontend agent to build a user dashboard with data tables
```

---

#### `backend` - Backend Development Specialist
**Expertise**: API design, database schemas, server-side logic, authentication, security

**Use when**:
- Designing REST or GraphQL APIs
- Creating database migrations or schemas
- Implementing authentication/authorization
- Building server-side business logic
- Performance optimization (queries, caching, indexing)

**Key features**:
- Designs scalable API endpoints
- Optimizes database queries and prevents N+1 problems
- Implements security best practices
- Structures code for maintainability

**Example**:
```
Use the backend agent to create an API endpoint for user analytics
```

---

#### `test` - Testing Specialist
**Expertise**: Unit tests, integration tests, test coverage, testing frameworks

**Use when**:
- Writing new tests
- Fixing failing tests
- Improving test coverage
- Setting up testing infrastructure

**Key features**:
- Writes comprehensive test suites
- Uses appropriate testing patterns (mocks, fixtures, factories)
- Ensures good test coverage
- Follows testing best practices

**Example**:
```
Use the test agent to write tests for the authentication module
```

---

### Custom Slash Commands

Powerful workflow automation commands:

#### `/.context`
**Full project context - understand codebase + current status + what's next**

Use when:
- Starting work on an unfamiliar project
- Need to understand current implementation status
- Want to see the big picture of ongoing work

```
/.context
```

---

#### `/.commit`
**Analyze git changes and generate well-formatted commit messages**

Use when:
- You've made changes and need a descriptive commit message
- Want consistent, professional commit messages
- Following conventional commit standards

```
/.commit
```

---

#### `/.save`
**Save current session context with optional note**

Use when:
- Ending a work session and want to preserve context
- Need to switch tasks but want to remember where you left off
- Creating checkpoint for complex work

```
/.save "Completed authentication refactor, ready for testing"
```

---

#### `/.continue`
**Load and continue from a saved session**

Use when:
- Resuming work from a previous session
- Need to recall what you were working on
- Want to maintain continuity across sessions

```
/.continue
```

---

#### `/.changes`
**Visual summary of code changes showing data flow and connections**

Use when:
- Need to understand the impact of your changes
- Preparing for code review
- Want to visualize how changes propagate through the codebase

```
/.changes
```

---

#### `/.feature`
**Create a new feature with proper structure**

Use when:
- Starting a new feature implementation
- Need scaffolding for a new module
- Want consistent feature structure

```
/.feature "user authentication with OAuth"
```

---

#### `/.worktree`
**Git worktree workflow helpers**

Use when:
- Working on multiple features simultaneously
- Need isolated directories for different branches
- Want to avoid constant branch switching

```
/.worktree
```

---

## Directory Structure

After installation, your `~/.claude` will contain:

```
~/.claude/
├── agents/                # Specialized development agents
│   ├── backend.md
│   ├── frontend.md
│   └── test.md
├── commands/              # Custom slash commands
│   ├── .context.md
│   ├── .commit.md
│   ├── .save.md
│   ├── .continue.md
│   ├── .changes.md
│   ├── .feature.md
│   └── .worktree.md
├── .gitignore            # Protects sensitive session data
├── README.md
├── CUSTOM_COMMANDS.md
└── WORKTREE_CONVENTION.md
```

**Note**: Session data directories like `projects/`, `history.jsonl`, `file-history/` are gitignored and contain your personal data.

---

## Usage Examples

### For Newcomers to Claude Code

1. **Install Claude Code** (if you haven't already):
   ```bash
   # See https://docs.claude.com/en/docs/claude-code
   ```

2. **Install Claude Fullstack** (this package):
   ```bash
   git clone https://github.com/YOUR-USERNAME/claude-fullstack.git
   cd claude-fullstack
   bash install.sh
   ```

3. **Start using it**:
   ```bash
   claude
   ```

4. **Try your first command**:
   ```
   /.context
   ```

5. **Use specialized agents**:
   ```
   Use the frontend agent to help me build a login form
   ```

### For Advanced Users

**Chain commands for complex workflows**:
```
/.context, then use the backend agent to design an API for the user management system
```

**Customize agents**: Edit `~/.claude/agents/*.md` to fit your tech stack

**Create project-specific agents**: Add new agents for your specialized needs

**Integrate with CI/CD**: Use commands in automation pipelines

### Example: Building a Login Feature (End-to-End)

**Scenario**: You need to add user login to your app.

**Step 1: Get oriented**
```
/.context
```
Claude analyzes your codebase and shows current state.

**Step 2: Create the feature**
```
/.feature "user login with email and password"
```
Claude asks clarifying questions, then delegates work to agents.

**Step 3: Backend agent builds API**
```
Use the backend agent to create:
- POST /auth/login endpoint
- JWT token generation
- Password hashing with bcrypt
- Input validation
```
Agent creates routes, controller, validation, tests.

**Step 4: Frontend agent builds UI**
```
Use the frontend agent to create:
- LoginForm component with email/password inputs
- Form validation
- Error handling
- Loading states
```
Agent creates component, handles state, adds accessibility.

**Step 5: Test agent writes tests**
```
Use the test agent to test the login flow
```
Agent creates unit tests, integration tests, error case tests.

**Step 6: Review your changes**
```
/.changes
```
Shows visual summary of all changes and data flow.

**Step 7: Commit your work**
```
/.commit
```
Generates professional commit message from your changes.

**Step 8: Save context**
```
/.save "Login feature complete, ready for review"
```
Saves session so you can resume later.

**Result**: Complete login feature with backend API, frontend UI, tests, and clean commit - built in one session with specialized agents.

---

## Tips & Best Practices

### Effective Agent Usage

1. **Be specific about which agent to use**: "Use the frontend agent..." or "Use the backend agent..."
2. **Agents collaborate**: Frontend agent will flag backend issues, backend agent will optimize queries
3. **Let agents guide architecture**: They'll recommend best practices and scalable patterns

### Workflow Optimization

1. **Start with `/.context`**: Get oriented in any project
2. **Use `/.save` frequently**: Never lose your progress
3. **Let `/.commit` write messages**: Consistent, professional commits
4. **Leverage `/.changes`**: Understand impact before committing

### Git Worktree Workflows

The `/.worktree` command helps you:
- Work on multiple features without branch switching
- Keep each feature isolated in its own directory
- Maintain separate IDE windows for different work streams

---

## Creating Custom Commands

Add your own slash commands by creating markdown files in `~/.claude/commands/`:

1. **Create a file**: `~/.claude/commands/.mycommand.md`

2. **Add frontmatter and prompt**:
   ```markdown
   ---
   name: mycommand
   description: What your command does
   ---

   Your command prompt here...
   ```

3. **Use it**:
   ```
   /.mycommand
   ```

4. **Restart Claude Code** to load the new command

---

## Troubleshooting

### Commands not working?
- Ensure files are named with leading dot: `.commandname.md`
- Check frontmatter syntax in command files
- Restart Claude Code after adding new commands
- Verify files are in `~/.claude/commands/`

### Agents not responding?
- Explicitly invoke them: "Use the [agent-name] agent to..."
- Check that agent files exist in `~/.claude/agents/`
- Restart Claude Code

### Want to reset configuration?
```bash
cd claude-fullstack
bash uninstall.sh
bash install.sh
```

---

## Quick Reference

### Commands Cheat Sheet

| Command | What It Does | When To Use |
|---------|-------------|-------------|
| `/.context` | Full project analysis | Starting work, understanding codebase |
| `/.commit` | Generate commit message | After making changes |
| `/.save` | Save session context | End of work session, switching tasks |
| `/.continue` | Resume saved session | Continuing previous work |
| `/.changes` | Visual change summary | Before committing, code review prep |
| `/.feature` | Create new feature | Starting new feature development |
| `/.worktree` | Git worktree helper | Working on multiple features simultaneously |

### Agents Cheat Sheet

| Agent | Expertise | Use For |
|-------|-----------|---------|
| **frontend** | React, TypeScript, UI/UX, performance | Building components, forms, client-side features |
| **backend** | APIs, databases, auth, security | Creating endpoints, database schemas, server logic |
| **test** | Unit/integration tests, coverage | Writing tests, fixing test failures |

**How to use agents:**
```
Use the [agent-name] agent to [task]
```

**Examples:**
- `Use the frontend agent to build a user dashboard`
- `Use the backend agent to create a payments API`
- `Use the test agent to write tests for authentication`

---

## FAQ

### Will this overwrite my existing ~/.claude config?
No! The installer asks to backup first and preserves your session history.

### Can I use only some agents/commands?
Yes, just delete the ones you don't want from `~/.claude` after installation.

### Does this work with my existing projects?
Yes, it's just Claude Code configuration - works with any project.

### Is my code/data shared?
No. Everything stays local. See `.gitignore` for what's protected.

### How do I update to the latest version?
```bash
cd claude-fullstack
git pull
bash install.sh  # Will ask to overwrite
```

---

## Compatibility

- ✅ **macOS** - Fully supported
- ✅ **Linux** - Fully supported
- ⚠️ **Windows** - Use Git Bash
- **Requires**: Claude Code v1.0+

---

## Contributing

**New additions and improvements are always welcome!**

Whether you're new to Claude Code or an experienced user, your contributions help the community:

### What to Contribute

- **Custom agents** for specific frameworks (Django, Laravel, Rails, Vue, Angular, etc.)
- **Slash commands** for common workflows (deployment, testing, refactoring, etc.)
- **Workflow patterns** and best practices
- **Integration examples** with tools (Docker, Kubernetes, CI/CD)
- **Language-specific helpers** (Go, Rust, Python, Java, etc.)
- **Documentation improvements**

### How to Contribute

1. Fork this repository
2. Create a feature branch: `git checkout -b feature/my-addition`
3. Add your changes:
   - New agents go in `agents/`
   - New commands go in `commands/`
   - Update this README with examples
4. Test thoroughly in your own workflow
5. Submit a pull request with clear description

### Guidelines

- **Agents**: Focus on specific domain expertise (don't create generic "helper" agents)
- **Commands**: Keep them focused and single-purpose
- **Documentation**: Include examples of when and how to use your additions
- **Testing**: Test with real projects before submitting
- **Structure**: Follow existing naming conventions

**Every contribution, no matter how small, makes this package more valuable!**

---

## License

MIT License - Feel free to use, modify, and share!

---

## Acknowledgments

Built with [Claude Code](https://claude.com/claude-code) by Anthropic.

Special thanks to all contributors who help make fullstack development with Claude Code better for everyone.

---

*Made by developers, for developers. Happy coding!*
