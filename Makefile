GMLV=gmlv
GMLV_TEX=$(GMLV).tex
GMLV_PDF=$(GMLV).pdf

pdf:
	pdflatex $(GMLV_TEX)
	@echo "Done. see " $(GMLV_PDF)

html:
	latex2html $(GMLV_TEX);
	@echo "Done. html files are in gmlv folder!"

clean:
	@rm -rf $(GMLV)
	@rm -f $(GMLV_PDF)
	@rm -f *.aux
	@rm -f *.lo*
	@rm -f *.toc
	@rm -f *.idx
	@rm -f *.out
