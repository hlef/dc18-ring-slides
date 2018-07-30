TEX := $(wildcard *.tex)
default: $(TEX:.tex=.pdf)

%.pdf: %.tex
	pdflatex $<

.PHONY: clean

clean:
	rm -v *.aux *.toc *.log *.out *.nav *.snm
