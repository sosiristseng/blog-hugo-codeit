---
title: "Remove large files in Git history"
date: 2020-11-16T11:31:38+08:00
categories: ["DevOps"]
tags: ["git"]
---

To slim your Git repository.

<!--more-->

## Removing the specific commit

- [Rebase and force push @ Azure DevOps](https://docs.microsoft.com/en-us/azure/devops/repos/git/remove-binaries?view=azure-devops)
- [BFG repo cleaner @ GitHub docs](https://docs.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository)

## Purge Git database entirely

Erase all history in the Git repo to start over with all the current files. This also clears big files in the Git database.

```bash
git checkout --orphan newBranch  # Creata an orphan branch to hold the files
git add -A  && git commit        # Add all files and commit them
git branch -D main               # Deletes the main branch
git branch -m main               # Rename the current orphan branch to main
git push -f origin main          # Force push main branch to remote (e.g. github)
git gc --aggressive --prune=all  # Remove the old files in the database
```
