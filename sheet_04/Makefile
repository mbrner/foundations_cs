all: build/assignment_04.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_04.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_04.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
