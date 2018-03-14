BIBSP_LINK+=  bibsp.sty
INCLUDE_BIBSP?=.
BIBSP_TOPIC+=   crypto
BIBSP_TOPIC+=   auth
BIBSP_TOPIC+=   passwd
BIBSP_TOPIC+=   location
BIBSP_TOPIC+=	adhocnets
BIBSP_TOPIC+=	anon
BIBSP_TOPIC+=   be
BIBSP_TOPIC+=   mpc
BIBSP_TOPIC+=	blockchain
BIBSP_TOPIC+=	privacy
BIBSP_TOPIC+= meta
BIBSP_TOPIC+= surveillance
BIBSP_TOPIC+= hr
BIBSP_TOPIC+=	protests
BIBSP_TOPIC+= voting
BIBSP_TOPIC+=	osn
BIBSP_TOPIC+=	reputation

BIBSP_TOPIC+=	stats
BIBSP_TOPIC+= depend
BIBSP_TOPIC+=	nfc
BIBSP_TOPIC+=	ecurrency
BIBSP_TOPIC+=	otrmsg otpkx ppes
BIBSP_TOPIC+=   ac
${BIBSP_LINK}:
	[ -e "./$@" ] || ln -s ${INCLUDE_BIBSP}/$@ ./$@
.PHONY: distclean
distclean: clean-bibsp
clean-bibsp:
	find ${BIBSP_LINK} -type l | xargs ${RM}
define bibsp_display
.PHONY: $(1)
$(1):
	xdg-open ${URL-$(1)}
endef

$(foreach ref,${BIBSP_REFKEY},$(eval $(call bibsp_display,${ref})))
define bibsp_bibfiles
BIBSP_LINK+=		$(1).bib
endef

$(foreach topic,${BIBSP_TOPIC},$(eval $(call bibsp_bibfiles,${topic})))
define bibsp_includes
include 		$${INCLUDE_BIBSP}/$(1).mk
endef

$(foreach topic,${BIBSP_TOPIC},$(eval $(call bibsp_includes,${topic})))
