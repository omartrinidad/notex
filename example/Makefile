main=main
#biblio=main

pdf: 
	pdflatex ${main}

kindle:
	pdflatex ${main}
	#bibtex ${main}
	#pdflatex ${main}
	#pdflatex ${main}

read: 
	evince ${main}.pdf &

clean:
	 rm -f *.ps  *.log *.aux
	 rm -f *.out *.dvi *.bbl *.blg
	 rm -f *.toc *.lof *.lot *.brf
	 rm -f *.pyg *.log *.nav *.snm
