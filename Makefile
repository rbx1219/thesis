#SRC=thesis.tex abstractCH.tex acknowledgementsCH.tex introduction.tex abstractEN.tex acknowledgementsEN.tex conclusion.tex ntuvars.tex real-valued_function_optimization.tex #add you own tex files here

SRC=*.tex
all:$(SRC)
	latex thesis.tex
#	bibtex thesis.aux
	latex thesis.tex
	latex thesis.tex
	dvips -o thesis.ps thesis.dvi
	ps2pdf thesis.ps 
clean:
	rm -f *.aux *.dvi *.log *.bbl *.blg *.pdf *.ps
