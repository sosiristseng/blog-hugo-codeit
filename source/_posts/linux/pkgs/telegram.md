---
title: "Telegram"
date: 2020-10-27T15:39:44+08:00
tags: ["telegram"]
categories: ["Linux", "Packages"]
comments: false
---

[Telegram](https://telegram.org/) is a cloud-based cross-platform instant messaging service with optional end-to-end encryption. Account creation requires a phone number. (From [ArchWiki](https://wiki.archlinux.org/index.php/Telegram))

<!--more-->

## 🔽Installation

{% tabs Telegram %}

<!-- tab Standalone binary -->

[Download here](https://desktop.telegram.org/) and run standalone binary.

<!-- endtab -->

<!-- tab Ubuntu -->

```bash
sudo add-apt-repository -yu ppa:atareao/telegram
sudo apt install telegram
```

<!-- endtab -->

<!-- tab endeavour OS -->

```bash
sudo pacman -S telegram-desktop
```

<!-- endtab -->

<!-- tab snap -->

```bash
sudo snap install telegram-desktop
```

<!-- endtab -->

{% endtabs %}
