USGS Mercury Relief
-------------------

.. figure:: /_static/usgs.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_mercury_relief.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access the global Messenger relief grid by specifying the special name

   @mercury_relief[_\ *rru*\ [_\ *reg*\ ]]

This grid contains observed relief measured via altimetry.
The following codes for the optional *rr*\ *u* and *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-mercury_relief:

  ==== ================= === =======  ===================================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ===================================================
  01d       360 x    180 g,p  114 KB  1 arc degree Mercury relief (Messenger @ 315 km)
  30m       720 x    360 g,p  401 KB  30 arc minute Mercury relief (Messenger @ 157 km)
  20m      1080 x    540 g,p  839 KB  20 arc minute Mercury relief (Messenger @ 105 km)
  15m      1440 x    720 g,p  1.4 MB  15 arc minute Mercury relief (Messenger @ 79 km)
  10m      2160 x   1080 g,p  3.0 MB  10 arc minute Mercury relief (Messenger @ 52 km)
  06m      3600 x   1800 g,p  7.9 MB  6 arc minute Mercury relief (Messenger @ 32 km)
  05m      4320 x   2160 g,p   11 MB  5 arc minute Mercury relief (Messenger @ 26 km)
  04m      5400 x   2700 g,p   17 MB  4 arc minute Mercury relief (Messenger @ 21 km)
  03m      7200 x   3600 g,p   29 MB  3 arc minute Mercury relief (Messenger @ 16 km)
  02m     10800 x   5400 g,p   63 MB  2 arc minute Mercury relief (Messenger @ 11 km)
  01m     21600 x  10800 g,p  224 MB  1 arc minute Mercury relief (Messenger @ 1.9 km)
  56s     23040 x  11520   p  262 MB  56.25 arc second Mercury relief (Messenger @ 1.9 km)
  ==== ================= === =======  ===================================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Data Sets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the mercury_relief files being placed in an ``mercury/mercury_relief`` sub-directory. If you
do not specify a CPT then the default CPT for this dataset (the GMT master *@mercury_relief.cpt* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

As you see, the 01m and lower resolutions are all derivatives of USGS' 56.25 arc-second Mercury_Messenger_USGS_DEM_Global_665m_v2.tif
(Becker_et_al.,_2016). We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 56.25 arc sec grid.
The full (6 sigma) filter-widths are indicated in parenthesis. Almost all grids
are available in both gridline- and pixel-registered formats except the original pixel-registered
grid at 56.25 arc-seconds resolution (here called @mercury_relief_56s). Data resolution is 0.5 meter.

Data References
~~~~~~~~~~~~~~~

#. Messenger: [https://www.hou.usra.edu/meetings/lpsc2016/pdf/2959.pdf].
