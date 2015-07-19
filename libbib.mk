LIBBIB+=anon.bib
LIBBIB+=crypto.bib
LIBBIB+=meta.bib
LIBBIB+=osn.bib
LIBBIB+=otrmsg.bib
LIBBIB+=ppes.bib
LIBBIB+=surveillance.bib
LIBBIB+=privacy.bib
LIBBIB+=otpkx.bib
LIBBIB+=nfc.bib
LIBBIB+=ac.bib
LIBBIB+=be.bib

LIBBIB+=libbib.sty

INCLUDE_LIBBIB?=libbib

${LIBBIB}: libbib
	[ -e "./$@" ] || ln -s ${INCLUDE_LIBBIB}/$@ ./$@

.PHONY: clean-depends
clean-depends: clean-libbib
clean-libbib:
	find ${LIBBIB} -type l | xargs ${RM}

include ${INCLUDE_LIBBIB}/ac.mk
include ${INCLUDE_LIBBIB}/anon.mk
include ${INCLUDE_LIBBIB}/be.mk
include ${INCLUDE_LIBBIB}/crypto.mk
include ${INCLUDE_LIBBIB}/meta.mk
include ${INCLUDE_LIBBIB}/osn.mk
include ${INCLUDE_LIBBIB}/privacy.mk
