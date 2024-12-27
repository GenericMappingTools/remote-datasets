USGS Moon Relief
----------------

.. figure:: /_static/usgs.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_moon_relief.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access the Moon LOLA relief grid by specifying the special name

   @moon_relief[_\ *rru*\ [_\ *reg*\ ]]

This grid contains observed relief measured via altimetry.
The following codes for the optional *rr*\ *u* and *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-moon_relief:

  ==== ================= === =======  ===============================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ===============================================
  01d       360 x    180 g,p  122 KB  1 arc degree Moon relief (LOLA @ 168 km)
  30m       720 x    360 g,p  423 KB  30 arc minute Moon relief (LOLA @ 84 km)
  20m      1080 x    540 g,p  897 KB  20 arc minute Moon relief (LOLA @ 56 km)
  15m      1440 x    720 g,p  1.5 MB  15 arc minute Moon relief (LOLA @ 42 km)
  10m      2160 x   1080 g,p  3.3 MB  10 arc minute Moon relief (LOLA @ 28 km)
  06m      3600 x   1800 g,p  8.5 MB  6 arc minute Moon relief (LOLA @ 17 km)
  05m      4320 x   2160 g,p   12 MB  5 arc minute Moon relief (LOLA @ 16 km)
  04m      5400 x   2700 g,p   18 MB  4 arc minute Moon relief (LOLA @ 11 km)
  03m      7200 x   3600 g,p   31 MB  3 arc minute Moon relief (LOLA @ 8.4 km)
  02m     10800 x   5400 g,p   68 MB  2 arc minute Moon relief (LOLA @ 5.6 km)
  01m     21600 x  10800 g,p  253 MB  1 arc minute Moon relief (LOLA @ 2.8 km)
  30s     43200 x  21600 g,p  937 MB  30 arc second Moon relief (LOLA @ 1.4 km)
  15s     86400 x  43200 g,p  3.3 GB  15 arc second Moon relief (LOLA @ 0.7 km)
  14s    106694 x  53347 p    3.9 GB  14.06... arc second Moon relief (LOLA original)
  ==== ================= === =======  ===============================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Data Sets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the moon_relief files being placed in an ``moon/moon_relief`` sub-directory. If you
do not specify a CPT then the default CPT for this dataset (the GMT master *@moon_relief.cpt* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

As you see, the 15s and lower resolutions are all derivatives of USGS' 14.0625 arc-second Lunar_LRO_LOLA_Global_LDEM_118m_Mar2014.tif
(Mazarico_et_al., 2013). We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 14.0625 arc sec grid.
The full (6 sigma) filter-widths are indicated in parenthesis. Almost all grids
are available in both gridline- and pixel-registered formats except the original pixel-registered
grid at 14.0625 arc-seconds resolution (here called @moon_relief_14s). Data resolution is 0.5 meter.

Data References
~~~~~~~~~~~~~~~

#. LOLA: [https://doi.org/10.1007/s00190-011-0509-4].
