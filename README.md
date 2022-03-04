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

## To recreate all of the guides 

Here is a one liner if you've installed the `fd` utility for OS X using homebrew
or on linux:

```
for X in `fd  Rmd .`;do Rscript -e "rmarkdown::render('$X')"; done
```



## When writing new guides

To ensure that links are opened in a new tab write links like this `[Hello, world!](http://example.com/){target="_blank"}`
