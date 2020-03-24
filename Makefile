all: pdf

pdf: draft.pdf
docx: draft.docx
tex: draft.tex
	
draft.pdf: draft.md biblio.bib
	pandoc \
		-s \
		--bibliography biblio.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-eqnos \
		--filter pandoc-citeproc \
		draft.md -o draft.pdf

draft.docx: draft.md biblio.bib
	pandoc \
		-s \
		--bibliography biblio.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-eqnos \
		--filter pandoc-citeproc \
		draft.md -o draft.docx

draft.tex: draft.md biblio.bib
	pandoc \
		-s \
		--bibliography biblio.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-citeproc \
		draft.md -o draft.tex

.PHONY: clean
clean:
	${RM} paper.pdf paper.docx
