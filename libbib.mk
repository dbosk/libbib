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

LIBBIB+=ac.acr
LIBBIB+=crypto.acr
LIBBIB+=stdterm.acr
LIBBIB+=surveillance.acr

INCLUDE_LIBBIB?=libbib

${LIBBIB}: libbib
	[ -e "./$@" ] || ln -s ${INCLUDE_LIBBIB}/$@ ./$@

.PHONY: clean-depends
clean-depends: clean-libbib
clean-libbib:
	find ${LIBBIB} -type l | xargs ${RM}

include ${INCLUDE_LIBBIB}/ac.mk
