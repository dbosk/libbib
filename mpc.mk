.PHONY: MPCgoesLive
MPCgoesLive: MPCgoesLive.pdf
	evince $^

MPC_FILES+=	MPCgoesLive.pdf
MPCgoesLive.pdf:
	wget -O $@ http://link.springer.com${LIBRARY_EXT}/content/pdf/10.1007%2F978-3-642-03549-4_20.pdf


.PHONY: clean-depends clean-mpc
clean-depends: clean-mpc
clean-mpc:
	${RM} ${MPC_FILES}
