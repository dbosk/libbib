.PHONY: DevilInMetadata
DevilInMetadata: DevilInMetadata.pdf
	evince $^

META_FILES+= DevilInMetadata.pdf
DevilInMetadata.pdf:
	wget -O $@ http://peerson.net/papers/sesocMetaPrivacy.pdf


.PHONY: pregnancy
pregnancy:
	firefox http://www.forbes.com/sites/kashmirhill/2012/02/16/how-target-figured-out-a-teen-girl-was-pregnant-before-her-father-did/


.PHONY: clean-depends clean-meta
clean-depends: clean-meta
clean-meta:
	${RM} ${META_FILES}
