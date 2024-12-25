NASA Venus Relief
-----------------

.. figure:: /_static/igpp.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_venus_relief.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access the global Magellan Venus relief grid by specifying the special name

   @venus_relief[_\ *rru*\ [_\ *reg*\ ]]

This grid contains observed relief measured via altimetry.
The following codes for the optional *rr*\ *u* and *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-venus_relief:

  ==== ================= === =======  ==============================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==============================================
  01d       360 x    180 g,p  107 KB  1 arc degree Venus relief (Magellan @ 299 km)
  30m       720 x    360 g,p  374 KB  30 arc minute Venus relief (Magellan @ 149 km)
  20m      1080 x    540 g,p  783 KB  20 arc minute Venus relief (Magellan @ 100 km)
  15m      1440 x    720 g,p  1.3 MB  15 arc minute Venus relief (Magellan @ 75 km)
  10m      2160 x   1080 g,p  2.8 MB  10 arc minute Venus relief (Magellan @ 50 km)
  06m      3600 x   1800 g,p  7.4 MB  6 arc minute Venus relief (Magellan @ 30 km)
  05m      4320 x   2160 g,p   10 MB  5 arc minute Venus relief (Magellan @ 25 km)
  04m      5400 x   2700 g,p   16 MB  4 arc minute Venus relief (Magellan @ 20 km)
  03m      7200 x   3600 g,p   27 MB  3 arc minute Venus relief (Magellan @ 15 km)
  02m     10800 x   5400 g,p   57 MB  2 arc minute Venus relief (Magellan @ 10 km)
  01m     21600 x  10800 g,p  208 MB  1 arc minute Venus relief (original)
  ==== ================= === =======  ==============================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Data Sets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the venus_relief files being placed in an ``venus/venus_relief`` sub-directory. If you
do not specify a CPT then the default CPT for this dataset (the GMT master *@venus_relief.cpt* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

As you see, the 02m and lower resolutions are all derivatives of USGS' 1 arc-minute Sandwell_Final_Topo_Venus_2012_meter.grd
(Sandwell, 2012). We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 12.1468873601 arc sec grid.
The full (6 sigma) filter-widths are indicated in parenthesis. Almost all grids
are available in both gridline- and pixel-registered formats except the original pixel-registered
grid at 12.1468873601 arc-seconds resolution (here called @venus_relief_12s). Data resolution is 0.5 meter.

Data References
~~~~~~~~~~~~~~~

#. Magellan: [https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19940013181.pdf].
