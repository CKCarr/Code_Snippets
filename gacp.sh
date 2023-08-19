#!/bin/bash
# bash script to run to git add, git commit -m, git push. all in one go
# create folder scripts in /root/ or /~/
# open editor <vim ~/.bashrc> and add this script as an alias this will allow
# script to be seen from any directory in all of your bash environment
# <alias gacp="bash ~/scripts/gacp.sh">

# Prompt for the commit message
read -p "Enter commit message: " commit_message

# Add all changes to the staging area
git add .

# Show the commit message
echo "Commit Message: $commit_message"

# Confirm the commit
read -p "Press enter to confirm the commit or Ctrl+C to cancel"

# Commit changes with the provided commit message
git commit -m "$commit_message"

# Push changes to the specified branch
git push
