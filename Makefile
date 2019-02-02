# Generate PDFs from the Markdown source files
#
# In order to use this makefile, you need some tools:
# - GNU make
# - Pandoc

# All markdown files are considered sources
MD_SOURCES := $(wildcard **/*.md)
OUTPUT_PDFS := $(MD_SOURCES:.md=.pdf)

all: $(OUTPUT_PDFS)

# Recipe for converting a Markdown file into PDF using Pandoc
%.pdf: %.md
	pandoc \
		--variable fontsize=12pt \
		--variable date:"\today" \
		--variable geometry:a4paper \
		--variable documentclass:book \
		--table-of-contents \
		--number-sections \
		-f markdown  $< \
		-o $@

.PHONY : clean

clean: $(OUTPUT_PDFS)
	$(RM) -f $^
