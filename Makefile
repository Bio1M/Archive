# Archive
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

##################################################################

## Content

## Just dumping what I can find for now.
Sources += bank.txt

Sources += images/

products:
	$(mkdir)

# Not a very good picture; it's archived and I might like the rule, but I'm not feeling inclined to use the picture
products/primates.png: 

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
