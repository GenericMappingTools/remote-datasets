NASA SRTM Relief
-----------------

.. figure:: /_static/nasa-logo-web-rgb.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_srtm_relief.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Usage
~~~~~

You access a SRTM relief grid by specifying the special name

   @srtm_relief[_\ *rru*\]

The SRTM (version 3) 1 and 3 arc-sec tiles are only available over land between 60 degrees south and north latitude.
This dataset contains a digital elevation model (DEM) of Earth using radar interferometry. 
The following codes for the optional *rr*\ *u* are supported:

.. _tbl-srtm_relief:

  ==== ================= === =======  ==================================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==================================================
  03s    432001 x 216001 g    6.8 GB  3 arc second global relief (SRTM3S original)
  01s   1296001 x 432001 g     41 GB  1 arc second global relief (SRTM1S original)
  ==== ================= === =======  ==================================================

Note that both resolutions are tiled.
See :gmt-docs:`Remote Datasets <datasets/remote-data.html>` for more information. 

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the srtm_relief files being placed in an ``earth/earth_relief`` sub-directory. If you
do not specify a CPT then the default CPT for this dataset (the GMT master *geo* CPT) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

The 3 and 1 arc second data are the SRTM 1x1 degree tiles from NASA. The data is stored as highly compressed JPEG2000 tiles on the GMT server. 
These are individually downloaded as requested, converted to netCDF grids and stored in subdirectories srtm1 and srtm3 under the server directory, 
and assembled into a seamless grid using grdblend.
**Note**: This dataset is utilized by other relief grids (e.g., earth_relief) when resolutions of 03s or 01s are requested. In these cases, the other grid is automatically up-sampled to fill in missing values over the oceans and in high-latitude regions (above 60°).

Data References
~~~~~~~~~~~~~~~

#. SRTMGL3 tiles: [https://lpdaac.usgs.gov/products/srtmgl3v003].
#. SRTMGL1 tiles: [https://lpdaac.usgs.gov/products/srtmgl1v003].
