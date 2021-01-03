---
title: MathJax rendering
date: 2020-07-06 10:31:26
tags: ["mathjax", "hexo"]
categories: ["Static Site Generator"]
mathjax: true
---

To render math without escaping `\` or `_`, you might want to replace the default Markdown renderer (`hexo-renderer-marked`)  in Hexo.

<!-- more -->
## Change Hexo renderer

The guide is partly from the [Hexo Next docs](https://theme-next.js.org/docs/third-party-services/math-equations.html)

Uninstall the default Markdown renderer (`hexo-renderer-marked`) since it sees `\` and `_` character in the math formula as Markdown syntax.

```bash
npm un hexo-renderer-marked
```

Then you can choose between the `pandoc` or the `markdown-it` renderer.

{% tabs renderer %}
<!-- tab pandoc -->

This setup also requires [`pandoc`](https://pandoc.org/installing.html) to be installed.

```bash
npm i hexo-renderer-pandoc
```

Optionally, you can use [hexo-filter-mathjax](https://github.com/next-theme/hexo-filter-mathjax) for server side rendering on `hexo generate`.

<!-- endtab -->

<!-- tab markdown-it -->

Install the `markdown-it` renderer for Hexo.

```bash
npm i hexo-renderer-markdown-it
```

You can either install [hexo-filter-mathjax](https://github.com/next-theme/hexo-filter-mathjax) for server side rendering on `hexo generate`. Or [markdown-it-latex2img](https://github.com/MakerGYT/markdown-it-latex2img) to convert math expressions to SVG images online at <https://math.now.sh/>.

Note for the latter method:
- It does not play well with dark mode (the text will still be black thus invisible) and may mess with fancybox image gallery.
- Add `markdown-it-latex2img` to the plugin list. For the rest of the plugins please checkout the [Wiki](https://github.com/hexojs/hexo-renderer-markdown-it/wiki/Advanced-Configuration).

```yml _config.yml
markdown:
  plugins:
    - markdown-it-latex2img
    - (other plugins...)
```

<!-- endtab -->
{% endtabs %}

The examples below use the pandoc renderer.


## MathJax rendering Guide

See [MathJax quick reference 📄](https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference) and [KaTeX performance test](https://www.intmath.com/cg5/katex-mathjax-comparison.php) for syntax. And you can see the commands by right clck -> Show math as -> TeX commands.

The delimiters `$`, `$$` follow [pandoc's rule](https://docs.mathjax.org/en/latest/basic/mathematics.html#tex-and-latex-input).

## Inline math

Enclosed by `$`...`$`

- Pythagoras theorem: $a^2+b^2=c^2$
- Sum of arithmetic sequence: $S_{n}=n a_{1}+\frac{n(n-1)}{2} d, n \in N^{*}$
- Fundamental theorem of calculus: $\int_{a}^{b} f(x) d x=F(b)-F(a)=\left.F(x)\right|_{a} ^{b}$
- Binomial distribution: $P_{n}(k)=C_{n}^{k} p^{k} q^{n-k} \quad k=0,1,2 \ldots \ldots, n$
- Greek letters: $\Gamma\ \Delta\ \Theta\ \Lambda\ \Xi\ \Pi\ \Sigma\ \Upsilon\ \Phi\ \Psi\ \Omega$

## Block math

Enclosed by `$$`...`$$`

### Repeating fractions

$$
\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} \equiv 1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}} {1+\frac{e^{-8\pi}} {1+\cdots} } } }
$$

### Summation notation

$$
\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)
$$

### Probability density of normal distribution

$$
f(x) = \frac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x-\mu)^2}{2\sigma^2}}
$$

### The ratio of two consecutive numbers in Fibonacci Sequence

$$\lim_{n\to \infty}\frac{A_{n-1}}{A_n}=\frac{\sqrt{5}-1}{2}.$$

### Factorisation

$$
\begin{split}(x−1)(x−3)&=x^2−4x+3 \cr
&=x^2−4x+4−1 \cr
&=(x−2)^2−1
\end{split}
$$

### Dirichlet function

$$
D(x)=
\begin{cases}
1,& x \in Q \cr
0,& x \notin Q
\end{cases}
$$

### Gauss's law

$$
\iiint_{\Omega}\left(\frac{\partial P}{\partial x}+\frac{\partial Q}{\partial y}+\frac{\partial R}{\partial z}\right) d v=\iint_{\Sigma} P d y d z+Q d z d x+R d x d y
$$

### Vandermonde matrix

$$D_{n-1}=\left|\begin{array}{cccc}
1 & 1 & \dots & 1 \cr
x_{2} & x_{3} & \dots & x_{n} \cr
\vdots & \vdots & & \vdots \cr
x_{2}^{n-2} & x_{3}^{n-2} & \dots & x_{n}^{n-2}
\end{array}\right|=\prod_{2 \leq j<i \leq n}\left(x_{i}-x_{j}\right)$$

### System of linear equations

$$
\left\lbrace
\begin{aligned}
a_{11} x_{1}+a_{12} x_{2}+\cdots+a_{1 n} x_{n} &=b_{1} \cr
a_{21} x_{1}+a_{22} x_{2}+\cdots+a_{2 n} x_{n} &=b_{2} \cr
\cdots \cdots \cdots \cr
a_{m 1} x_{1}+a_{m 2} x_{2}+\cdots+a_{m n} x_{n} &=b_{m}
\end{aligned}
\right\rbrace
$$

### Lorenz Equations

$$
\begin{aligned}
\dot{x} &= \sigma(y-x) \cr
\dot{y} &= \rho x - y - xz \cr
\dot{z} &= -\beta z + xy
\end{aligned}
$$

### Cross Product

$$
\mathbf{V}_1 \times \mathbf{V}_2 =
\begin{vmatrix}
\mathbf{i} &\mathbf{j} &\mathbf{k} \cr
\frac{\partial X}{\partial u} & \frac{\partial Y}{\partial u} &0 \cr
\frac{\partial X}{\partial v} & \frac{\partial Y}{\partial v} &0 \cr
\end{vmatrix}
$$

### Maxwell's Equations

$$
\begin{aligned}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} &= \frac{4\pi}{c}\vec{\mathbf{j}} \cr
\nabla \cdot \vec{\mathbf{E}} &= 4 \pi \rho \cr
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} &= \vec{\mathbf{0}} \cr
\nabla \cdot \vec{\mathbf{B}} &= 0 \end{aligned}
$$


## Chemical equations

- `\ce{...}` for chemical equations
- `\pu{...}` for units

Ions and precipitation: $\ce{SO4^2- + Ba^2+ -> BaSO4 v}$

Units: $C_p[\ce{H2O(l)}] = \pu{75.3 J // mol K}$

Ammonia synthesis (notice the arrow length is not adjustable in Mathjax)
$$
\ce{N2 + 3H2 <=>T[ heat and pressure][catalyst] 2NH3}
$$

Photosynthesis

$$\ce{6CO2 + 6H2O ->T[Photons][enzymes] C6H12O6 + 6O2}$$

