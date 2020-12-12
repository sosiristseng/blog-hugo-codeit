---
title: "Install from text files"
date: 2020-10-21T17:24:21+08:00
tags: ["cli"]
categories: ["Linux"]
comments: false
---

Passing arguments to a program from a text file by `sed` and `xargs`.

<!--more-->

```bash
cat list1.txt list2.txt | sed 's/#.*$//' | xargs  <cmd>
```

- `sed 's/#.*$//'` filters out those after `#`.
- `xargs` hands over the output from `sed` as argument to `<cmd>`

By using `sed`, comments in the text file are filtered out.

```txt
# Comment

item1
item2  # A comment after an item
    item3  # indent supported
```
