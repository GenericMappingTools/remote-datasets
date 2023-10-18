#!/usr/bin/env bash
# Makes relief maps for every planet in list for docs/"planet"-relief.rst

list=(mars mercury moon pluto venus)

gmt set GMT_DATA_SERVER candidate
for set in ${list[@]}; do
	gmt begin GMT_${set}_relief jpg
        gmt grdimage @${set}_relief -JQ0/7.5c -I -Rd
        gmt psconvert -A -P -E150 -FGMT_${set}_relief_thumbnail -Tj
	gmt end
    mv GMT_${set}_relief.jpg ../docs/_static/
    mv GMT_${set}_relief_thumbnail.jpg ../docs/_static/
done
rm -f gmt.conf