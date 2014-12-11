index=vortrag

all:
	latexmk -pdf -auxdir=trash -outdir=trash ${index}.tex
	rm trash/${index}.pdf
	latexmk -pdf -auxdir=trash -outdir=trash ${index}.tex
	mv trash/${index}.pdf .
	evince -s ${index}.pdf &

handout:
	latexmk -pdf -auxdir=trash -outdir=trash handout.tex
	latexmk -pdf -auxdir=trash -outdir=trash handout.tex
	mv trash/handout.pdf .
	evince -s handout.pdf &

bib:
	bibtex ${index}.aux
	@echo "=== make bib beendet ==="

clean:
	rm -f *.aux *.bbl *.blg *.lot *.lof *.log *.nlo *.toc *.out *.ind *.ilg *.equ *.idx *.lol *.nav *.snm *.gnuplot
	@echo "=== make clean beendet ===="

