---
title: "Node version manager (NVM) and Node package manager (NPM)"
date: 2020-10-21T17:21:16+08:00
tags: ["nodejs", "linux"]
categories: ["Linux", "Packages"]
---

Esay NodeJS setup in Unix-like systems (Linux / MacOS).

<!--more-->

## Note for windows users

Just download and install [NodeJS](https://nodejs.org/zh-tw/download/) directly or through [Chocolatey package manager](https://nodejs.org/en/download/package-manager/).

## Why use NVM ?

Benefits of using [Node Version manager (NVM)](https://github.com/nvm-sh/nvm):

- Avoid conflicts between system `npm` and what your project needs.
- _Permission with global installtion_: `nvm` allows [regular user previledge](https://medium.com/@ExplosionPills/dont-use-sudo-with-npm-still-66e609f5f92) to install npm packages (`npm i hexo-cli -g`) 'globally'.

## Installation

```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
```

✒️ For zsh users, you could install the [zsh-nvm module](https://github.com/lukechilds/zsh-nvm).

Check your installation afterwards:

```bash
nvm --version
```

## Usage

Install NodeJS LTS version along with `npm`.

```bash
nvm install --lts
```

A local version of NodeJS will be available.

```bash
node -v
```

And then you can install packages globally without `sudo` command. For example,

```bash
npm install -g hexo-cli docsify-cli
```
