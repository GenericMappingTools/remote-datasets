# Makefile for remote-datasets script dir

help::
		@grep '^#!' Makefile | cut -c3-
#!-------------------- MAKE HELP FOR REMOTE-DATASETS-SCRIPTS --------------------
#!
#!make <target>, where <target> can be:
#!
#!earth        : Make the Earth remote data test maps
#!planets      : Make the planetary remote data test maps
#!all-tests    : Make all remote data test maps
#
#!docs         : Make the RST->HTML documentation
#!

all-tests:	remote_map_earth_check.sh remote_map_planets_check.sh

earth:	remote_map_earth_check.sh
	bash remote_map_earth_check.sh

planets:	remote_map_planets_check.sh
	bash remote_map_planets_check.sh

docs:
	(cd docs; make)
