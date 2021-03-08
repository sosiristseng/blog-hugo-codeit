# Managing Git Submodules


Adding other Git repo(s) to your Git project. See also [gitaarik's Gist](https://gist.github.com/gitaarik/8735255) for more explanation.

<!--more-->

## Adding a submodule

Adding the reference of other git project(s) instead the whole code base.

(Of course, the code is still copied over but version control happens on the respective origins)

```bash
git submodule add ${GIT_URL} ${DIR}
git submodule update --init --recursive
```

Or you can also use Gitkraken to add a submodule in the GUI.

Add you will see the reference in the file `.gitmodules`. For instance,

`.gitmodules`
```
[submodule "themes/CodeIT"]
	path = themes/CodeIT
	url = https://github.com/sunt-programator/CodeIT.git
```

## Update all Git submodules to the latest commit

From [StackOverflow](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin/5828396#5828396)

```bash
git submodule update --remote --merge
```

## Auto-update Git submodules by GitHub dependabot

From the [dependabot documentation](https://docs.github.com/en/github/administering-a-repository/keeping-your-dependencies-updated-automatically)

Dependabot detects newer version of the submodule(s). If they are available, it automatically generate PRs, and checked by CI/CD.

Create a file `${YOUR_PROJECT}/.github/dependabot.yml` like this.

```yml
version: 2
updates:

  - package-ecosystem: "gitsubmodule"
    directory: "/"
    schedule:
      interval: "daily"
    labels:
    - "dependencies"
```

