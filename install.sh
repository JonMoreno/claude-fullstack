#!/bin/bash

# Claude Fullstack Configuration Installer
# Installs custom agents, commands, and documentation to ~/.claude

set -e

CLAUDE_DIR="$HOME/.claude"
BACKUP_DIR="$HOME/.claude.backup.$(date +%Y%m%d_%H%M%S)"

echo "🤖 Claude Fullstack Configuration Installer"
echo "==========================================="
echo ""

# Check if ~/.claude exists
if [ -d "$CLAUDE_DIR" ]; then
    echo "⚠️  Found existing ~/.claude directory"
    read -p "Do you want to backup existing config? (y/n) " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "📦 Backing up to: $BACKUP_DIR"
        cp -r "$CLAUDE_DIR" "$BACKUP_DIR"
        echo "✅ Backup complete"
    fi
else
    echo "📁 Creating ~/.claude directory"
    mkdir -p "$CLAUDE_DIR"
fi

# Create necessary directories
echo ""
echo "📁 Creating directory structure..."
mkdir -p "$CLAUDE_DIR/agents"
mkdir -p "$CLAUDE_DIR/commands"
mkdir -p "$CLAUDE_DIR/hooks"

# Copy agents
echo "🤖 Installing agents..."
cp agents/*.md "$CLAUDE_DIR/agents/"
echo "   ✅ Installed: backend, frontend, test agents"

# Copy commands
echo "⚡ Installing custom commands..."
cp commands/.*.md "$CLAUDE_DIR/commands/"
echo "   ✅ Installed: .context, .commit, .save, .continue, .changes, .feature, .worktree"

# Copy documentation
echo "📚 Installing documentation..."
cp README.md "$CLAUDE_DIR/README_FULLSTACK.md"
if [ ! -f "$CLAUDE_DIR/hooks/README.md" ]; then
    cp hooks/README.md "$CLAUDE_DIR/hooks/"
fi
echo "   ✅ Installed: README_FULLSTACK.md, hooks/README.md"

# Copy .gitignore if it doesn't exist or ask to overwrite
if [ ! -f "$CLAUDE_DIR/.gitignore" ]; then
    cp .gitignore "$CLAUDE_DIR/"
    echo "🔒 Installed: .gitignore (protects sensitive session data)"
else
    echo ""
    read -p "⚠️  .gitignore exists. Overwrite? (y/n) " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        cp .gitignore "$CLAUDE_DIR/"
        echo "   ✅ Overwritten: .gitignore"
    else
        echo "   ⏭️  Skipped: .gitignore"
    fi
fi

# Set permissions
chmod +x "$CLAUDE_DIR/commands/"*.md 2>/dev/null || true

echo ""
echo "✨ Installation complete!"
echo ""
echo "📖 Available custom agents:"
echo "   • frontend - Frontend development specialist"
echo "   • backend  - Backend development specialist"
echo "   • test     - Testing specialist"
echo ""
echo "⚡ Available slash commands:"
echo "   • /.context   - Get full project context"
echo "   • /.commit    - Generate commit messages"
echo "   • /.save      - Save session context"
echo "   • /.continue  - Load saved session"
echo "   • /.changes   - Visual summary of changes"
echo "   • /.feature   - Create new feature"
echo "   • /.worktree  - Git worktree helpers"
echo ""
echo "📚 Documentation: ~/.claude/README_FULLSTACK.md"
echo ""
echo "🚀 Restart Claude Code to use the new configuration!"
echo ""
