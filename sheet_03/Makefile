all: build/assignment_03.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_03.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_03.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
