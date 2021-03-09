---
title: "Connect to Github via SSH"
subtitle: "So you don't have to enter username/password in the terminal."
date: 2021-03-08T15:41:34+08:00
author: ""
authorLink: ""
description: ""

tags: ["git", "github", "ssh"]
categories: ["DevOps"]

hiddenFromHomePage: false
hiddenFromSearch: false

featuredImage: ""
featuredImagePreview: ""

toc:
  enable: true
math:
  enable: false
lightgallery: false
comment: false
---

You can [connect to GitHub using SSH](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh).

<!--more-->

## Generating a new SSH key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

The SSH agent will ask you to enter a file in which to save the key. In my case, I named it `/home/you/.ssh/github`. And then it will ask you to enter the passphrase, I chose empty passphrase.

Then you will have two SSH key files:
- `/home/you/.ssh/github` is the *private key*. **Protect it at all costs**.
- `/home/you/.ssh/github.pub` is the *public key*.

## Adding GitHub to the SSH host

Edit or create `/home/you/.ssh/config`:

```bash
nano /home/you/.ssh/config
```

And add the content for the SSH agent to use the *private key*, `/home/you/.ssh/github`.

```bash
# GitHub user
Host github.com
  HostName github.com
  IdentityFile ~/.ssh/github
```

I'm not sure why the `ssh-add` method in the [📖 Github docs](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent) did not work.

## Adding the SSH key to GitHub

[📖 Github docs](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)

In the GitHub website, click your `profile` photo -> `Settings` -> `SSH and GPG keys` -> `Add SSH key` or ` New SSH key`
- Paste the content of the *public key*, `/home/you/.ssh/github.pub` to the key field.
- Add a descriptive label for the new key in the "Title" field.
- Finally, click the `Add SSH key` green button. If prompted, confirm your GitHub password.

## Test your setup

```bash
ssh -vT git@github.com
```

Accept fingerprint if prompted.
