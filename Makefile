.PHONY: all
all: bibsp.pdf

NOWEAVEFLAGS= 	-n -delay -t2
TEX_IND= 		yes

bibsp.pdf: bibsp.tex preamble.tex bibsp.sty
bibsp.pdf: abstract.tex LICENSE
bibsp.pdf: bibsp.tex


.PHONY: all
all: bibsp.sty

bibsp.sty: bibsp.nw


.PHONY: all
all: bibsp.mk

bibsp.mk: bibsp.nw


BIBSP_TOPIC+= 	crypto
BIBSP_TOPIC+= 	be mpc
BIBSP_TOPIC+= 	auth
BIBSP_TOPIC+= 	passwd
BIBSP_TOPIC+= 	location
BIBSP_TOPIC+= 	nfc
BIBSP_TOPIC+= 	ac
BIBSP_TOPIC+= 	anon
BIBSP_TOPIC+= 	privacy
BIBSP_TOPIC+= 	meta
BIBSP_TOPIC+= 	surveillance
BIBSP_TOPIC+= 	hr
BIBSP_TOPIC+= 	protests
BIBSP_TOPIC+= 	voting
BIBSP_TOPIC+= 	stats
BIBSP_TOPIC+= 	osn
BIBSP_TOPIC+= 	reputation
BIBSP_TOPIC+= 	blockchain
BIBSP_TOPIC+= 	ecurrency
BIBSP_TOPIC+= 	depend
BIBSP_TOPIC+= 	adhocnets

BIBSP_TOPIC+= 	otrmsg otpkx ppes

.PHONY: all
all: $(foreach t,${BIBSP_TOPIC}, ${t}.bib ${t}.mk)

$(foreach t,${BIBSP_TOPIC}, ${t}.bib ${t}.mk): bibsp.nw
	${NOTANGLE} ${NOTANGLEFLAGS} -R$@ $< > $@


.PHONY: clean
clean:
	${RM} bibsp.pdf bibsp.tex


PKG_PACKAGES= 			main docs

PKG_NAME= 				bibsp
PKG_PREFIX= 			${HOME}
PKG_TARBALL_FILES= 		${PKG_FILES-main} ${PKG_FILES-docs} Makefile

PKG_INSTALL_DIR-main= 	/texmf/tex/latex/bibsp
PKG_INSTALL_FILES-main= bibsp.sty ${BIBSP_BIB}

PKG_INSTALL_DIR-docs= 	/texmf/doc/latex/bibsp
PKG_INSTALL_FILES-docs= bibsp.pdf

#do-install-docs:
#	for f in ${PKG_INSTALL_FILES-docs}; do \
#		cp $f ${PKG_PREFIX-docs} ${PKG_INSTALL_DIRS-docs}; \
#	done


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/pkg.mk
