all: start guide finish

start:
	echo "Makefile has started its work."

guide:	data1-prednasky.tex
	pdflatex data1-prednasky
	pdflatex data1-prednasky
	makeindex data1-prednasky.idx -s index.ist
	makeglossaries data1-prednasky
	bibtex data1-prednasky
	pdflatex data1-prednasky
	pdflatex data1-prednasky

finish:
	echo "Makefile has finished its work."

clean:
	rm -f *.lo* *.aux *.ind *.idx *.ilg *.toc
