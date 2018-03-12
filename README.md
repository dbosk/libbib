# BibSP: Bibliographies and acronyms library in Security and Privacy

Contains BibTeX bibliography databases for different areas in Security and 
Privacy. Also contains acronyms in these areas with citations to the seminal 
papers, where relevant.


## Documentation

The bibsp package `bibsp.sty` will provide acronyms and commands useful when 
writing papers in the area of Security and Privacy. Its documentation can be 
found in `bibsp.pdf`, which can be built by running `make bibsp.pdf`. This 
requires the submodule `makefiles` acquired by running `git submodule update 
--init`.


## Compilation

All the `.sty`, `.bib` and `.mk` files are generated from the `bibsp.nw` source 
file. These can be recompiled by running `make all`. This requires the 
`makefiles` submodule, obtained by running `git submodule update --init`.
