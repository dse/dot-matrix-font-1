BDFS =	DotMatrixNumberOne-Condensed.bdf \
	DotMatrixNumberOne.bdf

default: $(BDFS)

%.bdf: %.decodedbdf
	bin/bdfencode $< >$@.tmp.bdf
	mv $@.tmp.bdf $@

