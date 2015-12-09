.PHONY: PROPS
PROPS: PROPS.pdf
	evince $^

LOCATION_FILES+= PROPS.pdf
PROPS.pdf:
	wget -O $@ http://ieeexplore.ieee.org/ielx7/6979347/6983362/06983374.pdf


.PHONY: clean-depends clean-location
clean-depends: clean-location
clean-location:
	${RM} ${LOCATION_FILES}
