.PHONY: clean build show

BUILD_DIR=_build/
TEX_SOURCE=main.tex
FINAL_PDF=main.pdf

all: clean build show

build:
	@mkdir -p $(BUILD_DIR)
	@pdflatex -output-directory=$(BUILD_DIR) $(TEX_SOURCE)
	@pdflatex -output-directory=$(BUILD_DIR) $(TEX_SOURCE)

clean:
	@rm -rf $(BUILD_DIR)

show:
	@open $(BUILD_DIR)/$(FINAL_PDF)
