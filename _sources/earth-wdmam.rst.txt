WDMAM World Digital Magnetic Anomaly Map
----------------------------------------
.. figure:: /_static/GMT_wdmam.jpg
   :width: 710 px
   :align: center

The `WDMAM <https://wdmam.org>`_ (World Digital Magnetic Anomaly Map) is an international
scientific project under the auspices of IAGA (International Association of Geomagnetism
and Aeronomy) and CGMW (Commission for the Geological Map of the World), aiming to compile
and make available magnetic anomalies caused by the Earth lithosphere, on continental and
oceanic areas, in a comprehensive way, all over the World.
At 3 arc-minutes, the latest WDMAM version 2 [Dyment et al., 2021] grid is now available
for remote use in GMT.

Usage
~~~~~

You access a global WDMAM grid by specifying the special name

   @earth_wdmam[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_wdmam:

.. table:: WDMAM World Digital Magnetic Anomaly Map. An asterisk denotes tiled datasets.

  ==== ================= === =======  ==========================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==========================================
  01d       360 x    180 g,p   94 KB  1 arc degree global WDMAM (3 min @ 111 km)
  30m       720 x    360 g,p  329 KB  30 arc minute global WDMAM (3 min @ 55 km)
  20m      1080 x    540 g,p  695 KB  20 arc minute global WDMAM (3 min @ 37 km)
  15m      1440 x    720 g,p  1.2 MB  15 arc minute global WDMAM (3 min @ 28 km)
  10m      2160 x   1080 g,p  2.5 MB  10 arc minute global WDMAM (3 min @ 18 km)
  06m      3600 x   1800 g,p  5.7 MB  6 arc minute global WDMAM (3 min @ 10 km)
  05m*     4320 x   2160 g,p  9.3 MB  5 arc minute global WDMAM (3 min @ 9 km)
  04m*     5400 x   2700 g,p   14 MB  4 arc minute global WDMAM (3 min @ 7.5 km)
  03m*     7200 x   3600 g     24 MB  3 arc minute global WDMAM (3 min original)
  ==== ================= === =======  ==========================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_mag files being placed in an ``earth/earth_wdmam`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*@earth_wdmam.cpt*) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible.  For the WDMAM grid this means we chose 0.3
nTesla as the smallest data unit, which is well below the uncertainties in the model.
Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking. The data are reported in nT.

Data References
~~~~~~~~~~~~~~~

#. Lesur, V., Hamoudi, M., Choi, Y., Dyment, J. and Thebault, E., 2016: [https://doi.org/10.1186/s40623-016-0404-6].
