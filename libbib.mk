LIBBIB+=ac.bib
LIBBIB+=anon.bib
LIBBIB+=auth.bib
LIBBIB+=be.bib
LIBBIB+=crypto.bib
LIBBIB+=location.bib
LIBBIB+=meta.bib
LIBBIB+=nfc.bib
LIBBIB+=osn.bib
LIBBIB+=otrmsg.bib
LIBBIB+=otpkx.bib
LIBBIB+=ppes.bib
LIBBIB+=privacy.bib
LIBBIB+=reputation.bib
LIBBIB+=surveillance.bib
LIBBIB+=mpc.bib

LIBBIB+=libbib.sty

INCLUDE_LIBBIB?=libbib

${LIBBIB}:
	[ -e "./$@" ] || ln -s ${INCLUDE_LIBBIB}/$@ ./$@

.PHONY: clean-depends
clean-depends: clean-libbib
clean-libbib:
	find ${LIBBIB} -type l | xargs ${RM}

include ${INCLUDE_LIBBIB}/ac.mk
include ${INCLUDE_LIBBIB}/anon.mk
include ${INCLUDE_LIBBIB}/auth.mk
include ${INCLUDE_LIBBIB}/be.mk
include ${INCLUDE_LIBBIB}/crypto.mk
include ${INCLUDE_LIBBIB}/location.mk
include ${INCLUDE_LIBBIB}/meta.mk
include ${INCLUDE_LIBBIB}/osn.mk
include ${INCLUDE_LIBBIB}/ppes.mk
include ${INCLUDE_LIBBIB}/privacy.mk
include ${INCLUDE_LIBBIB}/reputation.mk
include ${INCLUDE_LIBBIB}/mpc.mk
