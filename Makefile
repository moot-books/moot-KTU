# Generate PDFs from the Markdown source files
#
# In order to use this makefile, you need some tools:
# - GNU make
# - Pandoc

# All markdown files are considered sources
MD_SOURCES := $(wildcard */*/*.md)
OUTPUT_PDFS := $(MD_SOURCES:.md=.pdf)
DOT_SOURCES := $(wildcard */*/*/*.dot)
OUTPUT_DOTPNGS := $(DOT_SOURCES:.dot=.png)

all: $(OUTPUT_PDFS) 


# Recipe for converting a Markdown file into PDF using Pandoc
%.pdf: %.md $(OUTPUT_DOTPNGS)
	pandoc \
		--variable fontsize=12pt \
		--variable date:"\today" \
		--variable geometry:a4paper \
		--variable documentclass:book \
		--pdf-engine=pdflatex \
		--table-of-contents \
		--number-sections \
		--filter pandoc-fignos \
		-f markdown  $< \
		-o $@

# Recipe for building png files from dot files
%.png: %.dot
	dot \
		-Tpng $< \
		-o $@

.PHONY : clean

clean: $(OUTPUT_PDFS) $(OUTPUT_DOTPNGS)
	$(RM) $^
