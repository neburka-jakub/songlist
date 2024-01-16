MAKEFLAGS += --no-builtin-rules
OPTIONS = --no-chord-grids

.PHONY: all clean

all: $(patsubst %.cho,%.pdf,$(wildcard *.cho))

clean:
	rm -rfv *.pdf

%.pdf: %.cho
	chordpro $(OPTIONS) $<
