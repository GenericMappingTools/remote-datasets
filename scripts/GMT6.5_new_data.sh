#!/usr/bin/env bash
# FIgure showing new data in 6.5 for showing in news, instagram etc.

cat << EOF > list.txt
-120	67.5    GSHHS DIST
0		67.5    E-W DEFL
120		67.5    FAA ERRORS
-120	22.5    N-S DEFL
0		22.5    DYN. TOPO
120		22.5    MEAN SUR
-120	-22.5   MARS
0		-22.5   LEGEND
120		-22.5   MERCURY
-120	-67.5   MOON
0		-67.5   PLUTO
120		-67.5   VENUS
EOF
gmt begin GMT_new_data jpg
	gmt subplot begin 4x3 -Fs6c/3c -Rd -JQ6c -B0 -M0p
		gmt grdimage @earth_dist_10m -I -c		# Distances
		gmt grdimage @earth_edefl_10m -I -c		# E-W Deflections
		gmt grdimage @earth_faaerror_10m -I -c	# FAA error
		gmt grdimage @earth_ndefl_10m -I -c		# N-S Deflections
		gmt grdimage @earth_mdt_10m -I -c		# Mean dynamic topography
		gmt grdimage @earth_mss_10m -I -c		# Mean Sea Surface topography
		gmt grdimage @mars_relief_10m -I -c		# Mars MOLA topography
		gmt plot -c -W0.25p -A <<- EOF
		> Horizontal lines
		-180	+45
		0		+45
		+180	+45
		>
		-180	0
		0		0
		+180	0
		>
		-180	-45
		0		-45
		+180	-45
		> Vertical lines
		-60		+90
		-60		-90
		>
		+60	+90
		+60	-90
		EOF
		gmt text -F+f8p,1 list.txt
		gmt grdimage @mercury_relief_10m -I -c	# Mercury Messenger topography
		gmt grdimage @moon_relief_10m -I -c		# Moon LOLA topography
		gmt grdimage @pluto_relief_10m -I -c	# Pluto New Horizon topography
		gmt grdimage @venus_relief_10m -I -c	# Venus Magellan topography
	gmt subplot end
gmt end show
rm -f list.txt
