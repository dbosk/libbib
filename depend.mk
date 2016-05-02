DEPEND_FILES+= 	ByzantineGenerals.pdf
ByzantineGenerals.pdf:
	wget -O $@ http://doi.acm.org/10.1145/357172.357176


.PHONY: clean-depend
clean-depend:
	${RM} ${DEPEND_FILES}
