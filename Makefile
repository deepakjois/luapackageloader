doc.pdf: doc.tex
	xelatex --shell-escape doc.tex

.PHONY: ctan