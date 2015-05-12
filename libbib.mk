LIBBIB+=anon.bib
LIBBIB+=crypto.bib
LIBBIB+=meta.bib
LIBBIB+=osn.bib
LIBBIB+=otrmsg.bib
LIBBIB+=ppes.bib
LIBBIB+=surveillance.bib
LIBBIB+=privacy.bib

LIBBIB+=ac.acr
LIBBIB+=crypto.acr
LIBBIB+=stdterm.acr
LIBBIB+=surveillance.acr

${LIBBIB}: libbib
	[ -e "./$@" ] || ln -s libbib/$@ ./$@

.PHONY: clean-depends
clean-depends: clean-libbib
clean-libbib:
	find ${LIBBIB} -type l | xargs ${RM}
