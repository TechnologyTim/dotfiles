# My latex makefile

.PHONY: MyDoc.pdf all clean

all: Document.pdf

# custom build rules

%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@


# main latexmk rule

Document.pdf: Document.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make Document.tex

clean:
	latexmk -CA
