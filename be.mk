.PHONY: ANOBE
ANOBE: ANOBE.pdf
	evince $^

BE_FILES+= ANOBE.pdf
ANOBE.pdf:
	wget -O $@ http://eprint.iacr.org/2011/476.pdf


.PHONY: PseudonymousBE
PseudonymousBE: PseudonymousBE.pdf
	evince $^

BE_FILES+= PseudonymousBE.pdf
PseudonymousBE.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-642-29889-9_5.pdf


.PHONY: oANOBE
oANOBE: oANOBE.pdf
	evince $^

BE_FILES+= oANOBE.pdf
oANOBE.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-642-30057-8_14.pdf


.PHONY: clean-depends clean-be
clean-depends: clean-be
clean-be:
	${RM} ${BE_FILES}
