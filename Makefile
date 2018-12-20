BIBSP_MODULES+= maths
BIBSP_MODULES+= protocols
BIBSP_MODULES+= crypto
BIBSP_MODULES+= auth
BIBSP_MODULES+= org


.PHONY: all
all: bibsp.pdf

NOWEAVEFLAGS= 	-n -delay -t2
TEX_IND= 		yes

bibsp.pdf: bibsp.tex preamble.tex bibsp.sty
bibsp.pdf: abstract.tex LICENSE
bibsp.pdf: bibsp.tex

bibsp.pdf: $(addsuffix .tex,${BIBSP_MODULES})


.PHONY: all
all: bibsp.sty bibsp.bib

bibsp.sty bibsp.bib: bibsp.nw
bibsp.sty bibsp.bib: $(addsuffix .nw,${BIBSP_MODULES})
	notangle ${NOTANGLEFLAGS} -R$@ $^ > $@


.PHONY: all
all: bibsp.mk

bibsp.mk: bibsp.nw


.PHONY: all
all: feed2imaprc
feed2imaprc: bibsp.nw
	${NOTANGLE}


.PHONY: clean
clean:
	${RM} bibsp.pdf bibsp.tex
	${RM} $(addsuffix .tex,${BIBSP_MODULES})
	${RM} feed2imaprc


PKG_PACKAGES?= 			main docs feed2imap

PKG_NAME= 				bibsp
PKG_PREFIX?= 			${HOME}
PKG_TARBALL_FILES= 		Makefiles
PKG_TARBALL_FILES+= 	$(foreach p,${PKG_PACKAGES},${PKG_INSTALL_FILES-$p} )

PKG_INSTALL_DIR-main= 	/texmf/tex/latex/bibsp
PKG_INSTALL_FILES-main= bibsp.sty bibsp.bib

PKG_INSTALL_DIR-docs= 	/texmf/doc/latex/bibsp
PKG_INSTALL_FILES-docs= bibsp.pdf

PKG_INSTALL_DIR-feed2imap=${HOME}
PKG_PREFIX-feed2imap=
PKG_INSTALL_FILES-feed2imap=feed2imaprc

define post-install-msg
@echo
@echo Please run \`crontab -e\` and add the following line
@echo
@echo "  0 11,15   *   *   *   feed2imap -f ~/.feed2imaprc-bibsp"
@echo
@echo This will run feed2imap at 11:00 and 15:00 every day.
endef

post-install-feed2imap:
	${post-install-msg}


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/pkg.mk

do-install-feed2imap:
	${CP} ${PKG_INSTALL_FILES-feed2imap} ${PKG_INSTALL_DIR-feed2imap}/.feed2imaprc-bibsp


