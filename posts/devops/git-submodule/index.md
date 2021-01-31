# Managing Git Submodules


Adding others' Git repo(s) to your Git project.

<!--more-->

{{< admonition type=info title="See also" open=true >}}
[Git submodule by gitaarik](https://gist.github.com/gitaarik/8735255)
{{< /admonition >}}

## Adding a submodule

Adding the reference of other git project(s) instead the whole code base.

(Of course, the code is still copied over but version control happens on the respective origins)

```bash
git submodule add ${GIT_URL} ${DIR}
git submodule update --init --recursive
```

Or you can also use Gitkraken to add a submodule in the GUI.

Add you will see the reference in the file `.gitmodules`. For instance, the theme submodule in this website is:

```
[submodule "themes/CodeIT"]
	path = themes/CodeIT
	url = https://github.com/sunt-programator/CodeIT.git
```

## Update all submodules to the latest commit

From [StackOverflow](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin/5828396#5828396)

```bash
git submodule update --remote --merge
```

## Auto-update by GitHub dependabot

{{< admonition type=info title="See also" open=true >}}
[Dependabot documentation](https://docs.github.com/en/github/administering-a-repository/keeping-your-dependencies-updated-automatically)
{{< /admonition >}}

To detect newer version of the submodule(s), and make PR's for the updated version, linked to CI/CD.

Create `${PROJECT}/.github/dependabot.yml`

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

