ifndef BIBSP_MK
BIBSP_MK=true

BIBSP_LINK+=  bibsp.sty
INCLUDE_BIBSP?=.
BIBSP_LINK+=  bibsp.bib
${BIBSP_LINK}:
	[ -e "./$@" ] || ln -s ${INCLUDE_BIBSP}/$@ ./$@
.PHONY: distclean
distclean: clean-bibsp
clean-bibsp:
	find ${BIBSP_LINK} -type l | xargs ${RM}
bibsp.sty: bibsp.bib

endif
