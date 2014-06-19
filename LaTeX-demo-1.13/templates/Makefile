### Makefile para o diretorio ``templates''
### $Id: Makefile,v 1.5 2001/01/16 03:03:20 jessen Exp $

all:		article.ps article.pdf \
                articletwocolumn.ps articletwocolumn.pdf \
                book.ps book.pdf \
		letter.ps letter.pdf \
                report.ps report.pdf \
                slides.ps slides.pdf

article.ps:
		latex article
		bibtex article
		latex article
		latex article
		dvips -Z article.dvi -o article.ps

article.pdf:
		pdflatex article
		bibtex article
		pdflatex article
		pdflatex article

articletwocolumn.ps:
		latex articletwocolumn
		bibtex articletwocolumn
		latex articletwocolumn
		latex articletwocolumn
		dvips -Z articletwocolumn.dvi -o articletwocolumn.ps

articletwocolumn.pdf:
		pdflatex articletwocolumn
		bibtex articletwocolumn
		pdflatex articletwocolumn
		pdflatex articletwocolumn

book.ps:
		latex book
		makeindex book
		bibtex book
		latex book
		latex book
		dvips -Z book.dvi -o book.ps

book.pdf:
		pdflatex book
		makeindex book
		bibtex book
		pdflatex book
		pdflatex book

letter.ps:
		latex letter
		dvips -Z letter.dvi -o letter.ps

letter.pdf:
		pdflatex letter

report.ps:
		latex report
		makeindex report
		bibtex report
		latex report
		latex report
		dvips -Z report.dvi -o report.ps

report.pdf:
		pdflatex report
		makeindex report
		bibtex report
		pdflatex report
		pdflatex report

slides.ps:
		latex slides
		dvips -Z slides.dvi -o slides.ps

slides.pdf:
		pdflatex slides

clean:
	rm -f *.log *.aux *.toc *.lo[fpt] *.blg *.bbl \
	*.ind *.ilg *.idx *.glo *.gls *.out

distclean: clean
	rm -f *.dvi *.ps *.pdf

### templates/Makefile ends here.
