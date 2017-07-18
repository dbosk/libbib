BIBSP_TOPIC+=	auth passwd ac
BIBSP_TOPIC+=	anon
BIBSP_TOPIC+=	crypto be mpc
BIBSP_TOPIC+=	privacy meta surveillance hr
BIBSP_TOPIC+=	protests voting
BIBSP_TOPIC+=	osn
BIBSP_TOPIC+=	reputation
BIBSP_TOPIC+=	location
BIBSP_TOPIC+=	stats
BIBSP_TOPIC+=	blockchain depend
BIBSP_TOPIC+=	nfc
BIBSP_TOPIC+=	adhocnets

BIBSP_TOPIC+=	otrmsg otpkx ppes


### BIB FILES ###

define bibsp_bibfiles
BIBSP_BIB+=		$(1).bib
endef

$(foreach topic,${BIBSP_TOPIC},$(eval $(call bibsp_bibfiles,${topic})))


### STY FILES ###

BIBSP_STY+=libbib.sty
BIBSP_STY+=bibsp.sty

INCLUDE_BIBSP?=		.
INCLUDE_LIBBIB?=	${INCLUDE_BIBSP}

${BIBSP_BIB} ${BIBSP_STY}:
	[ -e "./$@" ] || ln -s ${INCLUDE_BIBSP}/$@ ./$@

.PHONY: clean-depends distclean
clean-depends distclean: clean-bibsp
clean-bibsp:
	find ${BIBSP_BIB} ${BIBSP_STY} -type l | xargs ${RM}


### INCLUDE FILES ###

define bibsp_includes
include 		${INCLUDE_BIBSP}/$(1).mk
endef

$(foreach topic,${BIBSP_TOPIC},$(eval $(call bibsp_includes,${topic})))


### OPEN FILES ###

define bibsp_display
.PHONY: $(1)
$(1):
	xdg-open ${URL-$(1)}
endef

$(foreach ref,${BIBSP_REFKEY},$(eval $(call bibsp_display,${ref})))
