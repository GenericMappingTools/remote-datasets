IGPP Earth Relief
-----------------

.. figure:: /_static/igpp.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_earth_relief.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access a global relief grid by specifying the special name

   @earth_relief[_\ *rru*\ [_\ *reg*\ ]]

This grid only contains observed relief and inferred relief via altimetric gravity.
A new version that uses the statistical properties of young seafloor fabric and
directions of spreading is also available and provides more realistic relief in
areas of young seafloor with small seamounts. That grid can be accessed via

   @earth_synbath[_\ *rru*\ [_\ *reg*\ ]]

The following codes for the optional *rr*\ *u* and *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_relief:

  ==== ================= === =======  ==================================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==================================================
  01d       360 x    180 g,p  111 KB  1 arc degree global relief (SRTM15+V2.6 @ 315 km)
  30m       720 x    360 g,p  381 KB  30 arc minute global relief (SRTM15+V2.6 @ 157 km)
  20m      1080 x    540 g,p  799 KB  20 arc minute global relief (SRTM15+V2.6 @ 105 km)
  15m      1440 x    720 g,p  1.3 MB  15 arc minute global relief (SRTM15+V2.6 @ 79 km)
  10m      2160 x   1080 g,p  2.9 MB  10 arc minute global relief (SRTM15+V2.6 @ 52 km)
  06m      3600 x   1800 g,p  7.7 MB  6 arc minute global relief (SRTM15+V2.6 @ 32 km)
  05m      4320 x   2160 g,p   11 MB  5 arc minute global relief (SRTM15+V2.6 @ 26 km)
  04m      5400 x   2700 g,p   17 MB  4 arc minute global relief (SRTM15+V2.6 @ 21 km)
  03m      7200 x   3600 g,p   30 MB  3 arc minute global relief (SRTM15+V2.6 @ 16 km)
  02m     10800 x   5400 g,p   63 MB  2 arc minute global relief (SRTM15+V2.6 @ 11 km)
  01m     21600 x  10800 g,p  233 MB  1 arc minute global relief (SRTM15+V2.6 @ 1.9 km)
  30s     43200 x  21600 g,p  854 MB  30 arc second global relief (SRTM15+V2.6 @ 2.6 km)
  15s     86400 x  43200 p    2.9 GB  15 arc second global relief (SRTM15+V2.6 original)
  03s    432000 x 216000 g    6.8 GB  3 arc second global relief (SRTM3S original)
  01s   1296000 x 432000 g     41 GB  1 arc second global relief (SRTM1S original)
  ==== ================= === =======  ==================================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Data Sets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_relief files being placed in an ``earth/earth_relief`` sub-directory and
the earth_synbath files in an ``earth/earth_synbath`` sub-directory. If you
do not specify a CPT then the default CPT for this dataset (the GMT master *geo* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

As you see, the 30s and lower resolutions are all derivatives of Scripps' SRTM15+V2.6 grid
(Tozer et al., 2019). We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 15 arc sec grid.
The full (6 sigma) filter-widths are indicated in parenthesis. The 3 and 1 arc second data
are the SRTM 1x1 degree tiles from NASA. **Note**: The 3 and 1 arc second grids only extend
to latitudes ±60˚ and are only available over land. When these grids are accessed as
@earth_relief_01s or @earth_relief_03s we will automatically up-sample the relevant @earth_relief_15s
tiles to fill in the missing ocean values. If you just want the original land-only SRTM tiles
you may use the special names @srtm_relief_03s or @srtm_relief_01s instead. Almost all grids
are available in both gridline- and pixel-registered formats except the original pixel-registered
SRTM15+V2.6 (here called @earth_relief_15s) and the gridline-registered SRTM tiles.

Data References
~~~~~~~~~~~~~~~

#. SRTM15+V2.6: [https://doi.org/10.1029/2019EA000658].
#. SYNBATH_V2.0: [https://doi.org/10.1029/2021EA002069].
#. SRTMGL3 tiles: [https://lpdaac.usgs.gov/products/srtmgl3v003].
#. SRTMGL1 tiles: [https://lpdaac.usgs.gov/products/srtmgl1v003].
