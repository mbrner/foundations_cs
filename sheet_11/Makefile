all: build/assignment_11.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_11.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_11.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
