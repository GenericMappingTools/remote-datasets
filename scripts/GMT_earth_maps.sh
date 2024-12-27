#!/usr/bin/env bash
# Makes maps for every dataset in list for docs/earth-"set".rst
# Exclude close relatives like relief|synbath, gebco|gebcosi, and mag|mag4k

list=(day night age dist edefl faa faaerror gebco geoid mag mask mdt mss ndefl relief vgg wdmam)

gmt set GMT_DATA_SERVER candidate
let k=0
I=""
for set in ${list[@]}; do
    gmt begin GMT_earth_${set} jpg
        gmt grdimage @earth_${set}_10m -JQ0/7.5c -Rd ${I}
        if [ set = dist ]; then
          gmt coast -W1/0.2p,white -Df
        fi
        gmt psconvert -A -P -E150 -FGMT_earth_${set}_thumbnail -Tj
    gmt end
    mv GMT_earth_${set}.jpg ../docs/_static/
    mv GMT_earth_${set}_thumbnail.jpg ../docs/_static/
    let k++
    if [ $k -eq 2 ]; then
        I="-I"
    fi
done
rm -f gmt.conf
