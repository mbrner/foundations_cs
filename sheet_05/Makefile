all: build/assignment_05.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_05.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_05.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
