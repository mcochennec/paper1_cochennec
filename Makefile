all: pdf

pdf: paper.pdf
docx: paper.docx
odt: paper.odt

paper.pdf: paper.md biblio.bib
	pandoc \
		-s \
		--bibliography biblio.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-eqnos \
		--filter pandoc-citeproc \
		paper.md -o paper.pdf

paper.docx: paper.md biblio.bib
	pandoc \
		-s \
		--bibliography biblio.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-eqnos \
		--filter pandoc-citeproc \
		paper.md -o paper.docx

paper.odt: paper.md biblio.bib
	pandoc \
		-s \
		--bibliography biblio.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-eqnos \
		--filter pandoc-citeproc \
		paper.md -o paper.odt

.PHONY: clean
clean:
	${RM} paper.pdf paper.docx
