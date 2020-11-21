---
title: Basic Markdown syntax
date: 2020-06-29 16:47:33
tags: ["markdown"]
categories: ["Hexo"]
---

This post showcases the basic Markdown syntax you'll see in major Markdown editors.

<!-- more -->

Taken from
- [Grav](http://learn.getgrav.org/content/markdown)
- [Hugo LoveIt theme](https://hugoloveit.com/basic-markdown-syntax/)
- [Pandoc markdown](https://pandoc.org/MANUAL.html#pandocs-markdown)

The following sections will be

```markdown
What you write in Markdown
```

{What would be rendered}

## Headings

H1 heading `# h1 Heading` could mess up the table of contents so it is not shown.

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

<details>
  <summary>Epcot Center</summary>
  <p>Epcot is a theme park at Walt Disney World Resort featuring exciting attractions, international pavilions, award-winning fireworks and seasonal special events.</p>
</details>

Paragraph in Markdown.

<!--
This is a comment, you should not see me
-->
```

Paragraph in Markdown.

<details>
  <summary>Epcot Center</summary>
  <p>Epcot is a theme park at Walt Disney World Resort featuring exciting attractions, international pavilions, award-winning fireworks and seasonal special events.</p>
</details>

Paragraph in Markdown.

<!--
This is a comment, you should not see me
-->

## Horizontal Rules

```markdown

---

***

```

---

***

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

> This is a block quote.
>
> > A block quote within a block quote.
```

> **Fusion Drive** combines a hard drive with a flash storage (solid-state drive) and presents it as a single logical volume with the space of both drives combined.

> This is a block quote.
>
> > A block quote within a block quote.

## Superscripts and subscripts

```markdown
H~2~O is a liquid.  2^10^ is 1024.
```


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
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa
4. Facilisis in pretium nisl aliquet
5. Nulla volutpat aliquam velit
6. Faucibus porta lacus fringilla vel
7. Aenean sit amet erat nunc
8. Eget porttitor lorem
```

1. Lorem ipsum dolor sit amet
1. Consectetur adipiscing elit
1. Integer molestie lorem at massa
1. Facilisis in pretium nisl aliquet
1. Nulla volutpat aliquam velit
1. Faucibus porta lacus fringilla vel
1. Aenean sit amet erat nunc
1. Eget porttitor lorem

### Ordered but custom start number

```markdown
 9)  Ninth
10)  Tenth
11)  Eleventh
       i. subone
      ii. subtwo
     iii. subthree
```

 9)  Ninth
10)  Tenth
11)  Eleventh
       i. subone
      ii. subtwo
     iii. subthree

## Task lists

```markdown
- [ ] an unchecked task list item
- [x] checked item
```

- [ ] an unchecked task list item
- [x] checked item

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

See [tables generator](https://www.tablesgenerator.com/markdown_tables) for table syntax.
Use use editors like typora or marktext to edit tables with ease.

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

### Simple tables

```markdown
  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1
```

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

### Grid tables

```markdown
+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+

+---------------+---------------+--------------------+
| Right         | Left          | Centered           |
+==============:+:==============+:==================:+
| Bananas       | $1.34         | built-in wrapper   |
+---------------+---------------+--------------------+

```

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+

+---------------+---------------+--------------------+
| Right         | Left          | Centered           |
+==============:+:==============+:==================:+
| Bananas       | $1.34         | built-in wrapper   |
+---------------+---------------+--------------------+

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

You could [attach](https://docs.github.com/en/github/managing-your-work-on-github/file-attachments-on-issues-and-pull-requests) images or documents to GitHub issues for free image hosting.

## MathJax rendering

See {% post_link ssg/md-math "math rendering" %}.

## Emojis

See {% post_link ssg/emoji "emoji" %}.

## Advanced syntax powered by Hexo tag plugins

See {% post_link ssg/adv-syntax "Advanced syntax" %}.
