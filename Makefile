OUTPUT_DIR ?= $(CURDIR)/output/
OUTPUT_DIR_EN ?= $(CURDIR)/output_en/
CV_NAME ?= aairabella_cv.tex 
CV_NAME_EN ?= aairabella_cv_en.tex 
PDF_LATEX_OPTIONS ?= -output-directory=$(OUTPUT_DIR)
PDF_LATEX_OPTIONS_EN ?= -output-directory=$(OUTPUT_DIR_EN)

clean: 
	rm -rf $(OUTPUT_DIR)
	rm -rf $(OUTPUT_DIR_EN)

pdf: 
	mkdir $(OUTPUT_DIR)
	pdflatex $(PDF_LATEX_OPTIONS) $(CV_NAME)

en: 
	mkdir $(OUTPUT_DIR_EN)
	pdflatex $(PDF_LATEX_OPTIONS_EN) $(CV_NAME_EN)

all:  
	pdf
	en

help::
	@echo "== CV MAKE HELP =="
	@echo "Requires pdflatex installed"
	@echo " pdf"
	@echo " en"
	@echo " all"
	@echo " clean"
