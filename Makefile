HAML?=haml

all: figures index.html

%.html: %.html.haml
	haml $< >$@

.PHONY: all figures
