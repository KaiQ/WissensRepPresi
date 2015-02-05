index=paper

all: 	
	latexmk -pdf -bibtex -auxdir=trash -outdir=trash ${index}.tex
	ln -f trash/${index}.pdf ${index}.pdf
	evince -s ${index}.pdf &

bib:
	bibtex ${index}.aux
	@echo "=== make bib beendet ==="

clean:
	rm -f *.aux *.bbl *.blg *.lot *.lof *.log *.nlo *.toc *.out *.ind *.ilg *.equ *.idx *.lol *.nav *.snm *.gnuplot *.fls *.fdb_latexmk
	rm -f trash/*
	@echo "=== make clean beendet ===="

