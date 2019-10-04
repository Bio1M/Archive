## This is Bio1MArchive, a screens project directory
## 1M/Archive
## makestuff/project.Makefile
## TODO: A principled pipeline for moving things from tests to here.

current: target
-include target.mk

# include makestuff/perl.def

######################################################################

vim_session:
	bash -cl "vmt"

######################################################################

## Publicly available test and practice questions. Still haven't found everything from pre-2010

## Bank has been sorted; should contain only _links_ to .doc versions
Sources += bank.txt

## Organizing by unit
Sources += intro.txt ns.txt processes.txt speciation.txt phylogeny.txt apes.txt homo.txt

## Stuff from sections I'm not doing in 2017
## ecology includes a lot of behaviour stuff; maybe that's what it should be called
## taxa is probably forever eliminated
Sources += taxa.txt ecology.txt humans.txt

######################################################################

## Old tests from source

Sources += $(wildcard *.test)

## 201701.test
## 201801.test ## Probably needs to be updated, see ../Tests

######################################################################

Sources += images/

products:
	$(mkdir)

# Not a very good picture; it's archived and I might like the rule, but I'm not feeling inclined to use the picture
products/primates.png: 

# morning and evening are super-simple, but probably useful in some context …
products/%.png: images/%.emf
	$(MAKE) products
	libreoffice --headless --convert-to png --outdir products $<

allemf:
	libreoffice --headless --convert-to png --outdir products images/*.emf

######################################################################

### Makestuff

Sources += Makefile README.md

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

-include makestuff/os.mk
-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
