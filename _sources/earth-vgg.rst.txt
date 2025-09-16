IGPP Earth Vertical Gravity Gradient
------------------------------------
.. figure:: /_static/igpp.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_earth_vgg.jpg
   :width: 710 px
   :align: center

Marine geophysicists and in particular researchers of plate tectonics have an interest in derivatives of the Earth's
gravity field as such anomalies may highlight smaller-scale features, such as seafloor tectonic scars and seamounts.
`David Sandwell and colleagues <https://topex.ucsd.edu/marine_grav/mar_grav.html>`_
have provided altimetry-based marine vertical gravity gradients (VGG) and similar grids since 1995. The latest version 32 is now
available for remote use in GMT. Over land, these grids are filled in by predictions of the EGM2008 model [Pavlis et al., 2012].
Polar regions beyond ±80˚ are not covered and are set to NaN.

Usage
~~~~~

You access a global vertical gravity gradient (vgg) grid by specifying the special name

   @earth_vgg[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_vgg:

  ==== ================= === =======  ========================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ========================================
  01d       360 x    180 g,p   79 KB  1 arc degree global VGG (1 min @ 315 km)
  30m       720 x    360 g,p  288 KB  30 arc minute global VGG (1 min @ 157 km)
  20m      1080 x    540 g,p  653 KB  20 arc minute global VGG (1 min @ 105 km)
  15m      1440 x    720 g,p  1.2 MB  15 arc minute global VGG (1 min @ 79 km)
  10m      2160 x   1080 g,p  2.6 MB  10 arc minute global VGG (1 min @ 52 km)
  06m      3600 x   1800 g,p  7.2 MB  6 arc minute global VGG (1 min @ 32 km)
  05m      4320 x   2160 g,p   10 MB  5 arc minute global VGG (1 min @ 26 km)
  04m      5400 x   2700 g,p   16 MB  4 arc minute global VGG (1 min @ 21 km)
  03m      7200 x   3600 g,p   28 MB  3 arc minute global VGG (1 min @ 16 km)
  02m     10800 x   5400 g,p   62 MB  2 arc minute global VGG (1 min @ 11 km)
  01m     21600 x  10800   p  235 MB  1 arc minute global VGG (1 min original)
  ==== ================= === =======  ========================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Datasets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_vgg files being placed in an ``earth/earth_vgg`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*@earth_vgg.cpt*) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible. For the VGG grid this means
we chose 1/32 = 0.03125 Eotvos  as the smallest data unit, which is well below the uncertainties in the
model. Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking. The data are reported in Eotvos.

Data References
~~~~~~~~~~~~~~~

#. Sandwell, D.T., Harper, H., Tozer, B. and Smith, W.H., 2019: [https://doi.org/10.1016/j.asr.2019.09.011].
#. Pavlis, N.K., Holmes, S.A., Kenyon, S.C. and Factor, J.K., 2012: [https://doi.org/10.1029/2011JB008916].
