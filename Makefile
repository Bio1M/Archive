# Archive
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources += Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

##################################################################

## Content

## Bank has been sorted; should contain only _links_ to .doc versions
Sources += bank.txt

## Organizing by unit
Sources += intro.txt ns.txt processes.txt speciation.txt phylogeny.txt apes.txt homo.txt

## Stuff from sections I'm not doing in 2017
## ecology includes a lot of behaviour stuff; maybe that's what it should be called
## taxa is probably forever eliminated
Sources += taxa.txt ecology.txt humans.txt

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

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
