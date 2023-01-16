all: build/assignment_10.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_10.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_10.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
