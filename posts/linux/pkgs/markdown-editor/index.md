# Markdown editors


What you see is what you get Markdown editors.

<!--more-->

## Marktext

[Marktext](https://marktext.app/), a full-featured open-source what-you-see-is-what-you-get Markdown editor.

### Install AppImage

Download the [AppImage](https://marktext.app/) and run it

### Install via AUR

[marktext-bin@AUR](https://aur.archlinux.org/packages/marktext-bin/)

```bash
paru -S marktext-bin
```

## Typora

[Typora](https://typora.io/), a full-featured what-you-see-is-what-you-get Markdown editor.

For Ubuntu and Pop OS.

```bash
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list
sudo apt update && sudo apt install typora
```

For Arch-based systems, install [typora@AUR](https://aur.archlinux.org/packages/typora/)

```bash
paru -S typora
```

[Install pandoc](https://pandoc.org/installing.html) to export Markdown files to `docx` files.

