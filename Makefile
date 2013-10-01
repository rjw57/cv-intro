HAML?=haml

all: figures index.html

PNGS_FROM_SVGS := $(patsubst %.svg,%.png,$(wildcard figures/*.svg))

figures: ${PNGS_FROM_SVGS}

%.png: %.svg
	inkscape -z -C -d 300 "-e=$@" "$<"

%.html: %.html.haml
	haml "$<" >"$@"

.PHONY: all figures
