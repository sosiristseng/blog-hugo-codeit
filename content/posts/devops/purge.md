---
title: "Purge Git database" # Title of the blog post.
date: 2020-11-16T11:31:38+08:00 # Date of post creation.
categories: ["DevOps"]
tags: ["git"]
comment: false # Disable comment if false.
---

Erase all history in the Git repo to start anew with all the remaining files.

Useful when you accidentally added a big binary file and want to delete it in the database (and don'tcare about git commit history)

<!--more-->

```bash
git checkout --orphan newBranch
git add -A  # Add all files and commit them
git commit
git branch -D master       # Deletes the master branch
git branch -m master       # Rename the current branch to master
git push -f origin master  # Force push master branch to remote (e.g. github)
git gc --aggressive --prune=all     # remove the old files
```
