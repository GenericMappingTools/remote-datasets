#!/bin/bash -e
# remote_map_earth_check.sh - Make global Earth test maps for both 05m and 06m resolutions
#
# usage: bash remote_map_earth_check.sh
#
# Loops over all recipes and makes global maps of them for the two resolutions
# This checks that the tiled and single grid versions are similar.  We use the
# candidate server which must pass all tests before overwriting oceania.
#
list=(age day edefl faa faaerror gebco gebcosi geoid mag mag4km mask mss ndefl night relief synbath vgg wdmam)

gmt set GMT_DATA_SERVER candidate
for set in ${list[@]}; do
	gmt begin check_earth_${set} png
		gmt subplot begin 2x1 -Fs15c/12c -Rd -JH15c -A -T"earth_${set}"
		gmt subplot set 0 -A"6m"
		gmt grdimage @earth_${set}_06m -Rd
		gmt subplot set 1 -A"5m"
		gmt grdimage @earth_${set}_05m -Rd
		gmt subplot end
	gmt end show
done
rm -f gmt.conf
