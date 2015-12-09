.PHONY: OTPKX
OTPKX: OTPKX.pdf
	evince $^

OTRMSG_FILES+= OTPKX.pdf
OTPKX.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-319-26502-5_6.pdf


.PHONY: clean-depends clean-be
clean-depends: clean-be
clean-be:
	${RM} ${OTRMSG_FILES}
