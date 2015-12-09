.PHONY: EventsInvitations
EventsInvitations: EventsInvitations.pdf
	evince $^

PPES_FILES+= EventsInvitations.pdf
EventsInvitations.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-319-18621-4_13.pdf


.PHONY: Dudle
Dudle: Dudle.pdf PreDudle.pdf
	evince $^

PPES_FILES+= Dudle.pdf PreDudle.pdf
Dudle.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-642-21424-0_19.pdf

PreDudle.pdf:
	wget -O $@ http://ieeexplore.ieee.org${LIBRARY_EXT}/ielx5/5282954/5282955/05283251.pdf


.PHONY: clean-depends clean-ppes
clean-depends: clean-ppes
clean-ppes:
	${RM} ${PPES_FILES}
