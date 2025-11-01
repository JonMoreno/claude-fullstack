#!/bin/bash

# Claude Fullstack Configuration Uninstaller
# Removes agents, commands, and documentation from ~/.claude

set -e

CLAUDE_DIR="$HOME/.claude"

echo "🗑️  Claude Fullstack Configuration Uninstaller"
echo "============================================="
echo ""

# Check if ~/.claude exists
if [ ! -d "$CLAUDE_DIR" ]; then
    echo "❌ Error: ~/.claude directory not found"
    echo "Nothing to uninstall."
    exit 1
fi

echo "⚠️  WARNING: This will remove the following from ~/.claude:"
echo "   • agents/ (backend.md, frontend.md, test.md)"
echo "   • commands/ (.context.md, .commit.md, .save.md, etc.)"
echo "   • README_FULLSTACK.md"
echo ""
echo "❗ Your session history, personal agents, and other data will NOT be affected"
echo ""
read -p "Are you sure you want to continue? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Uninstall cancelled"
    exit 0
fi

echo ""
echo "🗑️  Removing agents..."
rm -f "$CLAUDE_DIR/agents/backend.md"
rm -f "$CLAUDE_DIR/agents/frontend.md"
rm -f "$CLAUDE_DIR/agents/test.md"
echo "   ✅ Removed agents"

echo "🗑️  Removing commands..."
rm -f "$CLAUDE_DIR/commands/.context.md"
rm -f "$CLAUDE_DIR/commands/.commit.md"
rm -f "$CLAUDE_DIR/commands/.save.md"
rm -f "$CLAUDE_DIR/commands/.continue.md"
rm -f "$CLAUDE_DIR/commands/.changes.md"
rm -f "$CLAUDE_DIR/commands/.feature.md"
rm -f "$CLAUDE_DIR/commands/.worktree.md"
echo "   ✅ Removed commands"

echo "🗑️  Removing documentation..."
rm -f "$CLAUDE_DIR/README_FULLSTACK.md"
echo "   ✅ Removed documentation"

# Ask about .gitignore
echo ""
read -p "Remove .gitignore? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -f "$CLAUDE_DIR/.gitignore"
    echo "   ✅ Removed .gitignore"
else
    echo "   ⏭️  Kept .gitignore"
fi

# Clean up empty directories
if [ -d "$CLAUDE_DIR/agents" ] && [ -z "$(ls -A "$CLAUDE_DIR/agents")" ]; then
    rmdir "$CLAUDE_DIR/agents"
    echo "🗑️  Removed empty agents/ directory"
fi

if [ -d "$CLAUDE_DIR/commands" ] && [ -z "$(ls -A "$CLAUDE_DIR/commands")" ]; then
    rmdir "$CLAUDE_DIR/commands"
    echo "🗑️  Removed empty commands/ directory"
fi

echo ""
echo "✅ Uninstall complete!"
echo ""
echo "💡 Your session history and personal data remain in ~/.claude"
echo "   To completely remove ~/.claude: rm -rf ~/.claude"
echo ""
