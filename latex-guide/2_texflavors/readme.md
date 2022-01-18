- try `tex plaintex.tex`
- then try `latex plainlatex.tex`
- Want a pdf?  Try `pdflatex plainlatex.tex`
- Why are multiple passes required?
  1. run `pdflatex example.tex`.  Look at `example.aux`
  2. run `bibtex example`.  Look at `example.bbl`
  3. run `pdflatex example.tex`.  Look at `example.aux` and `example.pdf`
  4. run `pdflatex example.tex`.  Look at `example.aux` and `example.pdf`
- Use `latexmk example.tex` to build.
- Use `latexmk example.tex -c` to cleanup.
- Use `latexmk example.tex -C` to cleanup *everything*.
