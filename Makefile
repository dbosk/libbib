.PHONY: all
all: bibsp.pdf

bibsp.pdf: bibsp.tex preamble.tex
bibsp.pdf: abstract.tex LICENSE

bibsp.tex: bibsp.nw


.PHONY:
all: bibsp.sty

bibsp.sty: bibsp.nw


.PHONY: clean
clean:
	${RM} bibsp.sty bibsp.pdf bibsp.tex


PKG_PACKAGES= 			main docs

PKG_NAME= 				bibsp
PKG_PREFIX= 			${HOME}
PKG_TARBALL_FILES= 		${PKG_FILES-main} ${PKG_FILES-docs} Makefile

PKG_DIR-main= 			/texmf/tex/latex/bibsp
PKG_FILES-main= 		bibsp.sty ${BIBSP_BIB}

PKG_DIR-docs= 			/texmf/doc/latex/bibsp
PKG_FILES-docs= 		bibsp.pdf


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/pkg.mk


bibsp.mk: bibsp.nw

include bibsp.mk
