# Tufte Hugo Theme
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.0-4baaaa.svg)](code_of_conduct.md)
[![build github pages](https://github.com/slashformotion/hugo-tufte/actions/workflows/build-site.yml/badge.svg)](https://github.com/slashformotion/hugo-tufte/actions/workflows/build-site.yml)

Hugo-Tufte is a minimalist blog-like theme for the
[static site generator Hugo](https://gohugo.io) that
attempts to be a faithful implementation of the
[Tufte-css](https://github.com/edwardtufte/tufte-css) project.
It supports mathematical typesetting via [katex](https://katex.org/) or [MathJax](https://www.mathjax.org).
By utilizing copious partial templates the theme is largely customizable.

This is a fork of the original [hugo-tufte](https://github.com/shawnohare/hugo-tufte). 

## Quickstart

### Prerequisite: Hugo Extended

You'll need to install Hugo Extended for this theme to test it locally, since this theme uses SCSS.
- On Windows:
  - Using [Chocolatey](https://chocolatey.org/):
    ```powershell
    choco install hugo-extended # remember, you might need admin privs
    ```

### For a new site

```powershell
# this code is shell-agnostic, and should work in cmd, powershell, bash, zsh....
hugo new site <your-site-name> # create your new site with hugo in your pwd
cd <your-site-name>\themes\    # cd into the themes directory
git clone <this-git-repo>      # HTTPS link @ the top of the page if you've never done this before
```

Add `theme = 'hugo-tufte'` to your `config.toml` to let your site know to actually use _this_ theme, specifically.

Then run `hugo server -D` and open up `localhost:1313/` or wherever it says in Firefox.

## Features

### Math

[Katex](https://katex.org/) or [MathJax](https://www.mathjax.org) renders LaTeX written inside of markdown files. LaTeX can be written more or less as normal. Some examples:

- This `$\frac{1}{2}$` will be rendered inline.
- A simple displayed equation: `$$f(x, y) := e^{x^2 - y^2}.$$`

There currently seems to be some weirdness with other environments,
such as the `aligned` environment (`align*` is not supported by katex).  These environments will render provided
they are wrapped in `<p>` tags and blank lines.  The snippet below should
render correctly.
```latex
Let $G$ be a finite group with exponent $2$.  Then every element is
an involution, hence for any $x$, $y$ in $G$ we have:

<p>
\begin{aligned}
  e &= (xy)^2  \\
  &=xyxy \implies \\
  y^{-1} &= xyx \implies \\
  y^{-1}x^{-1} &= xy,
\end{aligned}
</p>

establishing that $G$ is abelian.
```

### Site Parameters

The site specific parameters that this theme recognizes are:

- `subtitle` string: This is displayed under the main title.
- `showPoweredBy` boolean: if true, display a shoutout to Hugo and this theme.
- `copyrightHolder` string: Inserts the value in the default copyright notice.
- `copyright` string: Custom copyright notice.
- `math` boolean: Site wide kill switch for Latex support
- `katex` boolean: if "katex" is set to true katex will be used to render LaTex, if not MathJax will be used instead. (Set to `true` by default)
- `codeBlocksDark` boolean: if true, code blocks will use a dark theme.

***Socials***

You can add links to your social media profile by using thoses parameters:
- `github`: string
- `gitlab`: string
- `twitter`: string
- `patreon`: string
- `youtube`: string
- `medium`: string
- `reddit`: string
- `stackoverflow`: string
- `instagram`: string
- `mastodon`: string
- `orcid`: string
- `google_scholar`: string

Please see [`exampleSite/config.toml`](https://github.com/slashformotion/hugo-tufte/blob/master/exampleSite/config.toml#L30) to see the full implementation with exemples.

### Page Parameters

- `hideDate` boolean: if true, do not display a page date.  When `meta` is set to
  true, `hideDate` takes greater precedence.
- `hideReadTime` boolean: if true, do not display the page's reading time
  estimate.  When `meta` is set to true, `hideReadTime` takes greater precedence.
- `math` boolean: if true, try to render the page's LaTeX code using MatheJax.
- `meta` boolean: if true, display page metadata such as author, date, categories provided
  these page parameters exist and are not overridden.  Content in the `/post` directory,
  (i.e., pages of type "post") ignore this parameter.
- `toc` boolean: if true, display the table of contents for the page.

### Shortcodes

This theme provides the following shortcodes in an attempt to completely
support all the features present in the
[Tufte-css](https://github.com/edwardtufte/tufte-css) project.

- `blockquote`
  - **Description**: Wrap text in a blockquote and insert optional
  `cite` or `footer` metadata.
  - **Usage**: Accepts the named parameters `cite` and `footer`.
  - **Example**:
  ```html
  {{< blockquote cite="www.shawnohare.com" footer="Shawn" >}}
    There is nothing more beautiful than an elegant mathematical proof.
  {{< /blockquote >}}
  ```

- `div`
   - **Description**: This shortcode is provided as a work-around for wrapping
   complex blocks of markdown in div tags. The wrapped text can
   include other shortcodes
   - **Usage**: Identical to the `section` shortcode.
   Accepts the style parameters `class` and `id`.
   If only the positional argument `"end"` is passed, a closing tag
   will be inserted.
   - **Example**: `{{< div class="my-class" >}}` inserts a
   `<div class="my-class">` tag, while
   `{{<div "end" >}}` inserts the closing `</div>` tag.

- `epigraph`
  - **Description**: Create an epigraph with the wrapped text.
  - **Usage**: To include a footer with source attribution, pass in the
  optional named parameters `pre`, `cite`, `post`, `link`. These parameters
  make no styling assumptions, so spacing is important.  A more compactly
  styled epigraph will be used if the `type` parameter is set to `compact`.
  - **Example**:
  ```html
  {{< epigraph pre="Author Writer, " cite="Math is Fun" link='https://www.google.com' >}}
  This is an example of an epigraph with some math
  $ \mathbb N \subseteq \mathbb R $
  to start the beginning of a section.
  {{< /epigraph >}}
  ```

- `marginnote`
  - **Description**: Wrap text to produce a numberless margin note.
  - Usage: `{{< marginnote >}}...{{< /marginnote >}}`
  - **Example**: 
  ```html
  {{< marginnote >}}Some marginnote{{< /marginnote>}}
  ```

- `section`
   - **Description**: This shortcode is provided as a work-around for wrapping
   complex blocks of markdown in section tags. The wrapped text can
   include other shortcodes
   - **Usage**: Accepts the style parameters `class` and `id`.
   If only the positional argument `"end"` is passed, a closing tag
   will be inserted.
   - **Example**: `{{< section class="my-class" >}}` inserts a
   `<section class="my-class">` tag, while
   `{{<section "end" >}}` inserts the closing `</section>` tag.


- `sidenote`
  - **Description**: Wrap text to produce an automatically numbered sidenote.
  - **Usage**: identical to `marginnote`
  `{{< sidenote >}}...{{< /sidenote >}}`
  - **Example**: 
  ```html
  {{< sidenote >}}Some sidenote{{< /sidenote >}}
  ```

