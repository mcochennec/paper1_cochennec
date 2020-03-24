all: pdf

pdf: draft.pdf
docx: draft.docx
tex: paper.tex
	
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

paper.tex: paper.md biblio.bib
	pandoc \
		-s \
		--bibliography biblio.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-citeproc \
		paper.md -o paper.tex

.PHONY: clean
clean:
	${RM} paper.pdf paper.docx
