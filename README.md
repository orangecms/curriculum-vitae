# Curriculum Vitae

This is Daniel Maslowski's CV, which started as a fork of
[Ben Schmidt's CV](https://github.com/bmschmidt/CV-pandoc-healy), which again
is based on multiple other people's work, but simplified to cover the following:

1. A decent looking CV
2. Structured input data
3. Simple tooling (CLI + $EDITOR)

An online version is referenced on [my website](https://dan.orangecms.org/).

## Usage

Simply run `make` to validate the YAML input file and create the PDF. If errors
occur, check below that you have all the dependencies installed, or refer to the
error message otherwise. To skip the validation, just run `make cv.pdf`.

## Dependencies

- make, as it is shipped on most UNIX-like operating systems
- LaTeX, which you should get from your OS distribution
- [Pandoc](https://pandoc.org), which you should also get from your distribution
- Python including python-yaml for YAML validation, which is optional

### Fonts

You will need to install some Nerd Fonts. I simply use the full package, but you
actually just need the fonts specified in `jk-vita.sty`. They may change at
some point, so better look them up there.

In addition, `fontawesome.sty` is used  for the glyphs.
