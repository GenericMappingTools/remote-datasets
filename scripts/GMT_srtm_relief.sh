gmt begin GMT_srtm_relief jpg
	gmt set GMT_THEME cookbook GMT_DATA_SERVER candidate
	gmt grdclip @earth_relief_10m -Gearth_relief.nc -Sb0/NaN -R-180/180/-60/60
	gmt basemap -Rd -JQ0/15c -B+g128
	gmt grdimage earth_relief.nc -I -Q
	gmt coast -Da -W1/0.2p 
    gmt psconvert -A -P -E150 -FGMT_srtm_relief_thumbnail -Tj
gmt end

rm -f gmt.conf gmt.history earth_relief.nc
mv GMT_srtm_relief.jpg ../docs/_static/
mv GMT_srtm_relief_thumbnail.jpg ../docs/_static/
