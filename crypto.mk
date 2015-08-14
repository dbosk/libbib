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


.PHONY: RandomnessReuse
RandomnessReuse: RandomnessReuse.pdf
	evince $^

CRYPTO_FILES+= 	RandomnessReuse.pdf
RandomnessReuse.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F978-3-540-77272-9_16.pdf

.PHONY: KD-KEM
KD-KEM: KD-KEM.pdf
	evince $^

CRYPTO_FILES+= KD-KEM.pdf
KD-KEM.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F978-3-540-28628-8_26.pdf


.PHONY: clean-depends clean-crypto
clean-depends: clean-crypto
clean-crypto:
	${RM} ${CRYPTO_FILES}
