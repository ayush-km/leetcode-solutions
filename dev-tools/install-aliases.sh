#!/usr/bin/env bash

MODE=""

if [ "$1" = "--global" ]; then
    MODE="--global"
fi

# Load alias definitions from file
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ALIASES_FILE="$SCRIPT_DIR/leetcode-aliases.sh"

if [ ! -f "$ALIASES_FILE" ]; then
    echo "leetcode-aliases.sh not found!"
    exit 1
fi

# Register aliases
echo "Installing LeetCode git aliases ($MODE)..."

git config $MODE alias.lc '!bash -c "source '$ALIASES_FILE'; lc \"\$@\"" _'
git config $MODE alias.whoami '!bash -c "source '$ALIASES_FILE'; show_git_user"'

echo "Done."

echo "Test lc alias:"
git lc
echo "Test whoami alias:" 
git whoami