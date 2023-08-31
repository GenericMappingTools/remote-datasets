#!/bin/bash -e
# remote_map_check.sh - Make Earth and planetary test maps for both 05m and 06m resolutions
#
# usage: remote_map_check
#
# Loops over all recipes and makes global maps of them for the two resolutions
# This checks that the tiled and single grid versions are similar.  We use the
# candidate server which must pass all tests before overwriting oceania.
#
kind=(earth planets)

for set in ${kind[@]}; do
	remote_map_${set}_check
done
