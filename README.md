# methods-guides
EGAP methods guides

## How to contribute.

For now, please make an issue and/or fork and a pull request specifying the methods guide in question.

## Style Guide

We use plain R+markdown for these guides. Since they are served in iFrames on <http://egap.org> links do not work so well. Because of that, we recommend using `[Hello, world!](http://example.com/){target="_blank"}` when you insert links.

## How to make webpages from these files.

In RStudio, click "Knit to HTML".

At the R console do:
```
library(rmarkdown)
render("nameoffile.Rmd")
```

Once you have an html file, if you haven't already changed the links to open in a new tab do something like this at the command line to loop through all directories:

```
for X in */; do cd "$X"; sed -i.bak 's|href="http|target="_blank" href="http|g' *.html; cd ..; done
```

Or do this in a single directory:

```
sed -i.bak 's|href="http|target="_blank" href="http|g' *.html

```

## When writing new guides

To ensure that links are opened in a new tab write links like this `[Hello, world!](http://example.com/){target="_blank"}`

install.packages("renv")
renv::restore()
library(rmarkdown)
install.packages("lme4")
install.packages("sandwich")
install.packages("lmtest")
install.packages("RItools")
install.packages("CausalGAM")
install.packages("quantreg")
install.packages("mediation")
install.packages("bookdown")
install.packages("randomizr")
install.packages("coin")
install.packages("devtools")
install.packages("styler")
install.packages("usethis")
install.packages("dplyr")
install.packages("estimatr")
install.packages("blockTools")
install.packages("Rtools")
install.packages("simpleRandomSampler")
install.packages("RItools")
install.packages("ri2")

rmarkdown::render("causal-inference/causal-inference.Rmd")
rmarkdown::render("cluster-random/cluster-random.Rmd")
rmarkdown::render("covariates/covariates.Rmd")
rmarkdown::render("design/design.rmd")
rmarkdown::render("effect-types/effect-types.Rmd")
rmarkdown::render("external-validity/extval.Rmd")
rmarkdown::render("hypothesistesting/hypothesistesting.Rmd")
rmarkdown::render("measurement/measurement.Rmd")
rmarkdown::render("mechanisms/10thingsaboutmechanisms.Rmd")
rmarkdown::render("pap/pap.Rmd")
rmarkdown::render("power/power.Rmd")
rmarkdown::render("x-cause-y/x-cause-y.Rmd")
rmarkdown::render("randomization/randomization.Rmd")


rmarkdown::render("causal-inference/causal-inference.Rmd",output_format='pdf_document')
rmarkdown::render("cluster-random/cluster-random.Rmd",output_format='pdf_document')
rmarkdown::render("covariates/covariates.Rmd",output_format='pdf_document')
rmarkdown::render("design/design.rmd",output_format='pdf_document')
rmarkdown::render("effect-types/effect-types.Rmd",output_format='pdf_document')
rmarkdown::render("external-validity/extval.Rmd",output_format='pdf_document')
rmarkdown::render("hypothesistesting/hypothesistesting.Rmd",output_format='pdf_document')
rmarkdown::render("measurement/measurement.Rmd",output_format='pdf_document')
rmarkdown::render("mechanisms/10thingsaboutmechanisms.Rmd",output_format='pdf_document')
rmarkdown::render("pap/pap.Rmd",output_format='pdf_document')
rmarkdown::render("power/power.Rmd",output_format='pdf_document')
rmarkdown::render("x-cause-y/x-cause-y.Rmd",output_format='pdf_document')
rmarkdown::render("randomization/randomization.Rmd",output_format='pdf_document')


