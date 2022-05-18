EMAG2 Global Earth Magnetic Anomaly Model
-----------------------------------------
.. figure:: /_static/GMT_mag.jpg
   :width: 710 px
   :align: center

The US National Environmental Information Center
`Office of Geomatics <https://www.ncei.noaa.gov>`_ provide EMAG2, the Earth Magnetic Anomaly Model
at 2 arc-minute resolution based on satellite, ship, and airborne magnetic measurements.
The latest EMAG2 version 3 [Meyer et al., 2017] grid is now available for remote use in GMT.

Usage
~~~~~

You access a global EMAG2 grid by specifying the special name

   @earth_mag[_\ *rru*\ [_\ *reg*\ ]]

This version is observed at sea level over oceanic regions and have no data over land.
For a version where all observations are relative to an altitude of 4 km above the geoid
and includes data over land, use instead

   @earth_mag4km[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one). The sizes
refers to the ``earth_mag4km`` version (the oceanic files are ~60% smaller):

.. _tbl-earth_mag:

.. table:: EMAG2 Global Earth Magnetic Anomaly Model. An asterisk denotes tiled datasets.

  ==== ================= === =======  ==========================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==========================================
  01d       360 x    180 g,p   94 KB  1 arc degree global EMAG2 (2 min @ 111 km)
  30m       720 x    360 g,p  329 KB  30 arc minute global EMAG2 (2 min @ 55 km)
  20m      1080 x    540 g,p  695 KB  20 arc minute global EMAG2 (2 min @ 37 km)
  15m      1440 x    720 g,p  1.2 MB  15 arc minute global EMAG2 (2 min @ 28 km)
  10m      2160 x   1080 g,p  2.5 MB  10 arc minute global EMAG2 (2 min @ 18 km)
  06m      3600 x   1800 g,p  5.7 MB  6 arc minute global EMAG2 (2 min @ 10 km)
  05m*     4320 x   2160 g,p  9.3 MB  5 arc minute global EMAG2 (2 min @ 9 km)
  04m*     5400 x   2700 g,p   14 MB  4 arc minute global EMAG2 (2 min @ 7.5 km)
  03m*     7200 x   3600 g,p   24 MB  3 arc minute global EMAG2 (2 min @ 5.6 km)
  02m*    10800 x   5400   p   52 MB  2 arc minute global EMAG2 (2 min original)
  ==== ================= === =======  ==========================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_mag files being placed in an ``earth/earth_mag`` sub-directory and
the earth_mag4km files in an ``earth/earth_mag4km`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*@earth_mag.cpt*) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible.  For the EMAG2 grid this means
we chose 0.2 nTesla as the smallest data unit, which is well below the uncertainties in the
model (0.4 nT for the 4 km altitude version).  Data are scaled and shifted to fit in a
short integer grid that is highly compressed by netCDF lossless compression and chunking.
The data are reported in nT.

Data References
~~~~~~~~~~~~~~~

#. Meyer, B., Saltus, R. and Chulliat, A., 2017: [https://doi.org/10.7289/V5H70CVX].
