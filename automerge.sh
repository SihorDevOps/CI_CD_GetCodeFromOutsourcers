#!/bin/bash
# Go to the repo directory
cd /path/to/the/repo/directory

# Go to the develop branch
git checkout develop

# Get new commits
git pull out main

# Push new commits to our repo
git push -u origin -o merge_request.create

