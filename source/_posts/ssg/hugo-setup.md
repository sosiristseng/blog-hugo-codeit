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

Click `Use the template` button at [my template](https://github.com/sosiristseng/template-hugo-meme) to copy the pre-configured Hugo with MemE theme.

The template comes with proper GitHub actions to build and deploy the website on the `gh-pages` branch. But you'll need to activate GitHub pages in the repo setting.

### GitLab hosting

1. Click [import project](https://gitlab.com/projects/new#import_project) and select `Repo by URL`.
1. Copy and paste the git url from [my template](https://github.com/sosiristseng/template-hugo-meme).

My template includes a `.gitlab-ci.yml` for automatic site building when changes are pushed into GitLab.

You'll need to modify the `HUGO_BASE_URL` entry in `.gitlab-ci.yml` to the URL of yoursite for the website to work properly.

## The harder but more flexible way is setup from scratch

Please follow the instructions of [Hugo quick start](https://gohugo.io/getting-started/quick-start) and the [README](https://github.com/reuixiy/hugo-theme-meme#quick-start) of MemE theme.

- Install of Hugo *extended* version: <https://gohugo.io/getting-started/installing>
- Initialize a blank website:
  ```bash
  hugo new site blog
  ```
- Install MemE theme via git submodule
  ```bash
  cd blog
  git init
  git submodule add --depth 1 https://github.com/reuixiy/hugo-theme-meme.git themes/meme
  ```
- Copy the example configurations
  ```bash
  rm config.toml && cp themes/meme/config-examples/en/config.toml config.toml
  ```
- Add new pages
  ```bash
  hugo new "posts/first-post.md" # Posts
  hugo new "about/_index.md"     # About me page
  ```
- Test your setup, go to <http://localhost:1313> after enter the following command
  ```bash
  hugo server -D
  ```

And you can start blogging in markdown and the browser will auto-reload when the files are saved.

Change the settings in `config.toml` for page layout, personal settings, and more site options.

To setup automatic website deployment for GitHub pages:

{% include_code cicd/github-pages-hugo.yml %}

To setup automatic website deployment for GitLab pages

{% include_code cicd/gitlab-pages-hugo.yml %}
