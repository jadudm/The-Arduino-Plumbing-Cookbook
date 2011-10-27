TEXSRC=plumbing-cookbook
BOOKPDF=plumbing-cookbook
DEST=/data/www/cc/concurrency/www/site/pdf/${BOOKPDF}
all:
	pdflatex -shell-escape ${TEXSRC}.tex
	pdflatex -shell-escape ${TEXSRC}.tex

upload:
	cp ${TEXSRC}.pdf ${BOOKPDF}-`date +"%Y%m%d"`.pdf
	# scp ${BOOKPDF} jadudm@unhosting.org:${DEST}


clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f *.err
	rm -f *.out
	rm -f *.toc
	rm -f *.py
	rm -f *~
	rm -f ${TEXSRC}.pdf
	rm -f ${BOOKPDF}.pdf
