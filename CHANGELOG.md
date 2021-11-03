# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2021-11-03
### Fixed 
- Fixed Two deprecation warnings for _normalize-mixin.scss 

### Changed
- Replaced normalize.scss with a cdn link to normalize.css
## [0.1.2] - 2021-08-21
### Changed
- There is no css files anymore, all the css is generated from scss, except for the hugo-tufte-override.css of course (70c7b91) [#15](https://github.com/slashformotion/hugo-tufte/issues/15)

### Fixed
- An icon wasn't showing in the navbar menu (c8bc5f6) [#26](https://github.com/slashformotion/hugo-tufte/issues/26)

### Deprecated
- Some parts of Feather.js support remained in the code, they are now removed. (472bb3d) [#32](https://github.com/slashformotion/hugo-tufte/issues/32)
## [0.1.1] - 2021-08-15
### Added
- Markdown styling support in the following shortcodes 
    - `marginnote` (4e38a13) [#18](https://github.com/slashformotion/hugo-tufte/issues/18)
    - `blockquote` (628637b) [#20](https://github.com/slashformotion/hugo-tufte/issues/20)
    - `epigraph` (628637b) [#20](https://github.com/slashformotion/hugo-tufte/issues/20)
    - `newthought` (628637b) [#20](https://github.com/slashformotion/hugo-tufte/issues/20)
    - `sidenote` (628637b) [#20](https://github.com/slashformotion/hugo-tufte/issues/20)

### Note
- The link to the repo in the footer is now pointing at https://github.com/slashformotion/hugo-tufte (ccb1ac0) [#22](https://github.com/slashformotion/hugo-tufte/issues/22)
## [0.1.0] - 2021-08-14
### Added
- All of the [Tufte-css](https://github.com/edwardtufte/tufte-css) feature via [shortcodes](https://github.com/slashformotion/hugo-tufte#shortcodes). 
- Support out of the box for social media links( github, gitlab, twitter, patreon, youtube, medium, reddit, stackoverflow, instagram, mastodon, orcid, google_scholar).
- Support for custom navbar and footer links.
- Support for  mathematical typesetting (LaTex) support via [katex](https://katex.org/) or [MathJax](https://www.mathjax.org). 

[Unreleased]: https://github.com/slashformotion/hugo-tufte/compare/v0.1.2...HEAD
[0.1.2]: https://github.com/slashformotion/hugo-tufte/releases/tag/v0.2.0
[0.1.2]: https://github.com/slashformotion/hugo-tufte/releases/tag/v0.1.2
[0.1.1]: https://github.com/slashformotion/hugo-tufte/releases/tag/v0.1.1
[0.1.0]: https://github.com/slashformotion/hugo-tufte/releases/tag/v0.1.0