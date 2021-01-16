# Remove large files in Git history


To slim your Git repository.

<!--more-->

## Removing the specific commit

- [Rebase and force push @ Azure DevOps](https://docs.microsoft.com/en-us/azure/devops/repos/git/remove-binaries?view=azure-devops)
- [BFG repo cleaner @ GitHub docs](https://docs.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository)

## Purge Git database entirely

Erase all history in the Hosted Git repo to start anew with all the remaining files.

Useful when you accidentally added a big binary file and want to delete it in the database (and don't care about git commit history)

```bash
git checkout --orphan newBranch
git add -A                 # Add all files and commit them
git commit
git branch -D master       # Deletes the master branch
git branch -m master       # Rename the current branch to master
git push -f origin master  # Force push master branch to remote (e.g. github)
git gc --aggressive --prune=all     # remove the old files
```


