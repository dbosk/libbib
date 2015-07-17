.PHONY: DiningCryptographers
DiningCryptographers: DiningCryptographers.pdf
	evince $^

ANON_FILES+= DiningCryptographers.pdf
DiningCryptographers.pdf:
	wget -O $@ http://delivery.acm.org/10.1145/360000/358563/p84-chaum.pdf


.PHONY: UntraceableEmail
UntraceableEmail: UntraceableEmail.pdf
	evince $^

ANON_FILES+= UntraceableEmail.pdf
UntraceableEmail.pdf:
	evince $^


.PHONY: SecurityWithoutIdentification
SecurityWithoutIdentification: SecurityWithoutIdentification.pdf
	evince $^

ANON_FILES+= SecurityWithoutIdentification
SecurityWithoutIdentification.pdf:
	wget -O $@ http://delivery.acm.org/10.1145/10000/4373/p1030-chaum.pdf


.PHONY: Tor
Tor: Tor.pdf
	evince $^

ANON_FILES+= Tor.pdf
Tor.pdf:
	wget -O $@ http://freehaven.net/anonbib/cache/tor-design.pdf


.PHONY: clean-depends clean-anon
clean-depends: clean-anon
clean-anon:
	${RM} ${ANON_FILES}
