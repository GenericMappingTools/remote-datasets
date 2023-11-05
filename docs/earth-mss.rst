CNES Earth Mean Sea Surface
---------------------------
.. figure:: /_static/cnes.jpg
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_earth_mss.jpg
   :width: 710 px
   :align: center

Geodynamics studies have an interest in the Earth's Mean Sea Surface (MSS).  CNES has
provided such a grid post-processed by IGPP (Sandwell_et_al., 2022).

Usage
~~~~~

You access a global MSS grid by specifying the special name

   @earth_mss[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_mss:

.. table:: CNES Global Earth Mean Sea Surface. An asterisk denotes tiled datasets.

  ==== ================= === =======  =======================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  =======================================
  01d       360 x    180 g,p   82 KB  1 arc degree global MSS (MSS @ 315 km)
  30m       720 x    360 g,p  245 KB  30 arc minute global MSS (MSS @ 157 km)
  20m      1080 x    540 g,p  500 KB  20 arc minute global MSS (MSS @ 105 km)
  15m      1440 x    720 g,p  840 KB  15 arc minute global MSS (MSS @ 79 km)
  10m      2160 x   1080 g,p  1.7 MB  10 arc minute global MSS (MSS @ 52 km)
  06m      3600 x   1800 g,p  4.3 MB  6 arc minute global MSS (MSS @ 32 km)
  05m*     4320 x   2160 g,p  5.7 MB  5 arc minute global MSS (MSS @ 26 km)
  04m*     5400 x   2700 g,p  8.5 MB  4 arc minute global MSS (MSS @ 21 km)
  03m*     7200 x   3600 g,p   15 MB  3 arc minute global MSS (MSS @ 16 km)
  02m*    10800 x   5400 g,p   26 MB  2 arc minute global MSS (MSS @ 11 km)
  01m*    21600 x  10800   g   79 MB  1 arc minute global MSS (original)
  ==== ================= === =======  =======================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_mss files being placed in an ``earth/earth_mss`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (the GMT master *@earth_mss* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible.  For the MSS grid this means
we chose 0.01 m as the smallest data unit, which is well below the uncertainties in the
model.  Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking.  The data are reported in meters.

Data References
~~~~~~~~~~~~~~~

#. https://topex.ucsd.edu/pub/MSS_replace/mss_sio_32.1.nc.
