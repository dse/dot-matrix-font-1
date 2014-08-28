%.bdf: %.decodedbdf
	bin/bdfencode $< >$@.tmp.bdf
	mv $@.tmp.bdf $@
