default:
	pdflatex main.tex

check:
	chktex main.tex

all:
	pdflatex main.tex;\
	for f in notes/*.tex; do\
		pdflatex --output-directory ./notes $${f};\
	done

clean:
	rm *.aux *.log *.pdf ; rm notes/*.log notes/*.aux notes/*.pdf
