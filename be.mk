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
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F978-3-642-29889-9_5.pdf


.PHONY: OutsiderAnonBE
OutsiderAnonBE: OutsiderAnonBE.pdf
	evince $^

BE_FILES+= OutsiderAnonBE.pdf
OutsiderAnonBE.pdf:
	wget -O $@ http://link.springer.com.focus.lib.kth.se/content/pdf/10.1007%2F978-3-642-30057-8_14.pdf


.PHONY: clean-depends clean-be
clean-depends: clean-be
clean-be:
	${RM} ${BE_FILES}
