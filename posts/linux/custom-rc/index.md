# Organizing custom rc files


Organize your custom `rc` entries (e.g. `.bashrc`, `zshrc`) into a bunch of files inside a directory.

<!--more-->

From a [Medium post](https://medium.com/@waxzce/use-bashrc-d-directory-instead-of-bloated-bashrc-50204d5389ff).

Create a folder for `*.bashrc` files.

```bash
mkdir -p -m 770 ~/.bashrc.d
```

Then add the following line to `~/.bashrc`.

```bash
for f in ~/.bashrc.d/*.bashrc; do . "${f}" done
```

Then put your custom `.bashrc` files into `~/.bashrc.d` folder. From now on the interactive bash shell will read those files in that folder *in alphabetical order* . If you want a particular loading order, prepend numbers like `01-abc.bashrc`, `02-def.bashrc`, ....

