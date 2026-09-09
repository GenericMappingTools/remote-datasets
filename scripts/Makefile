# Makefile for remote-datasets script dir

help::
		@grep '^#!' Makefile | cut -c3-
#!-------------------- MAKE HELP FOR REMOTE-DATASETS-SCRIPTS --------------------
#!
#!make <target>, where <target> can be:
#!
#!update       : Run GMT scripts to rebuild all static images
#!earth        : Make the Earth remote data test maps
#!planets      : Make the planetary remote data test maps
#!all-tests    : Make all remote data test maps
#
#!docs         : Build the documentation
#!

all-tests:	earth planets

update:
	for file in GMT_*.sh; do bash "$$file" || exit 1; done

earth:	remote_map_earth_check.sh
	bash remote_map_earth_check.sh

planets:	remote_map_planets_check.sh
	bash remote_map_planets_check.sh

docs:
	(cd ../docs; make html)
