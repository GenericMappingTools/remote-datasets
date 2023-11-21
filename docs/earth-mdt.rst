CNES Earth Mean Dynamic Topography
----------------------------------
.. figure:: /_static/cnes.jpg
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_earth_mdt.jpg
   :width: 710 px
   :align: center

Geodynamics studies have an interest in the Earth's Mean Dynamic Topography (MDT). CNES has
provided such a grid (Jousset_et_al., 2022) post-processed by IGPP.

Usage
~~~~~

You access a global MDT grid by specifying the special name

   @earth_mdt[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_mdt:

.. table:: CNES Earth Mean Dynamic Topography. An asterisk denotes tiled datasets.

  ==== ================= === =======  =======================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  =======================================
  01d       360 x    180 g,p   82 KB  1 arc degree global MDT (MDT @ 315 km)
  30m       720 x    360 g,p  241 KB  30 arc minute global MDT (MDT @ 157 km)
  20m      1080 x    540 g,p  489 KB  20 arc minute global MDT (MDT @ 105 km)
  15m      1440 x    720 g,p  810 KB  15 arc minute global MDT (MDT @ 79 km)
  10m      2160 x   1080 g,p  1.6 MB  10 arc minute global MDT (MDT @ 52 km)
  07m      2881 x   1441 g    2.7 MB  7.5 arc minute global MDT (original)
  ==== ================= === =======  =======================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_mdt files being placed in an ``earth/earth_mdt`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (the GMT master *@earth_mdt* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

The 10m and lower resolutions are all derivatives of the original 7.5 arc-minute mdt_cnes_cls22_fg.nc grid
We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible. We have downsampled it via Cartesian Gaussian filtering to prevent
aliasing while preserving the latitude-dependent resolution in the original 7.5 arc-minute grid. For the MDT grid this means
we chose 0.0001 m as the smallest data unit, which is well below the uncertainties in the
model. Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking. The data are reported in meters.

Data References
~~~~~~~~~~~~~~~

#. https://topex.ucsd.edu/pub/MSS_replace/mdt_cnes_cls22_fg.nc.
