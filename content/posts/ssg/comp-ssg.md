---
title: Comparison of static site generators
date: 2020-06-29 16:47:33
tags: ["hexo", "hugo", "jupyterbook", "nikola", "jekyll", "docsify"]
categories: ["Static Site Generator"]
---

<!-- more -->

## Comparision of both static site generators

| Features                                     | Hugo                 | Hexo                | Docsify |
|---                                           |---                   |---                  | ---|
| Written in                                   | Go                   | Javascript          | Javascript (Vue.js)|
| Clean and elegant theme                      | ✔️                    | ✔️                   | ✔️               |
| Fast page generation for live preview        | Super fast           | Fast                | Renders on the fly      |
| Dependency                                   | Standalone binary    | NPM[^npm]           | Insert one javascript & one CSS in `index.html`|
| Plugin system                                | Few                  | A lot[^hexo-plugin] | ✔️ [^awesomedocsify] |
| Overriding default settings                  | ✔️ [^hugooverride]    | ✔️ [^hexo5]          | ✔️ (in `index.html`) |
| Tags and categories                          | Orthogonal[^hugotaxonomies]  | Hierarchical categories       | ❌                   |
| Documentation pages                          | ✔️                    |  ✔️                  | ✔️ |
| Asset management                             | ✔️                    | ⚠️ [^assetfolder]    | ✔️ |
| Code highlighting                            | ✔️                    | ✔️                   | ✔️ |
| LaTeX math rendering                         | ✔️                    | ✔️                   | ✔️ |
| In-site search box                           | ✔️                    | ✔️                   | ✔️ |
| Inline rendering of videos, docs, ...        | ✔️ (shortcodes)       | ✔️  (tag plugins)    | ✔️ (HTML tag + include link)|

## Other static site generators on my radar

- [Jekyll](https://jekyllrb.com/), the default GitHub pages SSG. The performance for generating a lot of posts is to be desired.
- [Nikola](https://getnikola.com/), a SSG with first-class support of `*.md`[^md], `*.rst`[^rst] and *.ipynb`[^ipynb] files.
- [JupyterBook](https://jupyterbook.org), building beautiful, publication-quality books and documents from computational material with executable code blocks. It supports (extended) `*.md`[^md], `*.rst`[^rst] and `*.ipynb`[^ipynb] and is built on Sphinx[^sphinx].

## Reference
[^mathjax]: [MathJax](https://www.mathjax.org/), a widely-used JS LaTeX math rendering library
[^katex]: [KaTeX](https://katex.org), a faster JS LaTeX math rendering library but with more limited syntax.
[^hrpandoc]: `hexo-renderer-pandoc` <https://github.com/wzpan/hexo-renderer-pandoc>
[^hexofiltermathjax]: `hexo-filter-mathjax` <https://github.com/next-theme/hexo-filter-mathjax>
[^assetfolder]: [Hexo asset Folders](https://hexo.io/docs/asset-folders.html)
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
