---
title: "Markdown editors"
date: 2020-10-22T16:04:38+08:00
tags: ["markdown"]
categories: ["Linux", "Packages"]
comments: true
---

What you see is what you get Markdown editors.

<!--more-->

## Marktext

[Marktext](https://marktext.app/), A full-featured open-source what-you-see-is-what-you-get Markdown editor.

{% tabs Marktext %}

<!-- tab AppImage -->

Download and execute the [AppImage](https://marktext.app/).

<!-- endtab -->

<!-- tab endeavour OS -->

[marktext-bin@AUR](https://aur.archlinux.org/packages/marktext-bin/)

```bash
yay -S marktext-bin
```

<!-- endtab -->

{% endtabs %}


## Typora

A full-featured what-you-see-is-what-you-get Markdown editor.  [@Typora](https://typora.io/)

{% tabs Typora %}
<!-- tab Ubuntu -->

Add Typora's repo

```bash
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list
sudo apt update && sudo apt install typora
```

<!-- endtab -->

<!-- tab endeavour OS -->

[typora@AUR](https://aur.archlinux.org/packages/typora/)

```bash
yay -S typora
```

<!-- endtab -->

{% endtabs %}

You may also want to [install pandoc](https://pandoc.org/installing.html) for exporting to more formats e.g. `docx`.
