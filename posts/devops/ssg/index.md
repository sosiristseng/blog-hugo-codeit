# Comparisons of static site generators


Pros and Cons of static site site generators (SSGs).

<!--more-->

## Prologue

I've always wanted to have a tech blog that is
- looking nice 🥰
- fast and responsive
- having full-text search
- tracking the progress I made
- browser through keywords for my articles
- displaying math and chemical expressions

## Hugo

[Hugo](https://gohugo.io/) is the world’s fastest framework for building websites, written in Go.

**Pros 👍**
- Single dependency with one `hugo` excutable only.
- Extremely fast. It builds a large website within 5 seconds.
- Able to customize / override default settings without messing up the theme files.[^hugooverride]

[^hugooverride]: In Hugo, you are able to [override default layouts and settings](https://zwbetz.com/override-a-hugo-theme/) by placing counterpart file(s) in your site folder. Hugo will look at your custom setting first without messing with the theme folder, which is much more friendly for Git submodules and theme updates.

**Cons 👎**
- A limited number of extensions.
- GoLang knowledge is required if you want to make templates.

**Themes**
- [codeIT](https://github.com/sunt-programator/CodeIT) : used in this blog.
- [clarity](https://github.com/chipzoller/hugo-clarity)
- [color your world](https://gitlab.com/rmaguiar/hugo-theme-color-your-world)
- [meme](https://github.com/reuixiy/hugo-theme-meme)
- [zzo](https://github.com/zzossig/hugo-theme-zzo)

## Hexo

**Pros 👍**
- A huge set of plugins thanks to the npm ecosystem.
- Plentiful Chinese resources.
- Relatively fast. It builds a large website under 1 minute.

**Cons 👎**
- Hundreds of npm dependencies. If you are familiar with npm packages it might not be a problem.
- For LaTeX math typesetting, you need to change the renderer to either the pandoc one, which requires the `pandoc` binary or the markdown-it one, in which chemical typesetting (`mhchem`) does not work well.
- More complicated to override the templates in the theme.
- Less intuitive [asset management](https://hexo.io/docs/asset-folders.html).

**Themes**
- [Next](https://theme-next.js.org/)
- [fluid](https://fluid-dev.github.io/hexo-fluid-docs/)
- [butterfly](https://butterfly.js.org/)

## Docsify

[Docsify](https://docsify.js.org/) renders Markdown files to HTML on-the-fly.

**Pros 👍**
- Minimal dependency: just one `index.html` with JS/CSS and you're good to go.
- Fast. It skips the building step and renders Markdown file on-the-fly.
- Handy extensions on [awesome docsify](https://docsify.js.org/#/awesome).

**Cons 👎**
- No support for tags and categories.
- KaTeX extension does not support `mhchem`.

## Others

- [Jekyll](https://jekyllrb.com/), the default GitHub pages SSG written in Ruby. Generating a large site is slower compared to either Hugo or Hexo, taking several minutes.
- [Nikola](https://getnikola.com/), a SSG written in Python with first-class support of Markdown (`*.md`), reStructuredText (`*.rst`) and Jupyter Notebook (`*.ipynb`) files.
- [JupyterBook](https://jupyterbook.org), powered by the [Sphinx](https://www.sphinx-doc.org/en/master/) python documentation generator, builds beautiful, publication-quality books and documents from Markdown (`*.md`), reStructuredText (`*.rst`) and Jupyter Notebook (`*.ipynb`) files.

## Conclusion

Right now I use Hugo with codeIT theme in my blog (see the footer), but keep some templates in case I need to make the switch.

- Hexo: <https://github.com/sosiristseng/template-hexo-next>
- Docsify: <https://github.com/sosiristseng/template-docsify>

