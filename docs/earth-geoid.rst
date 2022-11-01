EGM2008 Global Earth Geoid
--------------------------
.. figure:: /_static/GMT_geoid.jpg
   :width: 710 px
   :align: center

Geodynamics studies have an interest in the Earth's geoid.  The US National Geospatial-Intelligence Agency's
`Office of Geomatics <https://earth-info.nga.mil>`_ provide spherical harmonics models for the geopotential.
The latest EGM2008 [Pavlis et al., 2012] geoid model is now available for remote use in GMT.

Usage
~~~~~

You access a global geoid grid by specifying the special name

   @earth_geoid[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_geoid:

.. table:: EGM2008 Global Earth Geoid. An asterisk denotes tiled datasets.

  ==== ================= === =======  ==================================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==================================================
  01d       360 x    180 g,p   99 KB  1 arc degree global EGM2008 geoid (1 min @ 111 km)
  30m       720 x    360 g,p  324 KB  30 arc minute global EGM2008 geoid (1 min @ 55 km)
  20m      1080 x    540 g,p  664 KB  20 arc minute global EGM2008 geoid (1 min @ 37 km)
  15m      1440 x    720 g,p  1.1 MB  15 arc minute global EGM2008 geoid (1 min @ 28 km)
  10m      2160 x   1080 g,p  2.9 MB  10 arc minute global EGM2008 geoid (1 min @ 18 km)
  06m      3600 x   1800 g,p  5.9 MB  6 arc minute global EGM2008 geoid (1 min @ 10 km)
  05m*     4320 x   2160 g,p  8.1 MB  5 arc minute global EGM2008 geoid (1 min @ 9 km)
  04m*     5400 x   2700 g,p   11 MB  4 arc minute global EGM2008 geoid (1 min @ 7.5 km)
  03m*     7200 x   3600 g,p   20 MB  3 arc minute global EGM2008 geoid (1 min @ 5.6 km)
  02m*    10800 x   5400 g,p   34 MB  2 arc minute global EGM2008 geoid (1 min @ 3.7 km)
  01m*    21600 x  10800   g  100 MB  1 arc minute global EGM2008 geoid (1 min original)
  ==== ================= === =======  ==================================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_geoid files being placed in an ``earth/earth_geoid`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (the GMT master *turbo* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible.  For the geoid grid this means
we chose 0.01 m as the smallest data unit, which is well below the uncertainties in the
model.  Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking.  The data are reported in meters.

Data References
~~~~~~~~~~~~~~~

#. Pavlis, N.K., Holmes, S.A., Kenyon, S.C. and Factor, J.K., 2012: [https://doi.org/10.1029/2011JB008916].
