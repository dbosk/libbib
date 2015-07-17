.PHONY: KeyPrivacy
KeyPrivacy: KeyPrivacy.pdf
	evince $^

CRYPTO_FILES+= KeyPrivacy.pdf
KeyPrivacy.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F3-540-45682-1_33.pdf


.PHONY: RobustEncryption
RobustEncryption: RobustEncryption.pdf
	evince $^

CRYPTO_FILES+= RobustEncryption.pdf
RobustEncryption.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F978-3-642-11799-2_28.pdf


.PHONY: clean-depends clean-crypto
clean-depends: clean-crypto
clean-crypto:
	${RM} ${CRYPTO_FILES}
