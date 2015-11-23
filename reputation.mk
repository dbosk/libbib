.PHONY: SybilAttack
SybilAttack: SybilAttack.pdf
	evince $^

REPUTATION_FILES+= SybilAttack.pdf
SybilAttack.pdf:
	wget -O $@ http://link.springer.com/content/pdf/10.1007%2F3-540-45748-8_24.pdf


.PHONY: clean-depends clean-reputation
clean-depends: clean-reputation
clean-reputation:
	${RM} ${REPUTATION_FILES}
