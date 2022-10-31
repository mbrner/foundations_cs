all: build/assignment.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment.pdf : FORCE | build
	latexmk $(TeXOptions) assignment.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
