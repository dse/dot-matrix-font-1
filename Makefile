BDFS =	DotMatrixNumberOne-Condensed.bdf \
	DotMatrixNumberOne.bdf

default: $(BDFS) DotMatrixNumberOneDotted-Semicondensed.bdf

%.bdf: %.decodedbdf
	bin/bdfencode $< >$@.tmp
	mv $@.tmp $@

DotMatrixNumberOneDotted-Semicondensed.bdf: DotMatrixNumberOne.bdf
	bin/bdfbigger $< >$@.tmp
	mv $@.tmp $@

