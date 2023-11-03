#!/usr/bin/env bash
# Makes maps for every dataset in list for docs/earth-"set".rst

list=(age day edefl faa faaerror gebco gebcosi geoid mag mag4km mask mdt mss ndefl night relief synbath vgg wdmam)

gmt set GMT_DATA_SERVER candidate
for set in ${list[@]}; do
	gmt begin GMT_earth_${set} jpg
        gmt grdimage @earth_${set}_10m -JQ0/7.5c -I -Rd
        gmt psconvert -A -P -E150 -FGMT_earth_${set}_thumbnail -Tj
	gmt end
    mv GMT_earth_${set}.jpg ../docs/_static/
    mv GMT_earth_${set}_thumbnail.jpg ../docs/_static/
done
rm -f gmt.conf