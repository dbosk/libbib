.PHONY: TowardsPPACwHPHCHD
TowardsPPACwHPHCHD: TowardsPPACwHPHCHD.pdf
	evince $^

AC_FILES+= TowardsPPACwHPHCHD.pdf
TowardsPPACwHPHCHD.pdf:
	wget -O $@ http://ieeexplore.ieee.org/ielx5/6287257/6297910/06297915.pdf?tp=&arnumber=6297915&isnumber=6297910


.PHONY: AccessControl
AccessControl: AccessControl.pdf
	evince $^

AC_FILES+= AccessControl.pdf
AccessControl.pdf:
	wget $@ http://ieeexplore.ieee.org/ielx1/35/7577/00312842.pdf?tp=&arnumber=312842&isnumber=7577

.PHONY: PEAC
PEAC: PEAC.pdf
	evince $^

AC_FILES+= PEAC.pdf
PEAC.pdf:
	wget -O $@ http://peerson.net/papers/sesocPredicateEncryption.pdf


.PHONY: DistStorAccessControl
DistStorAccessControl: DistStorAccessControl.pdf
	evince $^

AC_FILES+= DistStorAccessControl.pdf
DistStorAccessControl.pdf:
	wget -O $@ https://github.com/dbosk/anobe/releases/download/v0.1/anobe-paper.pdf


.PHONY: clean-depends clean-ac
clean-depends: clean-ac
clean-ac:
	${RM} ${AC_FILES}
