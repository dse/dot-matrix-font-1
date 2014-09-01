BDFS =	DotMatrixNumberOne-Condensed.bdf \
	DotMatrixNumberOne.bdf

default: $(BDFS) DotMatrixNumberOneDotted.biggerbdf

%.bdf: %.decodedbdf bin/bdfencode Makefile
	bin/bdfencode $< >$@.tmp
	mv $@.tmp $@

%Dotted.biggerbdf: %.bdf bin/bdfbigger Makefile
	bin/bdfbigger $< >$@.tmp
	mv $@.tmp $@

