OUTPUT_DIR ?= $(CURDIR)/output/
CV_NAME ?= aairabella_cv.tex 
PDF_LATEX_OPTIONS ?= -output-directory=$(OUTPUT_DIR)

clean: 
	rm -rf $(CURDIR)/output/

pdf: clean
	mkdir $(CURDIR)/output/
	pdflatex $(PDF_LATEX_OPTIONS) $(CV_NAME)

all: pdf


help::
	@echo "== CV MAKE HELP =="
	@echo "Requires pdflatex installed"
	@echo " pdf"
	@echo " all"
	@echo " clean"
