---
title: Setup a free personal blog using Hexo
date: 2020-07-06 15:26:17
tags: ["hexo", "github", "gitlab", "nodejs"]
categories: ["Static Site Generator"]
---

Some notes to set up my [Hexo](https://hexo.io/) blog site, as a reminder. 😁

Instead of starting from scratch, see [my template site](https://github.com/sosiristseng/site-hexo-next). Fell free to use it as a starting point.

<!-- more -->

## Node package manager

Install the node package manager (npm)

- Windows: Download and install from the [official website](https://nodejs.org/en/download/).
- MacOS / Linux: [nvm](https://github.com/nvm-sh/nvm) is recommended.

## Hexo and and Next theme

Install the `hexo` command:

```bash
npm install hexo-cli -g
```

Setup `Next` theme:

```bash
# Created the website in `blog` folder.
hexo init blog
cd blog

# Install Hexo dependencies locally
npm install

# Install Next theme
npm install hexo-theme-next

# Copy the theme config file for future customization
cp ./node_modules/hexo-theme-next/_config.yml _config.next.yml

# Remove the original landscape theme
rm -rf ./themes/landscape
```

Then change this line in `_config.yml`

```yml _config.yml
theme: next
```

Then preview your setup in your browser.

```bash
# Test your setup. This command will open a browser and visit http://localhost:4000. Ctrl+C to exit
hexo server -o --debug
```

Press [[Ctrl]] + [[C]] to exit.

## Mathjax rendering

The default renderer `hexo-renderer-marked` has a hard time dealing with LaTeX syntax. (notably `_` and `\`)

Fortunately, Hexo's markdown renderer is switchable:

{% tabs renderer %}
<!-- tab pandoc renderer -->

[Install `pandoc`](https://pandoc.org/installing.html) in your system and run the following command in `blog` folder:

```bash
npm un hexo-renderer-marked
npm i hexo-renderer-pandoc
```

Enable MathJax rendering in `_config.next.yml`

```yml _config.next.yml
math:
  mathjax:
    enable: true
```

Set `mathjax: true` in the frontmatter of your pages with LaTeX math.

<!-- endtab -->

<!-- tab markdown-it renderer -->

Replace `hexo-renderer-marked` for `hexo-renderer-markdown-it`

```bash
npm un hexo-renderer-marked
npm i hexo-renderer-markdown-it markdown-it-latex2img markdown-it-imsize markdown-it-named-headings markdown-it-regexp markdown-it-task-checkbox markdown-it-kbd
```

Add the [settings](https://github.com/hexojs/hexo-renderer-markdown-it/wiki/Advanced-Configuration) of `hexo-renderer-markdown-it` in `_config.yml` like this:

```yml _config.yml
markdown:
  render:
    html: true
    xhtmlOut: false
    breaks: true
    linkify: true
    typographer: false
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

<!-- endtab -->

{% endtabs %}

## Other Hexo plugins

```bash
# Word and read time counter
npm i hexo-word-counter

# Local search
npm i hexo-generator-searchdb

# Emoji tag plugin
npm i hexo-filter-emoji

# Refresh browser in hexo server
# In development environment only
npm i hexo-browsersync -D
```

And follow the [Hexo Next instructions](https://theme-next.js.org/docs/getting-started/) to suit your needs.

## Deployment

### GitHub pages

From
- [GitHub action for GitHub pages](https://github.com/peaceiris/actions-gh-pages)
- [Setup pandoc action](https://github.com/r-lib/actions/tree/master/setup-pandoc)

Add a yaml file `.github/workflows/deploy.yml` for github workflows.

{% include_code cicd/github-pages-hexo.yml %}

And publish your repository to GitHub:

- Personal / Org website: repo `username.github.io` -> Will be deployed to `https://username.github.io/`
- Project website: repo `projectname` -> Will be deployed to `https://username.github.io/projectname/`

Don;t forget to set the proper `url` and `root` in `_config.yml`.

### Gitlab pages

[GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/) only cares about the `public` folder.

Create a file `.gitlab-ci.yml` in your site root folder:

{% include_code cicd/gitlab-pages-hexo.yml %}

Checkout the [pipeline status](https://docs.gitlab.com/ee/ci/pipelines/#view-pipelines) in your repository.

And upload your repo to GitLab:

- Personal / Org website: repo `username.gitlab.io` -> Will be deployed to `https://username.gitlab.io/`
- Project website: repo `projectname` -> Will be deployed to `https://username.gitlab.io/projectname/`

Don;t forget to set the proper `url` and `root` in `_config.yml`.
