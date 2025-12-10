#!/usr/bin/env bash

# Function: lc
# Description: Auto-generate commit messages for LeetCode problems.
lc() {
    # Check if --dry-run was passed
    dryrun=true
    if [ "$1" = "--commit" ]; then
        dryrun=false
        shift
    fi

    # Find staged LeetCode-style file
    file=$(git diff --cached --name-only | grep -E "^[^/]+/[0-9]{4}-.*\.[a-zA-Z0-9]+$" | head -n1)

    if [ -z "$file" ]; then
        echo "No staged LeetCode-style file found (e.g., sql/0584-example.sql)."
        exit 1
    fi

    # Extract parts
    lang=$(echo "$file" | cut -d "/" -f 1)
    base=$(basename "$file")
    name="${base%.*}"
    id=$(echo "$name" | cut -d "-" -f 1)
    slug=$(echo "$name" | cut -d "-" -f 2-)

    # Problem title
    title=$(echo "$slug" | tr '-' ' ' | sed 's/\b\(.\)/\u\1/g')

    # Build commit message
    msg1="feat($lang): add solution for $id"
    msg2="$title"
    msg3="https://leetcode.com/problems/$slug/"

    if [ "$dryrun" = true ]; then
        echo "----- DRY RUN -----"
        echo "$msg1"
        echo
        echo "$msg2"
        echo "$msg3"
        echo "--------------------"
        exit 0
    fi

    # Commit for real
    git commit -m "$msg1" -m "$msg2" -m "$msg3"
}


# Placeholder alias - prints the git username
show_git_user() {
    echo "Git user: $(git config user.name)"
}
