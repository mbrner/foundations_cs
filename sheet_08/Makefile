all: build/assignment_08.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_08.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_08.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
