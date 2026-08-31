NASA Mars Relief
----------------

.. figure:: /_static/nasa-logo-web-rgb.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_mars_relief.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access the global MOLA relief grid by specifying the special name

   @mars_relief[_\ *rru*\ [_\ *reg*\ ]]

This grid contains observed relief measured via altimetry.
The following codes for the optional *rr*\ *u* and *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-mars_relief:

  ==== ================= === =======  ============================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ============================================
  01d       360 x    180 g,p  109 KB  1 arc degree Mars relief (MOLA @ 168 km)
  30m       720 x    360 g,p  373 KB  30 arc minute Mars relief (MOLA @ 84 km)
  20m      1080 x    540 g,p  781 KB  20 arc minute Mars relief (MOLA @ 56 km)
  15m      1440 x    720 g,p  1.3 MB  15 arc minute Mars relief (MOLA @ 42 km)
  10m      2160 x   1080 g,p  2.8 MB  10 arc minute Mars relief (MOLA @ 28 km)
  06m      3600 x   1800 g,p  7.5 MB  6 arc minute Mars relief (MOLA @ 17 km)
  05m      4320 x   2160 g,p   11 MB  5 arc minute Mars relief (MOLA @ 16 km)
  04m      5400 x   2700 g,p   16 MB  4 arc minute Mars relief (MOLA @ 11 km)
  03m      7200 x   3600 g,p   28 MB  3 arc minute Mars relief (MOLA @ 8.4 km)
  02m     10800 x   5400 g,p   61 MB  2 arc minute Mars relief (MOLA @ 5.6 km)
  01m     21600 x  10800 g,p  228 MB  1 arc minute Mars relief (MOLA @ 2.8 km)
  30s     43200 x  21600 g,p  822 MB  30 arc second Mars relief (MOLA @ 1.4 km)
  15s     86400 x  43200 g,p  2.7 GB  15 arc second Mars relief (MOLA @ 0.7 km)
  12s    106694 x  53347 p    3.1 GB  12.14... arc second Mars relief (MOLA original)
  ==== ================= === =======  ============================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Datasets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the mars_relief files being placed in an ``mars/mars_relief`` sub-directory. If you
do not specify a CPT then the default CPT for this dataset (the GMT master *@mars_relief.cpt* CPT) will be used.

Examples
~~~~~~~~

To create a PDF map of the Mars MOLA relief at 1 arc degree resolution, try::

    gmt grdimage @mars_relief_01d -Baf -pdf mars_relief

Technical Information
~~~~~~~~~~~~~~~~~~~~~

As you see, the 01m and lower resolutions are all derivatives of USGS' 12.1468873601 arc-second Mars_HRSC_MOLA_BlendDEM_Global_200mp_v2.tif
(Neumann_et_al., 2003). We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 12.1468873601 arc sec grid.
The full (6 sigma) filter-widths are indicated in parenthesis. Almost all grids
are available in both gridline- and pixel-registered formats except the original pixel-registered
grid at 12.1468873601 arc-seconds resolution (here called @mars_relief_12s).

We also scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible. For the mars_relief grids this means we chose 0.5
meter as the grid z step, which is well below the uncertainties in the data. Elevations
are scaled and shifted to fit in a short integer grid that is highly compressed by netCDF
lossless compression and chunking.

**Note**: Because of this quantization, these grids should be used with care in morphometric
studies (e.g., slope, curvature or roughness analyses), since even sub-meter rounding can bias
slope and aspect calculations [Carter, 1992]. We suggest using the original dataset instead for
such applications.

Data References
~~~~~~~~~~~~~~~

#. Carter, J.R., 1992: [https://doi.org/10.3138/aj35-34h3-524k-0685].
#. MOLA: [https://doi.org/10.1029/2000JE001426].
