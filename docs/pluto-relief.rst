USGS Pluto Relief
-----------------

.. figure:: /_static/usgs.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_pluto_relief.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access the global New Horizon relief grid by specifying the special name

   @pluto_relief[_\ *rru*\ [_\ *reg*\ ]]

This grid contains observed relief measured via altimetry.
The following codes for the optional *rr*\ *u* and *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-pluto_relief:

.. table:: USGS Pluto New Horizon (NH) Relief. An asterisk denotes tiled datasets.

  ==== ================= === =======  ==============================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==============================================
  01d       360 x    180 g,p   71 KB  1 arc degree Pluto relief (NH @ 59 km)
  30m       720 x    360 g,p  220 KB  30 arc minute Pluto relief (NH @ 29 km)
  20m      1080 x    540 g,p  452 KB  20 arc minute Pluto relief (NH @ 20 km)
  15m      1440 x    720 g,p  774 KB  15 arc minute Pluto relief (NH @ 15 km)
  10m      2160 x   1080 g,p  1.6 MB  10 arc minute Pluto relief (NH @ 9.8 km)
  06m      3600 x   1800 g,p  4.2 MB  6 arc minute Pluto relief (NH @ 5.9 km)
  05m*     4320 x   2160 g,p  6.0 MB  5 arc minute Pluto relief (NH @ 4.9 km)
  04m*     5400 x   2700 g,p  9.0 MB  4 arc minute Pluto relief (NH @ 3.3 km)
  03m*     7200 x   3600 g,p   15 MB  3 arc minute Pluto relief (NH @ 2.9 km)
  02m*    10800 x   5400 g,p   33 MB  2 arc minute Pluto relief (NH @ 2.0 km)
  01m*    21600 x  10800 g,p  122 MB  1 arc minute Pluto relief (NH @ 1.0 km)
  52s*    24888 x  12444 p    124 MB  52.07... arc second Pluto relief (NH original)
  ==== ================= === =======  ==============================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the pluto_relief files being placed in an ``pluto/pluto_relief`` sub-directory. If you
do not specify a CPT then the default CPT for this dataset (the GMT master *@pluto_relief* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

As you see, the 01m and lower resolutions are all derivatives of USGS' 52.0732883317 arc-second Pluto_NewHorizons_Global_DEM_300m_Jul2017_16bit.tif
(Moore_et_al., 2016). We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 52.0732883317 arc sec grid.
The full (6 sigma) filter-widths are indicated in parenthesis. Almost all grids
are available in both gridline- and pixel-registered formats except the original pixel-registered
grid at 52.0732883317 arc-seconds resolution (here called @pluto_relief_52s). Data resolution is 0.25 meter.

Data References
~~~~~~~~~~~~~~~

#. NH: [https://doi.org/10.1126/science.aad7055].
