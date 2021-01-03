---
title: Extended Markdown syntax
date: 2020-06-29 17:47:33
tags: ["markdown", "tag plugin", "hexo"]
categories: ["Static Site Generator"]
---

This post shows tag plugins, an extension of Markdown syntax, in the documentations of the [Hexo static site generator](https://hexo.io/docs/tag-plugins.html) and the [Next theme](https://theme-next.js.org).

<!-- more -->

The following sections would be

```markdown
What you write in Markdown
```

What are rendered


## Quotes

### Centered Quote

[Centered Quote@Hexo](https://theme-next.js.org/docs/tag-plugins/#Centered-Quote)

```markdown
{% centerquote %}Something{% endcenterquote %}
<!-- Or -->
{% cq %}Something{% endcq %}
```

{% cq %}Elegant in code, simple in core{% endcq %}

### Pull Quote

[Pull Quote@Hexo](https://hexo.io/docs/tag-plugins.html#Pull-Quote)

Similar to the regular markdown `>` quote.

```markdown
{% pullquote %}
content
{% endpullquote %}
```

{% pullquote %}
content
{% endpullquote %}

### Block Quote

[Block Quote @ Hexo](https://hexo.io/docs/tag-plugins.html#Block-Quote)

Quotes plus author and book title.

```markdown
{% blockquote David Levithan, Wide Awake %}
Do not just seek happiness for yourself. Seek happiness for all. Through kindness. Through mercy.
{% endblockquote %}
```

{% blockquote David Levithan, Wide Awake %}
Do not just seek happiness for yourself. Seek happiness for all. Through kindness. Through mercy.
{% endblockquote %}

## Code blocks

In addition to regular markdown code blocks, Hexo provides code block tag plugin with more options

### Hexo tag plugin

[Code Block @ Hexo](https://hexo.io/docs/tag-plugins.html#Code-Block)

```markdown
{% codeblock [title] [lang:language] [url] [link text] [additional options] %}
code snippet
{% endcodeblock %}

{% codeblock _.compact lang:javascript http://underscorejs.org/#compact Underscore.js %}
_.compact([0, 1, false, 2, '', 3]);
=> [1, 2, 3]
{% endcodeblock %}
```

{% codeblock _.compact lang:javascript http://underscorejs.org/#compact Underscore.js %}
_.compact([0, 1, false, 2, '', 3]);
=> [1, 2, 3]
{% endcodeblock %}

### Github gist

[Gist @ Hexo](https://hexo.io/docs/tag-plugins.html#Gist)

```markdown
{% gist sosiristseng/5406c151b54ed182bf8e57e1a2a4c57e %}
```

{% gist sosiristseng/5406c151b54ed182bf8e57e1a2a4c57e %}

### Include code

[Include Code @ Hexo](https://hexo.io/docs/tag-plugins.html#Include-Code)

The directory containing code is defined at `code_dir` option in `_config.yml`,
default to `code_dir: downloads/code`, corresponding to `${SITE}/source/downloads/code`

{% note default %}
```markdown
{% include_code [title] [lang:language] [from:line] [to:line] path/to/file %}
```
{% endnote %}

```markdown
{% include_code lang:bash bootstrap-conda.sh %}
```

{% include_code lang:bash bootstrap-conda.sh %}

## Link to other post

[Include Posts @ Hexo](https://hexo.io/docs/tag-plugins#Include-Posts)

```markdown

{% post_link filename [title] [escape]  %}


{% post_link ssg/emoji "Emoji support" %}
```

{% post_link ssg/emoji "Emoji support" %}

## Image

[Image@Hexo](https://hexo.io/docs/tag-plugins.html#)

```markdown

{% img [class names] /path/to/image [width] [height] '"title text" "alt text"' %}

{% img https://octodex.github.com/images/stormtroopocat.jpg 200 200 '"The Stormtroopocat" "Alt text"' %}
```

{% img https://octodex.github.com/images/stormtroopocat.jpg 200 200 '"The Stormtroopocat" "Alt text"' %}

## Videos

### Direct URL

Plays `.mp4` or `.webm` files on the internet.

[video @ Next](https://theme-next.js.org/docs/tag-plugins/video.html)

```markdown
{% video https://upload.wikimedia.org/wikipedia/commons/transcoded/c/c4/Physicsworks.ogv/Physicsworks.ogv.240p.vp9.webm %}
```

{% video https://upload.wikimedia.org/wikipedia/commons/transcoded/c/c4/Physicsworks.ogv/Physicsworks.ogv.240p.vp9.webm %}

### YouTube videos

[YouTube @ Hexo](https://hexo.io/docs/tag-plugins.html#YouTube)

```markdown
{% youtube JtUAAXe_0VI %}
```

{% youtube JtUAAXe_0VI %}

### Vimeo

[Vimeo @ Hexo](https://hexo.io/docs/tag-plugins.html#Vimeo)

```markdown
{% vimeo 63830488 %}
```

{% vimeo 63830488 %}

## Note

[note @ Hexo](https://theme-next.js.org/docs/tag-plugins/note.html). Similar to [admonitions @ Hugo LoveIt](https://hugoloveit.com/theme-documentation-extended-shortcodes/#4-admonition).

```yml _config.next.yml
# Note tag (bs-callout)
note:
  # Note tag style values:
  #  - simple    bs-callout old alert style. Default.
  #  - modern    bs-callout new (v2-v3) alert style.
  #  - flat      flat callout style with background, like on Mozilla or StackOverflow.
  #  - disabled  disable all CSS styles import of note tag.
  style: simple
  icons: true
  # Offset lighter of background in % for modern and flat styles (modern: -12 | 12; flat: -18 | 6).
  # Offset also applied to label tag variables. This option can work with disabled note tag.
  light_bg_offset: 0
```

```markdown
{% note %}
### Header
(without define class style)
{% endnote %}

{% note default %}
### Default Header
Welcome to [Hexo!](https://hexo.io)
{% endnote %}

{% note primary %}
### Primary Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note info %}
### Info Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note success %}
### Success Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note warning %}
### Warning Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note danger %}
### Danger Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note info no-icon %}
### No icon note
Note **without** icon: `note info no-icon`

note info, note info, note info
note info, note info, note info
note info, note info, note info
{% endnote %}

{% note success %}
### Codeblock in note
{% code %}
code block in note tag
code block in note tag
code block in note tag
{% endcode %}
{% endnote %}

{% note default %}
### Table in Note
| 1 | 2 |
| - | - |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |
{% endnote %}

```

{% note %}
### Header
(without define class style)
{% endnote %}

{% note default %}
### Default Header
Welcome to [Hexo!](https://hexo.io)
{% endnote %}

{% note primary %}
### Primary Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note info %}
### Info Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note success %}
### Success Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note warning %}
### Warning Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note danger %}
### Danger Header
**Welcome** to [Hexo!](https://hexo.io)
{% endnote %}

{% note info no-icon %}
### No icon note
Note **without** icon: `note info no-icon`

note info, note info, note info
note info, note info, note info
note info, note info, note info
{% endnote %}

{% note success %}
### Codeblock in note
{% code %}
code block in note tag
code block in note tag
code block in note tag
{% endcode %}
{% endnote %}

{% note default %}
### Table in Note
| 1 | 2 |
| - | - |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |
{% endnote %}

## Tabs

[tabs @ Next](https://theme-next.js.org/docs/tag-plugins/tabs.html)

{% note default %}
```markdown
{% tabs Sixth Unique name %}
<!-- tab Solution 1@text-width -->
**This is Tab 1.**
<!-- endtab -->

<!-- tab Solution 2 @font -->
**This is Tab 2.**
<!-- endtab -->

<!-- tab Solution 3@bold -->
**This is Tab 3.**
<!-- endtab -->
{% endtabs %}
```
{% endnote %}

{% tabs Sixth Unique name %}
<!-- tab Solution 1@text-width -->
**This is Tab 1.**
<!-- endtab -->

<!-- tab Solution 2 @font -->
**This is Tab 2.**
<!-- endtab -->

<!-- tab Solution 3@bold -->
**This is Tab 3.**
<!-- endtab -->
{% endtabs %}

Define a tab via `<!-- tab title @icon --> ... <!-- endtab -->`. Both `title` and `font` are optional.

## Label

[label @ Next](https://theme-next.js.org/docs/tag-plugins/label.html)

Similar to `==mark==` in `markdown-it`, but with more options.

```markdown
Lorem {% label @ipsum %} {% label primary@dolor sit %} amet, consectetur {% label success@adipiscing elit, %} sed {% label info@do eiusmod %} tempor incididunt ut labore et dolore magna aliqua.

Ut enim *{% label warning @ad %}* minim veniam, quis **{% label danger@nostrud %}** exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in voluptate ~~{% label default @velit %}~~ <mark>esse</mark> cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```

Lorem {% label @ipsum %} {% label primary@dolor sit %} amet, consectetur {% label success@adipiscing elit, %} sed {% label info@do eiusmod %} tempor incididunt ut labore et dolore magna aliqua.

Ut enim *{% label warning @ad %}* minim veniam, quis **{% label danger@nostrud %}** exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in voluptate ~~{% label default @velit %}~~ <mark>esse</mark> cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Button

[button @ Next](https://theme-next.js.org/docs/tag-plugins/button.html)

```markdown
{% btn #, Text %}{% btn #, Text & Title,, Title %}

<!-- with icon -->

<div>{% btn #,, home %}{% btn #,, home %}{% btn #,, home %}</div>

<p>{% btn #, Text & Icon (buggy), home %}
{% btn #, Text & Icon (fixed width), home fa-fw %}</p>

```

{% btn #, Text %}{% btn #, Text & Title,, Title %}


<div>{% btn #,, home %}{% btn #,, home %}{% btn #,, home %}</div>

<p>{% btn #, Text & Icon (buggy), home %}
{% btn #, Text & Icon (fixed width), home fa-fw %}</p>


## Link Grid

[link-grid @ Next](https://theme-next.js.org/docs/tag-plugins/link-grid.html)

```markdown
{% linkgrid %}
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
% Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
{% endlinkgrid %}
```

{% linkgrid %}
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
% Theme NexT | https://theme-next.js.org/ | Stay Simple. Stay NexT. | https://hexo.bootcss.com/logo.png
{% endlinkgrid %}


## Others
- [iframe@ Hexo](https://hexo.io/docs/tag-plugins.html#iframe)
- [PDF files @ Next](https://theme-next.js.org/docs/tag-plugins/pdf.html)
- [Group Pictures @ Next](https://theme-next.js.org/docs/tag-plugins/group-pictures.html)
- [Caniuse @ Next](https://theme-next.js.org/docs/tag-plugins/caniuse.html)
