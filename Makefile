SURVEY_FILES = 6.854-project.tex 6.854-project.bib

6.854-project.pdf: ${SURVEY_FILES}
	pdflatex 6.854-project
	bibtex 6.854-project
	pdflatex 6.854-project
	pdflatex 6.854-project

clean:
	rm -f *.aux *.out *.toc *.bbl *.blg *.log *.lof
	rm -f 6.854-project.pdf

show: 6.854-project.pdf
	evince 6.854-project.pdf

spelling: 6.854-project.tex
	ispell 6.854-project.tex

new:
	make clean
	make 6.854-project.pdf

