# Install Fonts


Install custom fonts if not available from the repo.

<!--more-->

After you download the [fonts]( {{< ref "posts/tools/free-art.md#fonts" >}} ):

## Per user

Copy the font files to  `~/.local/share/fonts/`. Then, run `fc-cache` to rebuild the font cache.

```bash
fc-cache -fv
```

## System-wide

Copy the font files to  `/usr/share/fonts/`. Then, run `fc-cache` to rebuild the font cache.

```bash
sudo fc-cache -fv /usr/share/fonts/
```

