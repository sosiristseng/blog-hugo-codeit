---
title: Hugo setup
tags: ["github", "gitlab", "hugo"]
categories: ["Static Site Generator"]
comments: false
mathjax: false
date: 2020-11-30 21:43:55
---

This post illustrates the setup, content management, deployment of a Hugo blog.

Or just copy [my template](https://github.com/sosiristseng/template-hugo-clarity) to save some efforts.

<!-- more -->

## The easy way is to use my template

### GitHub hosting

Click `Use the template` button at [my template](https://github.com/sosiristseng/template-hugo-clarity) to copy the pre-configured Hugo with MemE theme.

The template comes with proper GitHub actions to build and deploy the website on the `gh-pages` branch. But you'll need to activate GitHub pages in the repo setting.

The example CI/CD file `.github/workflows/gh-pages.yml` to setup automatic website deployment for GitHub pages

{% include_code cicd/github-pages-hugo.yml %}

### GitLab hosting

1. Click [import project](https://gitlab.com/projects/new#import_project) and select `Repo by URL`.
1. Copy and paste the git url from [my template](https://github.com/sosiristseng/template-hugo-clarity).

My template includes a `.gitlab-ci.yml` for automatic site building when changes are pushed into GitLab.

You'll need to modify the `HUGO_BASE_URL` entry in `.gitlab-ci.yml` to the URL of yoursite for the website to work properly.

The example CI/CD file `.gitlab-ci.yml` to setup automatic website deployment for GitLab pages

{% include_code cicd/gitlab-pages-hugo.yml %}
