.PHONY: TowardsPPACwHPHCHD
TowardsPPACwHPHCHD: TowardsPPACwHPHCHD.pdf
	evince $^

AC_FILES+= TowardsPPACwHPHCHD.pdf
TowardsPPACwHPHCHD.pdf:
	wget -O $@ http://ieeexplore.ieee.org/ielx5/6287257/6297910/06297915.pdf?tp=&arnumber=6297915&isnumber=6297910

.PHONY: clean-depends clean-ac
clean-depends: clean-ac
clean-ac:
	${RM} ${AC_FILES}
