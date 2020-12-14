---
title: "Git Submodule"
date: 2020-11-16 11:36:39
categories: ["Git"]
tags: ["git submodule", "git", "dependabot"]
comments: false
---

Adding others' Git repo(s) to your Git project.

<!--more-->

Check out this [article by gitaarik](https://gist.github.com/gitaarik/8735255) for background knowledge.

## Adding a submodule

```bash
git submodule add ${GIT_URL} ${DIR}
git submodule update --init --recursive
```

> When you add a submodule in Git, you don't add the code of the submodule to the main repository, you only add information about the submodule that is added to the main repository.
> And the submodules could be updated separately by respective origins.

## Update all submodules to the latest commit

From [StackOverflow](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin/5828396#5828396)

```bash
git submodule update --remote --merge
```

## GitHub dependabot for auto detecting updates in Git submodules

```yml .github/dependabot.yml
version: 2
updates:

  - package-ecosystem: "gitsubmodule"
    directory: "/"
    schedule:
      interval: "daily"
    labels:
    - "dependencies"
    - "automerge"
```
