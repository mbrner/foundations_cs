all: build/assignment_06.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_06.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_06.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
