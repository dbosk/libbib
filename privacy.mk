.PHONY: DifferentialPrivacy
DifferentialPrivacy: DifferentialPrivacy.pdf
	evince $^

PRIVACY_FILES+= DifferentialPrivacy.pdf
DifferentialPrivacy.pdf:
	wget -O $@ file:///dev/null


.PHONY: clean-depends clean-privacy
clean-depends: clean-privacy
clean-privacy:
	${RM} ${PRIVACY_FILES}
