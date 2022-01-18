# 10 Things LaTeX Guide

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/bowers-illinois-edu/egap-latex-guide/HEAD?urlpath=lab)

To build the html file for the EGAP Guide with less typing use R to convert the markdown to html so that the styles look like the other styles of the [EGAP Methods Guides](https://egap.org/methods-guides/) (see also <https://github.com/egap/methods-guides>).

```r
Rscript -e "library(rmarkdown); render('latex-guide.md')"
```

Alternatively, we can get close to that style using the following pandoc command directly.

```
pandoc latex-guide.md --to html4 --from markdown+yaml_metadata_block+autolink_bare_uris+tex_math_single_backslash+inline_code_attributes --output latex-guide.html  --self-contained --variable bs3=TRUE --standalone --section-divs --template latex-guide-template.html   --include-in-header latex-guide-header.html --number-sections --table-of-contents --toc-depth=1  --variable theme=bootstrap --mathjax --variable 'mathjax-url:https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --citeproc
```
