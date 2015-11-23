.PHONY: P2PPasswords
P2PPasswords: P2PPasswords.pdf
	evince $^

AUTH_FILES+= P2PPasswords.pdf
P2PPasswords.pdf:
	wget -O $@ http://ieeexplore.ieee.org/ielx5/6329089/6335787/06335797.pdf


.PHONY: clean-depends clean-auth
clean-depends: clean-auth
clean-auth:
	${RM} ${AUTH_FILES}
