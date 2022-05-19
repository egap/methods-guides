# 10 Things LaTeX Guide

Here is a link to the online jupyter lab system which should allow people to see
a unix command line and to practice using LaTeX that way:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/egap/methods-guides/HEAD?urlpath=lab/tree/latex-guide){target="_blank"}

## To Contribute

This guide is written in markdown with no R code, however, since the rest of the
methods guides use R markdown, you can still convert it from markdown to html as
follows.

To build the html file for the EGAP Guide with less typing use R to convert the markdown to html so that the styles look like the other styles of the [EGAP Methods Guides](https://egap.org/methods-guides/) (see also <https://github.com/egap/methods-guides>).

```r
Rscript -e "library(rmarkdown); render('latex-guide.md')"
```

Alternatively, we can get close to that style using the following pandoc command directly.

```
pandoc latex-guide.md --to html4 --from markdown+yaml_metadata_block+autolink_bare_uris+tex_math_single_backslash+inline_code_attributes --output latex-guide.html  --self-contained --variable bs3=TRUE --standalone --section-divs --template latex-guide-template.html   --include-in-header latex-guide-header.html --number-sections --table-of-contents --toc-depth=1  --variable theme=bootstrap --mathjax --variable 'mathjax-url:https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --citeproc
```
