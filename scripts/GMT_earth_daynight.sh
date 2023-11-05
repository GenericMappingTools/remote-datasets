#!/usr/bin/env bash
# Makes day-night map for docs/earth-daynight.rst
gmt begin GMT_earth_daynight jpg
	gmt set GMT_THEME cookbook GMT_DATA_SERVER candidate
    gmt grdmath -Rd -I10m -r $(gmt solar -C -o0:1 -I+d2000-06-22T24:00+z-10) 2 DAYNIGHT = w.grd
    gmt grdgradient @earth_relief_10m_p -Nt0.5 -A45 -Gintens.grd
    gmt grdmix @earth_day_10m @earth_night_10m -Ww.grd -Iintens.grd -Gview.tif
    gmt grdimage view.tif -JQ0/7.5c
    rm -f w.grd intens.grd view.tif
    gmt psconvert -A -P -E150 -FGMT_earth_daynight_thumbnail -Tj
gmt end

mv GMT_earth_daynight.jpg ../docs/_static
mv GMT_earth_daynight_thumbnail.jpg ../docs/_static/