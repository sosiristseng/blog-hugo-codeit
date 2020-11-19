---
title: Basic Markdown syntax 
date: 2020-06-29 16:47:33
tags: ["markdown"]
categories: ["Hexo"]
---

This post showcases the basic Markdown syntax you'll see in major Markdown editors.

<!-- more -->

Some are taken from [Grav](http://learn.getgrav.org/content/markdown), [Hugo LoveIt theme](https://hugoloveit.com/basic-markdown-syntax/) documentation.

The following sections will be

📄: documentation
💡: tips
🔨: tool

```markdown
What you write in Markdown
```

What would be rendered

## Headings

```markdown
## h2 Heading
### h3 Heading
#### h4 Heading
##### h5 Heading
###### h6 Heading
```

## h2 Heading
### h3 Heading
#### h4 Heading
##### h5 Heading
###### h6 Heading

## Inline HTML

HTML tags are supported if you need a particular HTML tag or html comments.

```html
Paragraph in Markdown.

<div class="class">
    This is <b>HTML</b>
</div>

Paragraph in Markdown.

<!--
This is a comment, you should not see me
-->
```

Paragraph in Markdown.

<div class="class">
    This is <b>HTML</b>
</div>

Paragraph in Markdown.

<!--
This is a comment, you should not see me
-->

## Horizontal Rules

```markdown
---
```

---

## Emphasis

Bold, italics, and strikethrough can be used either indivisually or in combination.


```markdown
**rendered as bold text**

__rendered as bold text__

*rendered as italicized text*

_rendered as italicized text_

~~Strike through this text~~
```


**rendered as bold text**

__rendered as bold text__

*rendered as italicized text*

_rendered as italicized text_

~~Strike through this text~~

## Blockquotes


```markdown
> **Fusion Drive** combines a hard drive with a flash storage (solid-state drive) and presents it as a single logical volume with the space of both drives combined.

> One
> Two
```

> **Fusion Drive** combines a hard drive with a flash storage (solid-state drive) and presents it as a single logical volume with the space of both drives combined.

Multiline quotes

> One
> Two

## Lists

### Unordered

```markdown
* Lorem ipsum dolor sit amet
* Consectetur adipiscing elit
* Integer molestie lorem at massa
* Facilisis in pretium nisl aliquet
* Nulla volutpat aliquam velit
  * Phasellus iaculis neque
  * Purus sodales ultricies
  * Vestibulum laoreet porttitor sem
  * Ac tristique libero volutpat at
* Faucibus porta lacus fringilla vel
* Aenean sit amet erat nunc
* Eget porttitor lorem
```


* Lorem ipsum dolor sit amet
* Consectetur adipiscing elit
* Integer molestie lorem at massa
* Facilisis in pretium nisl aliquet
* Nulla volutpat aliquam velit
  * Phasellus iaculis neque
  * Purus sodales ultricies
  * Vestibulum laoreet porttitor sem
  * Ac tristique libero volutpat at
* Faucibus porta lacus fringilla vel
* Aenean sit amet erat nunc
* Eget porttitor lorem

### Ordered

:bulb: If you just use 1. for each number, Markdown will automatically number each item.

```markdown
1. Lorem ipsum dolor sit amet
1. Consectetur adipiscing elit
1. Integer molestie lorem at massa
1. Facilisis in pretium nisl aliquet
1. Nulla volutpat aliquam velit
1. Faucibus porta lacus fringilla vel
1. Aenean sit amet erat nunc
1. Eget porttitor lorem
```

1. Lorem ipsum dolor sit amet
1. Consectetur adipiscing elit
1. Integer molestie lorem at massa
1. Facilisis in pretium nisl aliquet
1. Nulla volutpat aliquam velit
1. Faucibus porta lacus fringilla vel
1. Aenean sit amet erat nunc
1. Eget porttitor lorem

## Markdown Code blocks 

Inline monospace

```markdown
`code here`
```

`code here`

Block fenced code, with syntax highlighting

``````markdown
```python
print("Hey!")
```
``````

```python
print("Hey!")
```

## Tables

:bulb: See [tables generator 🔨](https://www.tablesgenerator.com/markdown_tables) for syntax.


```markdown
| Option | Description |
| ------ | ----------- |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |
```

| Option | Description |
| ------ | ----------- |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |


## Links

```makrdown
<https://assemble.io>
<contact@revolunet.com>
[Assemble](https://assemble.io)
[Upstage](https://github.com/upstage/ "Visit Upstage!")
```

<https://assemble.io>
<contact@revolunet.com>
[Assemble](https://assemble.io)
[Upstage](https://github.com/upstage/ "Visit Upstage!")

## Footnotes

:bulb: Footnotes are automatically numbered.

```markdown
This is a digital footnote[^1].
This is a footnote with "label"[^label]

[^1]: This is a digital footnote
[^label]: This is a footnote with "label"
```

This is a digital footnote[^1]
This is a footnote with "label"[^label]

[^1]: This is a digital footnote
[^label]: This is a footnote with "label"

## Keyboard strokes

[markdown-it-kbd](https://www.npmjs.com/package/markdown-it-kbd) is needed.

```markdown
[[Ctrl]] + [[Alt]] + [[Delete]]
```

[[Ctrl]] + [[Alt]] + [[Delete]]


## Images

```markdown
![Minion](https://octodex.github.com/images/minion.png)
![Alt text](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")
```

![Minion](https://octodex.github.com/images/minion.png)
![Alt text](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

It is actually easier to use absolute paths than relative ones in Hexo. 

You could [attach](https://docs.github.com/en/github/managing-your-work-on-github/file-attachments-on-issues-and-pull-requests) images or documents to GitHub issues for free hosting.

## MathJax rendering

See {% post_link md-math "math rendering" %}.

## Emojis

See {% post_link emoji "emoji" %}.
