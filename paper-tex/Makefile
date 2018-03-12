#!/bin/bash

all:
	pdflatex memspan.tex
	bibtex memspan
	pdflatex memspan.tex
	pdflatex memspan.tex

clean:
	rm -f *.aux *.blg *.bbl *.dvi *.log *.out memspan.pdf
