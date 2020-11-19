---
title: Comparison of static site generators
date: 2020-06-29 16:47:33
tags: ["hexo", "hugo", "jupyterbook", "nikola", "jekyll", "docsify"]
categories: ["Hexo"]
---

[Hugo](https://gohugo.io/) has some $\LaTeX$ math [rendering issues](https://github.com/gcushen/hugo-academic/issues/1679) due to the way its markdown [parser](https://github.com/yuin/goldmark) treating `_` `\` characters.

Thus I moved my blog to [Hexo](https://hexo.io/)

<!-- more -->

The Goldmark parser would treat the underscore `_` and the backslash `\` as Markdown syntax and disrupt math rendering by MathJax[^mathjax] or KaTeX[^katex]. The original parser in Hexo, `hexo-renderer-marked`, also has similar issues, but it could be replaced with other ones [^hrpandoc][^hrmi] with serve-side math rendering[^hexofiltermathjax][^markdownitlatex2img] that works perfectly with math blocks with good cleint-side performance.

## Comparision of both static site generators

| Features                                     | Hugo                 | Hexo                | Docsify |
|---                                           |---                   |---                  | ---|
| Written in                                   | Go                   | Javascript          | Javascript (Vue.js)|
| Clean and elegant theme                      | ✔️                    | ✔️                   | ✔️               |
| Fast page generation for live preview        | Super fast           | Fast                | Renders on the fly      |
| Dependency                                   | Standalone           | NPM[^npm]           | Insert javascript & CSS in `index.html`|
| Plugin system                                | A few                | A lot[^hexo-plugin] | ✔️ [^awesomedocsify] |
| Overriding default settings                  | ✔️ [^hugooverride]    | ✔️ [^hexo5]          | ✔️ (in `index.html`) |
| Tags and categories                          | Orthogonal           | Hierarchical        | ❌                   |
| Documentation pages                          | ✔️                    |  ✔️                  | ✔️ |
| Asset management                             | ✔️                    | ⚠️ [^assetfolder]    | ✔️ |
| Code highlighting                            | ✔️                    | ✔️                   | ✔️ |
| LaTeX math rendering                         | ✔️                    | ✔️                   | ✔️ |
| In-site search box                           | ✔️                    | ✔️                   | ✔️  |
| Inline rendering of videos, docs, ...        | ✔️ (shortcodes)       | ✔️  (tag plugins)    | ✔️ (HTML tag + include link)|

## Other static site generators on my radar

- [Jekyll](https://jekyllrb.com/), the default GitHub pages SSG. The performance for generating a lot of posts is to be desired.
- [Nikola](https://getnikola.com/), a SSG with first-class support of `*.md`[^md], `*.rst`[^rst] and *.ipynb`[^ipynb] files.
- [JupyterBook](https://jupyterbook.org), building beautiful, publication-quality books and documents from computational material with executable code blocks. It supports (extended) `*.md`[^md], `*.rst`[^rst] and `*.ipynb`[^ipynb] and is built on Sphinx[^sphinx].
- [fastpages](https://github.com/fastai/fastpages), an easy to use blogging platform Built on Jekyll and GitHub actions, with enhanced support for Jupyter Notebooks (but you still eed escaping sequence for LaTeX math).


## See also

My template sites, fell free to use them.

- [Hugo](https://sosiristseng.github.io/site-hugo-acedemic/)
- [Hexo](https://sosiristseng.github.io/site-hexo-next/)
- [docsify](https://sosiristseng.github.io/site-docsify/)

## Reference
[^mathjax]: [MathJax](https://www.mathjax.org/), a widely-used JS LaTeX math rendering library
[^katex]: [KaTeX](https://katex.org), a faster JS LaTeX math rendering library but with more limited syntax.
[^hrpandoc]: `hexo-renderer-pandoc` <https://github.com/wzpan/hexo-renderer-pandoc>
[^hexofiltermathjax]: `hexo-filter-mathjax` <https://github.com/next-theme/hexo-filter-mathjax>
[^assetfolder]: [Hexo asset Folders](https://hexo.io/docs/asset-folders.html)
[^loveit]: Hugo Loveit theme <https://hugoloveit.com>
[^npm]: Node package manager (NPM) <https://www.npmjs.com>
[^hugotaxonomies]: Hugo treats tags and categories orthogonally, both being a part of the taxonomy system, while Hexo sees tags as non-hierarchical, categories as hierarchical structures for post relationship.
[^hugooverride]: In Hugo, you are able to override the default layout / settings by placing a counterpart file in your site without messing with the theme folder, which is Much more friendly for Git submodules and theme updates. While in Hexo, you may need to edit the settings inside the themes folder, causing conflicts when the theme updates.
[^markdownitlatex2img]: `markdown-it-latex2img` <https://github.com/MakerGYT/markdown-it-latex2img>
[^hrmi]: `hexo-renderer-markdown-it` <https://github.com/hexojs/hexo-renderer-markdown-it>
[^sphinx]: Sphinx Python doc generator <https://www.sphinx-doc.org/en/master/>
[^md]: Markdown
[^rst]: ReStructuredText
[^ipynb]: Jupyter Notebooks
[^awesomedocsify]: Awesome docsify <https://docsify.js.org/#/awesome>
[^hexo5]: Hexo 5.0 release notes <https://hexo.io/news/2020/07/29/hexo-5-released/>
[^hexo-plugin]: <https://hexo.io/plugins/>
