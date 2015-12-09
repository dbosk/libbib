.PHONY: ShannonSecrecy
ShannonSecrecy: ShannonSecrecy.pdf
	evince $^

CRYPTO_FILES+= ShannonSecrecy.pdf
ShannonSecrecy.pdf:
	wget -O $@ http://luca-giuzzi.unibs.it/corsi/Support/papers-cryptography/Communication_Theory_of_Secrecy_Systems.pdf


.PHONY: InfoTheory
InfoTheory: InfoTheory.pdf
	evince $^

CRYPTO_FILES+= InfoTheory.pdf
InfoTheory.pdf:
	wget -O $@ http://lanethames.com/dataStore/ECE/InfoTheory/shannon.pdf


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


.PHONY: DiffieHellman
DiffieHellman: DiffieHellman.pdf
	evince $^

CRYPTO_FILES+= DiffieHellman.pdf
DiffieHellman.pdf:
	wget -O $@ http://ieeexplore.ieee.org.focus.lib.kth.se/ielx5/18/22693/01055638.pdf


.PHONY: AuthKeyExchange
AuthKeyExchange: AuthKeyExchange.pdf
	evince $^

CRYPTO_FILES+= AuthKeyExchange.pdf
AuthKeyExchange.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2FBF00124891.pdf


.PHONY: BroadcastEncryption
BroadcastEncryption: BroadcastEncryption.pdf
	evince $^

CRYPTO_FILES+= BroadcastEncryption.pdf
BroadcastEncryption.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F3-540-48329-2_40.pdf


.PHONY: ImprovedProxyReencryption
ImprovedProxyReencryption: ImprovedProxyReencryption.pdf
	evince $^

CRYPTO_FILES+= ImprovedProxyReencryption.pdf
ImprovedProxyReencryption.pdf:
	wget -O $@ http://delivery.acm.org${LIBRARY_EXT}/10.1145/1130000/1127346/p1-ateniese.pdf


.PHONY: UnidirectionalCCAProxyReencryption
UnidirectionalCCAProxyReencryption: UnidirectionalCCAProxyReencryption.pdf
	evince $^

CRYPTO_FILES+= UnidirectionalCCAProxyReencryption.pdf
UnidirectionalCCAProxyReencryption.pdf:
	wget -O $@ http://ieeexplore.ieee.org${LIBRARY_EXT}/ielx5/18/5714236/05714278.pdf


.PHONY: CCAAnonymousProxyReencryption
CCAAnonymousProxyReencryption: CCAAnonymousProxyReencryption.pdf
	evince $^

CRYPTO_FILES+= CCAAnonymousProxyReencryption.pdf
CCAAnonymousProxyReencryption.pdf:
	wget -O $@ http://www.sciencedirect.com${LIBRARY_EXT}/science/article/pii/S0304397512007906/pdf?md5=c704f3ac051e640541beed0822d6074a&pid=1-s2.0-S0304397512007906-main.pdf


.PHONY: CCAProxyReencryption
CCAProxyReencryption: CCAProxyReencryption.pdf
	evince $^

CRYPTO_FILES+= CCAProxyReencryption.pdf
CCAProxyReencryption.pdf:
	wget -O $@ http://delivery.acm.org${LIBRARY_EXT}/10.1145/1320000/1315269/p185-canetti.pdf


.PHONY: CCAKeyPrivateProxyReencryption
CCAKeyPrivateProxyReencryption: CCAKeyPrivateProxyReencryption.pdf
	evince $^

CRYPTO_FILES+= CCAKeyPrivateProxyReencryption.pdf
CCAKeyPrivateProxyReencryption.pdf:
	wget -O $@ http://www.sciencedirect.com${LIBRARY_EXT}/science/article/pii/S0164121211002421/pdfft?md5=2b8b698b0339fa063fef7bd6d027b976&pid=1-s2.0-S0164121211002421-main.pdf


.PHONY: AnonProxyReencrypt
AnonProxyReencrypt: AnonProxyReencrypt.pdf
	evince $^

CRYPTO_FILES+= AnonProxyReencrypt.pdf
AnonProxyReencrypt.pdf:
	wget -O $@ http://ndc.zjgsu.edu.cn/~jshao/papers/SCN2011-Anonymous%20proxy%20re-encryption.pdf


.PHONY: CP-ABE
CP-ABE: CP-ABE.pdf
	evince $^

CRYPTO_FILES+= CP-ABE.pdf
CP-ABE.pdf:
	wget -O $@ http://ieeexplore.ieee.org${LIBRARY_EXT}/ielx5/4223200/4223201/04223236.pdf


.PHONY: KP-ABE
KP-ABE: KP-ABE.pdf
	evince $^

CRYPTO_FILES+= KP-ABE.pdf
KP-ABE.pdf:
	wget -O $@ http://delivery.acm.org${LIBRARY_EXT}/10.1145/1190000/1180418/p89-goyal.pdf


.PHONY: DABE
DABE: DABE.pdf
	evince $^

CRYPTO_FILES+= DABE.pdf
DABE.pdf:
	wget -O $@ http://download.springer.com${LIBRARY_EXT}/static/pdf/576/chp%253A10.1007%252F978-3-642-20465-4_31.pdf


.PHONY: DualSystemEncryption
DualSystemEncryption: DualSystemEncryption.pdf
	evince $^

CRYPTO_FILES+= DualSystemEncryption.pdf
DualSystemEncryption.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-642-03356-8_36.pdf


.PHONY: NewDualSystemEncryption
NewDualSystemEncryption: NewDualSystemEncryption.pdf
	evince $^

CRYPTO_FILES+= NewDualSystemEncryption.pdf
NewDualSystemEncryption.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-642-11799-2_27.pdf


.PHONY: FSThresholdSignatures
FSThresholdSignatures: FSThresholdSignatures.pdf
	evince $^

CRYPTO_FILES+= FSThresholdSignatures.pdf
FSThresholdSignatures.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F3-540-45353-9_32.pdf


.PHONY: clean-depends clean-crypto
clean-depends: clean-crypto
clean-crypto:
	${RM} ${CRYPTO_FILES}
