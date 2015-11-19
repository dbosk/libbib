.PHONY: DifferentialPrivacy
DifferentialPrivacy: DifferentialPrivacy.pdf
	evince $^

PRIVACY_FILES+= DifferentialPrivacy.pdf
DifferentialPrivacy.pdf:
	wget -O $@ file:///dev/null


.PHONY: ThresholdUserSearch
ThresholdUserSearch: ThresholdUserSearch.pdf
	evince $^

PRIVACY_FILES+= ThresholdUserSearch.pdf
ThresholdUserSearch.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-642-55137-6_15.pdf


.PHONY: clean-depends clean-privacy
clean-depends: clean-privacy
clean-privacy:
	${RM} ${PRIVACY_FILES}
