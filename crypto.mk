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


.PHONY: KD-KEM
KD-KEM: KD-KEM.pdf
	evince $^

CRYPTO_FILES+= KD-KEM.pdf
KD-KEM.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F978-3-540-28628-8_26.pdf


.PHONY: DeniableEncryption
DeniableEncryption: DeniableEncryption.pdf
	evince $^

CRYPTO_FILES+= DeniableEncryption.pdf
DeniableEncryption.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2FBFb0052229.pdf


.PHONY: AuthEncryption
AuthEncryption: AuthEncryption.pdf
	evince $^

CRYPTO_FILES+= AuthEncryption.pdf
AuthEncryption.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2Fs00145-008-9026-x.pdf


.PHONY: StatefulDecryption
StatefulDecryption: StatefulDecryption.pdf
	evince $^

CRYPTO_FILES+= StatefulDecryption.pdf
StatefulDecryption.pdf:
	wget -O $@ http://delivery.acm.org/10.1145/1000000/996945/p206-bellare.pdf

.PHONY: Signcryption
Signcryption: Signcryption.pdf
	evince $^

CRYPTO_FILES+= Signcryption.pdf
Signcryption.pdf:
	wget -O $@ http://www.signcryption.org/publications/pdffiles/yz-signcrypt-full.pdf


.PHONY: clean-depends clean-crypto
clean-depends: clean-crypto
clean-crypto:
	${RM} ${CRYPTO_FILES}
