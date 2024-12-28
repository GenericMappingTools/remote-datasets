IGPP Earth North-South Deflection
---------------------------------
.. figure:: /_static/igpp.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_earth_ndefl.jpg
   :width: 710 px
   :align: center

Both geodynamic and geophysical studies have an interest in the study of the Earth's
gravity field and are often used in conjunctions with bathymetric or topographic relief
to assess the degree of isostasy.
`David Sandwell and colleagues <https://topex.ucsd.edu/marine_grav/mar_grav.html>`_
have provided altimetry-based marine FAA and similar grids since 1995. The latest version 32 is now
available for remote use in GMT. Over land these grids are filled in by the EGM2008 model
[Pavlis et al., 2012]. This dataset contains the north-south deflection of the vertical
in micro-radians. Polar regions beyond ±80˚ are not covered and are set to NaN.

Usage
~~~~~

You access a global north-south deflection (ndefl) grid by specifying the special name

   @earth_ndefl[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_ndefl:

  ==== ================= === =======  ===========================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ===========================================
  01d       360 x    180 g,p  101 KB  1 arc degree global NDEFL (1 min @ 315 km)
  30m       720 x    360 g,p  349 KB  30 arc minute global NDEFL (1 min @ 157 km)
  20m      1080 x    540 g,p  750 KB  20 arc minute global NDEFL (1 min @ 105 km)
  15m      1440 x    720 g,p  1.3 MB  15 arc minute global NDEFL (1 min @ 79 km)
  10m      2160 x   1080 g,p  2.8 MB  10 arc minute global NDEFL (1 min @ 52 km)
  06m      3600 x   1800 g,p  7.4 MB  6 arc minute global NDEFL (1 min @ 32 km)
  05m      4320 x   2160 g,p   10 MB  5 arc minute global NDEFL (1 min @ 26 km)
  04m      5400 x   2700 g,p   16 MB  4 arc minute global NDEFL (1 min @ 21 km)
  03m      7200 x   3600 g,p   27 MB  3 arc minute global NDEFL (1 min @ 16 km)
  02m     10800 x   5400 g,p   59 MB  2 arc minute global NDEFL (1 min @ 11 km)
  01m     21600 x  10800   p  219 MB  1 arc minute global NDEFL (1 min original)
  ==== ================= === =======  ===========================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Data Sets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_ndefl files being placed in an ``earth/earth_ndefl`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*@earth_defl.cpt*) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible. For the NDEFL grid this means
we chose 1/32 micro-radians as the smallest data unit, which is well below the uncertainties in the
model. Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking. The data are reported in micro-radians.

Data References
~~~~~~~~~~~~~~~

#. Sandwell, D.T., Harper, H., Tozer, B. and Smith, W.H., 2019: [https://doi.org/10.1016/j.asr.2019.09.011].
#. Pavlis, N.K., Holmes, S.A., Kenyon, S.C. and Factor, J.K., 2012: [https://doi.org/10.1029/2011JB008916].
