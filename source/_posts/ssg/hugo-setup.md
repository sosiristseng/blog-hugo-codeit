---
title: Hugo setup
tags: ["github", "gitlab", "hugo"]
categories: ["Static Site Generator"]
comments: false
mathjax: false
date: 2020-11-30 21:43:55
---

This post illustrates the setup, content management, deployment of a Hugo blog.

Or just copy [my template](https://github.com/sosiristseng/template-hugo-meme) to save some efforts.

<!-- more -->

## The easy way: use template

### For GitHub

Click `Use the template` button at [my template](https://github.com/sosiristseng/template-hugo-meme) to copy the pre-configured Hugo with MemE theme.

The template comes with proper GitHub actions to build and deploy the website on the `gh-pages` branch. But you'll need to activate GitHub pages in the repo setting.

### For GitLab

Click [import project](https://gitlab.com/projects/new#import_project) and choose `Repo by URL`.

Copy and paste the git url from [my template](https://github.com/sosiristseng/template-hugo-meme).

The template comes with a `.gitlab-ci.yml` for automatic building / deployment of the website in GitLab CI.

You may need to modify the `HUGO_BASE_URL` entry in `.gitlab-ci.yml` for your website to work properly.

## Setup from scratch

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

You may want to change the settings in `config.toml` for page layout, personal settings, and more site options.

### Additional setup: GitHub Actions

```yaml .github/workflows/gh-pages.yml
name: github pages

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: checkout master
      uses: actions/checkout@v2
      with:
        submodules: true  # Fetch Hugo themes (true OR recursive)
        fetch-depth: 0    # Fetch all history for .GitInfo and .Lastmod
    - name: Setup Hugo
      uses: peaceiris/actions-hugo@v2
      with:
        hugo-version: 'latest'
        extended: true
    - name: Build
      run: hugo --gc --minify
    - name: Deploy
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./public
        force_orphan: true
        full_commit_message: ${{ github.event.head_commit.message }}
```


### Additional setup: GitLab CI

```yaml .gitlab-ci.yaml
image: klakegg/hugo:ext-alpine-ci

variables:
  GIT_SUBMODULE_STRATEGY: recursive
  HUGO_BASE_URL: 'https://sosiristseng.gitlab.io/'

test:
  script:
  - hugo -b ${HUGO_BASE_URL}
  except:
  - main

pages:
  script:
  - apk add --update brotli
  - hugo --gc --minify -b ${HUGO_BASE_URL}
  - find public -type f -regex '.*\.\(htm\|html\|txt\|text\|js\|css\|svg\|xml\)$' -exec gzip   -f -k {} \; || echo 'Gzip failed. Skipping...'
  - find public -type f -regex '.*\.\(htm\|html\|txt\|text\|js\|css\|svg\|xml\)$' -exec brotli -f -k {} \; || echo 'Brotli failed. Skipping...'
  artifacts:
    paths:
    - public
  only:
  - main
```
