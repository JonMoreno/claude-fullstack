# Hooks Directory

This directory is for Claude Code hooks - shell commands that execute in response to events.

## What are Hooks?

Hooks allow you to run custom shell commands automatically when certain events occur in Claude Code, such as:
- Before/after tool calls
- On user prompt submission
- On session start/end

## How to Add Hooks

Create hook files in your `~/.claude/hooks/` directory (not this directory - this is just the template).

Example hook configuration in your Claude Code settings:
```json
{
  "hooks": {
    "user-prompt-submit": "~/.claude/hooks/on-submit.sh"
  }
}
```

## Common Use Cases

- **Linting**: Run linters before commits
- **Formatting**: Auto-format code on save
- **Testing**: Run quick tests before certain operations
- **Logging**: Track usage or debugging info
- **Integration**: Trigger external tools or services

## Resources

See [Claude Code documentation](https://docs.claude.com/en/docs/claude-code) for more information on hooks.

## Note

This directory is currently empty and serves as a placeholder. Add your own hook scripts to `~/.claude/hooks/` after installation.
