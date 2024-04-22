#!/bin/bash

# Author            : Eshan Roy
# Author URI        : https://eshanized.github.io

# NOTE: Run this at your own risk! 

# GitHub repository URL
REPO_URL="https://github.com/IXINTL/MindMapp.git"

# Check if there are any changes to commit
if [[ -n $(git status -s) ]]; then
    # Add all changes to the staging area
    git add .

    # Commit changes with a default message
    git commit -m "default"

    # Push changes to the remote repository
    git push $REPO_URL

    # Check if the push was successful
    if [ $? -eq 0 ]; then
        echo "Push successful!"
    else
        echo "Error: Push failed!"
    fi
else
    echo "No changes to commit."
fi
