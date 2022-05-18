IGPP Global Earth Free-Air Anomaly
----------------------------------
.. figure:: /_static/igpp.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_faa.jpg
   :width: 710 px
   :align: center

Both geodynamic and geophysical studies have an interest in the study of the Earth's
gravity field and are often used in conjunctions with bathymetric or topographic relief
to assess the degree of isostasy.
`David Sandwell and colleagues <https://topex.ucsd.edu/marine_grav/mar_grav.html>`_
have provided altimetry-based marine FAA and similar grids since 1995 and the latest versions are now
available for remote use in GMT. Over land these grids are filled in by the EGM2008 model [Pavlis et al., 2012].
Polar regions beyond ±80˚ are not covered and are set to NaN.

Usage
~~~~~

You access a global free-air (faa) grid by specifying the special name

   @earth_faa[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_faa:

.. table:: IGPP Global Earth Free-Air Anomaly. An asterisk denotes tiled datasets.

  ==== ================= === =======  ========================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ========================================
  01d       360 x    180 g,p  106 KB  1 arc degree global FAA (1 min @ 111 km)
  30m       720 x    360 g,p  368 KB  30 arc minute global FAA (1 min @ 55 km)
  20m      1080 x    540 g,p  785 KB  20 arc minute global FAA (1 min @ 37 km)
  15m      1440 x    720 g,p  1.3 MB  15 arc minute global FAA (1 min @ 28 km)
  10m      2160 x   1080 g,p  2.9 MB  10 arc minute global FAA (1 min @ 18 km)
  06m      3600 x   1800 g,p  7.5 MB  6 arc minute global FAA (1 min @ 10 km)
  05m*     4320 x   2160 g,p   11 MB  5 arc minute global FAA (1 min @ 9 km)
  04m*     5400 x   2700 g,p   16 MB  4 arc minute global FAA (1 min @ 7.5 km)
  03m*     7200 x   3600 g,p   28 MB  3 arc minute global FAA (1 min @ 5.6 km)
  02m*    10800 x   5400 g,p   60 MB  2 arc minute global FAA (1 min @ 3.7 km)
  01m*    21600 x  10800   p  220 MB  1 arc minute global FAA (1 min original)
  ==== ================= === =======  ========================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_faa files being placed in an ``earth/earth_faa`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*@earth_faa.cpt*) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible.  For the FAA grid this means
we chose 0.025 mGal as the smallest data unit, which is well below the uncertainties in the
model.  Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking.  The data are reported in mGal.

Data References
~~~~~~~~~~~~~~~

#. Sandwell, D.T., Harper, H., Tozer, B. and Smith, W.H., 2019: [https://doi.org/10.1016/j.asr.2019.09.011].
#. Pavlis, N.K., Holmes, S.A., Kenyon, S.C. and Factor, J.K., 2012: [https://doi.org/10.1029/2011JB008916].
