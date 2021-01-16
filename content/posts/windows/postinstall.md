---
title: "Postinstall for Windows"
date: 2020-10-21T17:45:10+08:00
tags: ["postinstall", "windows"]
categories: ["Windows"]
comment: false
---

Things to do after Windows installation via [Chocolatey 🍫](https://chocolatey.org/) package manager.

<!--more-->

## Debloat scripts

[@Chris Titus](https://christitus.com/windows-10-scripts/)

```powershell
powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://git.io/JJ8R4')"
```

- Installs [Chocolatey 🍫](https://chocolatey.org/), a command-line interface (CLI) [package](https://chocolatey.org/packages) manager for Windows.
- Removes OneDrive, Indexing, Defender, and more bloatware.

## Install packages

```powershell
cinst -y git --params '"/NoShellHereIntegration"'
cinst -y vscode gitkraken mingw powershell-core microsoft-windows-terminal nodejs-lts miniconda3 deluge googlechrome firefox vivaldi brave anydesk telegram microsoft-teams 7zip bandizip honeyview potplayer youtube-dl ffmpeg lavfilters crystaldiskinfo treesizefree directx vcredist-all adobereader typora marktext miktex pandoc pandoc-crossref
