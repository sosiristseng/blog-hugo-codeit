---
title: Hexo website setup
date: 2020-07-06 15:26:17
tags: ["hexo", "github", "gitlab", "nodejs"]
categories: ["SSG"]
---

Some notes about setting up my Hexo blog site, as a reminder. 😁

<!-- more -->

## Install Node package manager (NPM)

First of all, install Node package manager (NPM)

- Windows: [Download and install](https://nodejs.org/en/download/)
- MacOS / Linux: [nvm](https://github.com/nvm-sh/nvm)

## Instal Hexo and setup Next theme

```bash
# Install Hexo CLI tool
npm install hexo-cli -g

# Created the website in `blog` folder.
hexo init blog
cd blog

# Install dependencies locally
npm install

npm install hexo-theme-next@latest

# Copy the theme config file for future customization
cp ./node_modules/hexo-theme-next/_config.yml _config.next.yml
```

Then change this line

```yml _config.yml
theme: next
```

Then preview your setup in your browser.

```bash
# Test your setup. This command will open a browser and visit http://localhost:4000. Ctrl+C to exit
hexo server -o --debug
```

### My environment

In `blog` directory

```bash
#################################################
## Installing additional packages for my setup ##
#################################################

# cd blog

# For MathJax sever side rendering
npm un hexo-renderer-marked

# markdown-it and friends
npm i hexo-renderer-markdown-it markdown-it-latex2img markdown-it-abbr markdown-it-deflist markdown-it-emoji markdown-it-footnote markdown-it-imsize markdown-it-ins markdown-it-mark markdown-it-named-headings markdown-it-regexp markdown-it-sub markdown-it-sup markdown-it-task-checkbox markdown-it-kbd

# Word and read time counter
npm i hexo-word-counter

# Local search
npm i hexo-generator-searchdb

# Minifier
npm i hexo-optimize

# Space between CJK characters and Latin alphabets
npm i hexo-pangu
```

Add the following lines for `markdown-it`

```yml _config.yml
markdown:
  render:
    html: true
    xhtmlOut: false
    breaks: true
    linkify: true
    typographer: true
    quotes: '“”‘’'
  plugins:
    - markdown-it-abbr
    - markdown-it-footnote
    - markdown-it-ins
    - markdown-it-sub
    - markdown-it-sup
    - markdown-it-deflist
    - markdown-it-imsize
    - markdown-it-mark
    - markdown-it-regexp
    - markdown-it-task-checkbox
    - markdown-it-named-headings
    - markdown-it-latex2img
    - markdown-it-kbd
    - markdown-it-deflist
    - name: markdown-it-emoji
      options:
        shortcuts: {}
  anchors:
    level: 2
    collisionSuffix: 'v'
    permalink: true
    permalinkClass: header-anchor
    permalinkSymbol: ''
```

Add the following lines for `hexo-optimize`
```yml _config.yml
filter_optimize:
  enable: true
  # remove the surrounding comments in each of the bundled files
  remove_comments: false
  css:
    # minify all css files
    minify: true
    # bundle loaded css files into one
    bundle: true
    # use a script block to load css elements dynamically
    delivery: true
    # make specific css content inline into the html page
    #   - only support the full path
    #   - default is ['css/main.css']
    inlines:
    excludes:
  js:
    # minify all js files
    minify: true
    # bundle loaded js files into one
    bundle: true
    excludes:
  # set the priority of this plugin,
  # lower means it will be executed first, default of Hexo is 10
  priority: 12
```

And follow the [official instructions](https://theme-next.js.org/docs/getting-started/) to get started.

## Deployment

### GitHub pages

See also: [GitHub action for GitHub pages](https://github.com/peaceiris/actions-gh-pages)

The following as an example:

```yml .github/workflows/build.yml
# https://github.com/peaceiris/actions-gh-pages
name: Build

on:
  push:
    branches:
      - source

jobs:
  build:
    name: "Build and Deploy"
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2

    - name: Setup Node
      uses: actions/setup-node@v2.1.1
      with:
        node-version: '12.x'

    # Caching dependencies to speed up workflows. (GitHub will remove any cache entries that have not been accessed in over 7 days.)
    - name: Cache Dependencies
      uses: actions/cache@v2
      with:
        path: ~/.npm
        key: ${{ runner.os }}-node-${{ hashFiles('**/package-lock.json') }}
        restore-keys: |
          ${{ runner.os }}-node-

    - name: Build website
      run: npm ci && npm run build

    - name: Deploy
      uses: peaceiris/actions-gh-pages@v3
      with:
        personal_token: ${{ secrets.GITHUB_TOKEN }}
        publish_branch: master
        publish_dir: ./public
        force_orphan: true
        commit_message: ${{ github.event.head_commit.message }}
```

### Gitlab pages

Since [GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/) only care about the `public` folder, regardless the branch name, you can safely put content in the `master` branch and utilize the [CI/CD](https://docs.gitlab.com/ee/ci/) feature to publish the content upon pushing the markdown files. It works in either public orprovate repositories.

Create a file in your site root folder like this:

```yaml .gitlab-ci.yml
image: node:lts-alpine

cache:
  paths:
    - node_modules/

variables:
  GIT_SUBMODULE_STRATEGY: recursive

before_script:
  - npm install hexo-cli -g
  - npm install
  - hexo generate

test:
  script:
    - echo 'Success'
  except:
    - master

pages:
  script:
    # Compress assets
    - find public -type f -regex '.*\.\(htm\|html\|txt\|text\|js\|css\|svg\|xml\)$' -exec gzip -f -k {} \;
  artifacts:
    paths:
      - public
  only:
    - master

```

Then upload your site to Gitlab via GUI tools (e.g. [Gitkraken](https://www.gitkraken.com/) ) or the following bash [script](https://docs.gitlab.com/ee/gitlab-basics/create-project.html#push-to-create-a-new-project).

```bash
git push --set-upstream "https://gitlab.com/${USER_NAME}/${USER_NAME}.gitlab.io.git" master
```

Checkout the [pipeline status](https://docs.gitlab.com/ee/ci/pipelines/#view-pipelines) in your repository.

Your site will be served at `https://<yourname>.gitlab.io` within 30 minutes.

## See also

- Setting up Hexo site with SSH and GitHub actions (Traditional Chinese): <https://op30132.github.io/2020/02/05/github-action/>
