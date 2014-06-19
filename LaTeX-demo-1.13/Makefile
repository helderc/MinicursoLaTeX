### Makefile para LaTeX-demo e LaTeX-demo-src.
### $Id: Makefile,v 1.11 2001/01/16 04:51:29 jessen Exp $

all:	demo.dvi demo-src.dvi demo.ps demo-src.ps clean demo.pdf demo-src.pdf

dist:	demo.dvi demo-src.dvi demo-dist.ps demo-src-dist.ps clean \
        demo.pdf demo-src.pdf

demo.dvi:
		latex demo
		bibtex demo
		latex demo
		makeindex -s demo-index.ist demo
		makeindex -s makeglo.ist -o demo.gls demo.glo
		latex demo
		makeindex -s demo-index.ist demo
		latex demo

demo-src.dvi:
		latex demo-src
		latex demo-src
		latex demo-src

demo.ps:	demo.dvi
		dvips -Z demo.dvi -o demo.ps

demo-src.ps:	demo-src.dvi
		dvips -Z demo-src.dvi -o demo-src.ps

demo-dist.ps:	demo.dvi
		dvips -Z -O 0mm,0mm demo.dvi -o demo.ps

demo-src-dist.ps:	demo-src.dvi
		dvips -Z -O 0mm,0mm demo-src.dvi -o demo-src.ps

demo-src.pdf:
		pdflatex demo-src
		pdflatex demo-src
		pdflatex demo-src

demo.pdf:
		pdflatex demo
		bibtex demo
		pdflatex demo
		makeindex -s demo-index.ist demo
		makeindex -s makeglo.ist -o demo.gls demo.glo
		pdflatex demo
		makeindex -s demo-index.ist demo
		pdflatex demo

clean:
	rm -f core *.core *.log *.aux *.toc *.lo[fpta] *.blg *.bbl \
	*.ind *.ilg *.idx *.glo *.gls *.out

distclean: clean
	rm -f *.dvi *.ps *.pdf
	( cd templates ; make distclean )

### Makefile ends here.
