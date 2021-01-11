---
title: Hugo setup
tags: ["github", "gitlab", "hugo"]
categories: ["Static Site Generator"]
comments: false

date: 2020-11-30 21:43:55
---

This post illustrates the setup, content management, deployment of a Hugo blog.

Or just copy [my template](https://github.com/sosiristseng/template-hugo-clarity) to save some efforts.

<!--more-->

## The easy way is to use my template

### GitHub hosting

Click `Use the template` button at [my template](https://github.com/sosiristseng/template-hugo-clarity) to copy the pre-configured Hugo with MemE theme.

The template comes with proper GitHub actions to build and deploy the website on the `gh-pages` branch. But you'll need to activate GitHub pages in the repo setting.

The example CI/CD file `.github/workflows/gh-pages.yml` to setup automatic website deployment for GitHub pages

```yml
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

### GitLab hosting

1. Click [import project](https://gitlab.com/projects/new#import_project) and select `Repo by URL`.
1. Copy and paste the git url from [my template](https://github.com/sosiristseng/template-hugo-clarity).

My template includes a `.gitlab-ci.yml` for automatic site building when changes are pushed into GitLab.

You'll need to modify the `HUGO_BASE_URL` entry in `.gitlab-ci.yml` to the URL of yoursite for the website to work properly.

The example CI/CD file `.gitlab-ci.yml` to setup automatic website deployment for GitLab pages

```yml
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
