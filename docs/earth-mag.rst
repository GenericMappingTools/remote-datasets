EMAG2 Earth Magnetic Anomaly Model
----------------------------------
.. figure:: /_static/GMT_earth_mag.jpg
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

  ==== ================= === =======  ==========================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==========================================
  01d       360 x    180 g,p   65 KB  1 arc degree global EMAG2 (2 min @ 315 km)
  30m       720 x    360 g,p  206 KB  30 arc minute global EMAG2 (2 min @ 157 km)
  20m      1080 x    540 g,p  438 KB  20 arc minute global EMAG2 (2 min @ 105 km)
  15m      1440 x    720 g,p  748 KB  15 arc minute global EMAG2 (2 min @ 79 km)
  10m      2160 x   1080 g,p  1.6 MB  10 arc minute global EMAG2 (2 min @ 52 km)
  06m      3600 x   1800 g,p  4.1 MB  6 arc minute global EMAG2 (2 min @ 32 km)
  05m      4320 x   2160 g,p  5.7 MB  5 arc minute global EMAG2 (2 min @ 26 km)
  04m      5400 x   2700 g,p  8.6 MB  4 arc minute global EMAG2 (2 min @ 21 km)
  03m      7200 x   3600 g,p   15 MB  3 arc minute global EMAG2 (2 min @ 16 km)
  02m     10800 x   5400   p   33 MB  2 arc minute global EMAG2 (2 min original)
  ==== ================= === =======  ==========================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Datasets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_mag files being placed in an ``earth/earth_mag`` sub-directory and
the earth_mag4km files in an ``earth/earth_mag4km`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*@earth_mag.cpt*) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible. For the EMAG2 grid this means
we chose 0.2 nTesla as the smallest data unit, which is well below the uncertainties in the
model (0.4 nT for the 4 km altitude version). Data are scaled and shifted to fit in a
short integer grid that is highly compressed by netCDF lossless compression and chunking.
The data are reported in nT.

Data References
~~~~~~~~~~~~~~~

#. Meyer, B., Saltus, R. and Chulliat, A., 2017: [https://doi.org/10.7289/V5H70CVX].
