#!/usr/bin/env bash
# Makes maps for every dataset in list for docs/earth-"set".rst

list=(faa gebcosi geoid mag4km relief vgg wdmam)

gmt set GMT_DATA_SERVER candidate
for set in ${list[@]}; do
	gmt begin GMT_${set} jpg
    gmt grdimage @earth_${set}_10m -JQ0/6i -I -Rd
	gmt end
    
    #mv GMT_${set}.jpg ../docs/_static/
done
rm -f gmt.conf

