#!/usr/bin/env bash
# Makes crustal age map for docs/earth-age.rst
gmt begin GMT_earth_age png
	gmt set MAP_TICK_LENGTH 2p MAP_ANNOT_OFFSET 2p MAP_FRAME_PEN 0.5p GMT_DATA_SERVER candidate
	gmt grdimage @earth_age_10m -JQ0/15c -C@earth_age.cpt
	gmt colorbar -C@earth_age.cpt -G0/164.70 -Dn0.019/0.05+jBL+w14.4c/0.12c+h -S+c --FONT_ANNOT_PRIMARY=5p -F+gwhite+c0p/1p/2p/8p+pfaint
	gmt colorbar -C@earth_age.cpt -G0/164.70 -Dn0.019/0.05+jBL+w14.4c/0.12c+h+ma -S+n --FONT_ANNOT_PRIMARY=3.5p
    gmt psconvert -A -P -E150 -FGMT_earth_age_thumbnail -Tg
gmt end

mv GMT_earth_age.png ../docs/_static/
mv GMT_earth_age_thumbnail.png ../docs/_static/