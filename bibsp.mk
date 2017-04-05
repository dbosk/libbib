BIBSP_BIB+=ac.bib
BIBSP_BIB+=anon.bib
BIBSP_BIB+=auth.bib
BIBSP_BIB+=be.bib
BIBSP_BIB+=crypto.bib
BIBSP_BIB+=depend.bib
BIBSP_BIB+=location.bib
BIBSP_BIB+=meta.bib
BIBSP_BIB+=nfc.bib
BIBSP_BIB+=osn.bib
BIBSP_BIB+=otrmsg.bib
BIBSP_BIB+=otpkx.bib
BIBSP_BIB+=ppes.bib
BIBSP_BIB+=privacy.bib
BIBSP_BIB+=reputation.bib
BIBSP_BIB+=surveillance.bib
BIBSP_BIB+=mpc.bib
BIBSP_BIB+=passwd.bib
BIBSP_BIB+=protests.bib
BIBSP_BIB+=voting.bib

BIBSP_STY+=libbib.sty
BIBSP_STY+=bibsp.sty

INCLUDE_LIBBIB?=	.
INCLUDE_BIBSP?=		${INCLUDE_LIBBIB}

${BIBSP_BIB} ${BIBSP_STY}:
	[ -e "./$@" ] || ln -s ${INCLUDE_BIBSP}/$@ ./$@

.PHONY: clean-depends
clean-depends: clean-bibsp
clean-bibsp:
	find ${BIBSP_BIB} ${BIBSP_STY} -type l | xargs ${RM}

include ${INCLUDE_BIBSP}/ac.mk
include ${INCLUDE_BIBSP}/anon.mk
include ${INCLUDE_BIBSP}/auth.mk
include ${INCLUDE_BIBSP}/be.mk
include ${INCLUDE_BIBSP}/crypto.mk
include ${INCLUDE_BIBSP}/depend.mk
include ${INCLUDE_BIBSP}/location.mk
include ${INCLUDE_BIBSP}/meta.mk
include ${INCLUDE_BIBSP}/osn.mk
include ${INCLUDE_BIBSP}/ppes.mk
include ${INCLUDE_BIBSP}/privacy.mk
include ${INCLUDE_BIBSP}/reputation.mk
include ${INCLUDE_BIBSP}/mpc.mk
include ${INCLUDE_BIBSP}/passwd.mk

define bibsp_display
.PHONY: $(1)
$(1):
	xdg-open ${URL-$(1)}
endef

$(foreach ref,${BIBSP_REFKEY},$(eval $(call bibsp_display,${ref})))
