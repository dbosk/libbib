.PHONY: ReplicaPlacement
ReplicaPlacement: ReplicaPlacement.pdf
	evince $^

OSN_FILES+= ReplicaPlacement.pdf
ReplicaPlacement.pdf:
	wget -O $@ http://www.mimuw.edu.pl/~krzadca/papers/serenity_icdcs.pdf


.PHONY: DataAvailability
DataAvailability: DataAvailability.pdf
	evince $^

OSN_FILES+= DataAvailability.pdf
DataAvailability.pdf:
	wget -O $@ http://www.mimuw.edu.pl/~krzadca/papers/mech-taas2015.pdf


.PHONY: Peerson DECENT Cachet Persona
Peerson: Peerson.pdf
DECENT: DECENT.pdf
Cachet: Cachet.pdf
Persona: Persona.pdf

Peerson DECENT Cachet Persona:
	evince $^

OSN_FILES+= Peerson.pdf DECENT.pdf Cachet.pdf Persona.pdf
Peerson.pdf:
	wget -O $@ http://peerson.net/papers/sns09peerson.pdf
DECENT.pdf:
	wget -O $@ http://ieeexplore.ieee.org/ielx5/6192378/6197445/06197504.pdf
Cachet.pdf:
	wget -O $@ http://delivery.acm.org/10.1145/2420000/2413215/p337-nilizadeh.pdf
Persona.pdf:
	wget -O $@ http://delivery.acm.org/10.1145/1600000/1592585/p135-baden.pdf


.PHONY: clean-depends clean-osn
clean-depends: clean-osn
clean-osn:
	${RM} ${OSN_FILES}
