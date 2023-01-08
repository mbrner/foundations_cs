all: build/assignment_09.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_09.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_09.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
