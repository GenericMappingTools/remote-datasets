GEBCO Earth Reliefs
-------------------

.. figure:: /_static/igpp.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_earth_gebco.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access the GEBCO global relief grid by specifying the special name

   @earth_gebco[_\ *rru*\ [_\ *reg*\ ]]

This grid only contains observed relief and inferred relief via altimetric gravity.
A second grid that gives sub-ice (si) elevations is also available and can be accessed via

   @earth_gebcosi[_\ *rru*\ [_\ *reg*\ ]]

and is the one displayed above. The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_gebco:

  ==== ================= === =======  ================================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ================================================
  01d       360 x    180 g,p  103 KB  1 arc degree global relief (GEBCO 2024 @ 315 km)
  30m       720 x    360 g,p  350 KB  30 arc minute global relief (GEBCO 2024 @ 157 km)
  20m      1080 x    540 g,p  729 KB  20 arc minute global relief (GEBCO 2024 @ 105 km)
  15m      1440 x    720 g,p  1.3 MB  15 arc minute global relief (GEBCO 2024 @ 79 km)
  10m      2160 x   1080 g,p  2.7 MB  10 arc minute global relief (GEBCO 2024 @ 52 km)
  06m      3600 x   1800 g,p  7.1 MB  6 arc minute global relief (GEBCO 2024 @ 32 km)
  05m      4320 x   2160 g,p   10 MB  5 arc minute global relief (GEBCO 2024 @ 26 km)
  04m      5400 x   2700 g,p   16 MB  4 arc minute global relief (GEBCO 2024 @ 21 km)
  03m      7200 x   3600 g,p   27 MB  3 arc minute global relief (GEBCO 2024 @ 16 km)
  02m     10800 x   5400 g,p   58 MB  2 arc minute global relief (GEBCO 2024 @ 11 km)
  01m     21600 x  10800 g,p  211 MB  1 arc minute global relief (GEBCO 2024 @ 1.9 km)
  30s     43200 x  21600 g,p  752 MB  30 arc second global relief (GEBCO 2024 @ 2.6 km)
  15s     86400 x  43200 p    2.6 GB  15 arc second global relief (GEBCO 2024 original)
  03s    432000 x 216000 g    6.8 GB  3 arc second global relief (SRTM3S original)
  01s   1296000 x 432000 g     41 GB  1 arc second global relief (SRTM1S original)
  ==== ================= === =======  ================================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Data Sets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_gebco files being placed in an ``earth/earth_gebco`` sub-directory,
and earth_gebcosi files in an ``earth/earth_gebcosi`` sub-directory. If you
do not specify a CPT then the default CPT (the GMT master *geo* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

As you see, the 30s and lower resolutions are all derivatives of GEBCO's 2024 15 arc second grids
(GEBCO_Compilation_Group, 2024). We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 15 arc sec grid.
The full (6 sigma) filter-widths are indicated in parenthesis. The 3 and 1 arc second data
are the SRTM 1x1 degree tiles from NASA. **Note**: The 3 and 1 arc second grids only extend
to latitudes ±60˚ and are only available over land. When these grids are accessed as
@earth_gebco_01s or @earth_gebco_03s we will automatically up-sample the relevant @earth_gebco_15s
tiles to fill in the missing ocean values. If you just want the original land-only SRTM tiles
you may use the special names @srtm_relief_03s or @srtm_relief_01s instead. Almost all grids
are available in both gridline- and pixel-registered formats except the original pixel-registered
GEBCO 2024 (here called @earth_gebco_15s) and the gridline-registered SRTM tiles.

Data References
~~~~~~~~~~~~~~~

#. GEBCO Compilation Group (2024) GEBCO 2024 Grid (https://doi.org/10.5285/1c44ce99-0a0d-5f4f-e063-7086abc0ea0f)
#. SRTMGL3 tiles: [https://lpdaac.usgs.gov/products/srtmgl3v003].
#. SRTMGL1 tiles: [https://lpdaac.usgs.gov/products/srtmgl1v003].
