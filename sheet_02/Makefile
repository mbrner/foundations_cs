all: build/assignment_02.pdf


TeXOptions = -xelatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build

build/assignment_02.pdf : FORCE | build
	latexmk $(TeXOptions) assignment_02.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
