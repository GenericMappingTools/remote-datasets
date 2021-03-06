#!/bin/bash -e
# remote_map_check.sh - Make global test maps for both 05m and 06m resolutions
#
# usage: remote_map_check
#
# Loops over all recipies and makes global maps of them for the two resolutions
# This checks that the tiled and single grid versions are similar
#
list=(age day faa gebco gebcosi geoid mag mag4km mask night relief vgg wdmam)

for set in ${list[@]}; do
	gmt begin check_${set} png
		gmt subplot begin 2x1 -Fs15c/12c -Rg -JH15c -A -T"earth_${set}"
		gmt subplot set 0 -A"6m"
		gmt grdimage @earth_${set}_06m -Rg
		gmt subplot set 1 -A"5m"
		gmt grdimage @earth_${set}_05m -Rg
		gmt subplot end
	gmt end show
done
