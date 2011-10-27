TEXSRC=plumbing-cookbook
BOOKPDF=plumbing-cookbook
DEST=/data/www/cc/concurrency/www/site/pdf/${BOOKPDF}
all:
	pdflatex -shell-escape ${TEXSRC}.tex
	pdflatex -shell-escape ${TEXSRC}.tex

upload:
	cp ${TEXSRC}.pdf ${BOOKPDF}-`date +"%Y%m%d"`.pdf

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f *.toc
	rm -f *.out
	rm -f *~
	rm -f ${TEXSRC}.pdf
	rm -f ${BOOKPDF}.pdf
	rm -f ${BOOKPDF}-*.pdf
