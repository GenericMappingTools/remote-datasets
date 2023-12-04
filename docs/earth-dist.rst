GSHHG Earth Distance to Shoreline
--------------------------------
.. figure:: /_static/GMT_earth_dist.jpg
   :width: 710 px
   :align: center

Geological, geophysical, oceanographic and biological studies may at times
need to know how far it is to the nearest coastline.  Here, the coastline is
the GSHHG coastline used in GMT.

Usage
~~~~~

You access a global distance grid by specifying the special name

   @earth_dist[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_dist:

.. table:: GSHHG distances to nearest shoreline. An asterisk denotes tiled datasets.

  ==== ================= === =======  ============================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ============================================
  01d       360 x    180 g,p   82 KB  1 arc degree global distance (MSS @ 315 km)
  30m       720 x    360 g,p  245 KB  30 arc minute global distance (MSS @ 157 km)
  20m      1080 x    540 g,p  500 KB  20 arc minute global distance (MSS @ 105 km)
  15m      1440 x    720 g,p  840 KB  15 arc minute global distance (MSS @ 79 km)
  10m      2160 x   1080 g,p  1.7 MB  10 arc minute global distance (MSS @ 52 km)
  06m      3600 x   1800 g,p  4.3 MB  6 arc minute global distance (MSS @ 32 km)
  05m*     4320 x   2160 g,p  5.7 MB  5 arc minute global distance (MSS @ 26 km)
  04m*     5400 x   2700 g,p  8.5 MB  4 arc minute global distance (MSS @ 21 km)
  03m*     7200 x   3600 g,p   15 MB  3 arc minute global distance (MSS @ 16 km)
  02m*    10800 x   5400 g,p   26 MB  2 arc minute global distance (MSS @ 11 km)
  01m*    21600 x  10800   g   79 MB  1 arc minute global distance (original)
  ==== ================= === =======  ============================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_dist files being placed in an ``earth/earth_dist`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (the GMT master *@earth_dist* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible. For the distance grid this meant
we chose 80 m as the smallest data unit, which is below the uncertainties in the
model. Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking. The data are reported in meters.

Data References
~~~~~~~~~~~~~~~

#. https://doi.org/10.5670/oceanog.2010.32.
#. https://doi.org/10.2478/s11600-010-0038-1.
