---
title: Emoji support
date: 2020-07-01 00:00:33
tags: ["emoji", "markdown", "hexo-filter-emoji", "markdown-it-emoji"]
categories: ["Hexo"]
---

This post showed how to render [emoji](https://github.com/ikatyang/emoji-cheat-sheet) in Hexo sites 😀.

<!-- more -->

## Choice of render

### `hexo-renderer-marked` (the default) or `hexo-renderer-pandoc`

Install `hexo-filter-emoji`

```bash
npm i hexo-filter-emoji
```

**Usage**

Wrap between two colons or

```markdown
{% emoji sparkles %}
```

{% emoji sparkles %}

### `hexo-renderer-markdown-it`

Install both `hexo-renderer-markdown-it` and `markdown-it-emoji`

```bash
npm un hexo-renderer-marked
npm i markdown-it-emoji hexo-renderer-markdown-it
```

**Usage**

```markdown
:sparkles:
```
