#!/bin/bash -e
# remote_map_planets_check.sh - Make global planet test maps for both 05m and 06m resolutions
#
# usage: bash remote_map_planets_check.sh
#
# Loops over all recipes and makes global maps of them for the two resolutions
# This checks that the tiled and single grid versions are similar.  We use the
# candidate server which must pass all tests before overwriting oceania.
#
list=(mars   mercury moon   pluto  venus)
type=(relief relief  relief relief relief)

gmt set GMT_DATA_SERVER candidate
for set in ${list[@]}; do
	gmt begin check_${set} png
		gmt subplot begin 2x1 -Fs15c/12c -Rg -JH15c -A -T"Planet ${set}"
		gmt subplot set 0 -A"6m"
		gmt grdimage @${set}_${type}_06m -Rg
		gmt subplot set 1 -A"5m"
		gmt grdimage @${set}_${type}_05m -Rg
		gmt subplot end
	gmt end show
done
rm -f gmt.conf
