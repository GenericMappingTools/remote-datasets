WDMAM World Digital Magnetic Anomaly Map
----------------------------------------
.. figure:: /_static/GMT_earth_wdmam.jpg
   :width: 710 px
   :align: center

The `WDMAM <https://wdmam.org>`_ (World Digital Magnetic Anomaly Map) is an international
scientific project under the auspices of IAGA (International Association of Geomagnetism
and Aeronomy) and CGMW (Commission for the Geological Map of the World), aiming to compile
and make available magnetic anomalies caused by the Earth lithosphere, on continental and
oceanic areas, in a comprehensive way, all over the World.
At 3 arc-minutes, the latest WDMAM version 2.1 [Choi et al., 2023] grid is now available
for remote use in GMT.

Usage
~~~~~

You access a global WDMAM grid by specifying the special name

   @earth_wdmam[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_wdmam:

  ==== ================= === =======  ==========================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  ==========================================
  01d       360 x    180 g,p   97 KB  1 arc degree global WDMAM (3 min @ 315 km)
  30m       720 x    360 g,p  352 KB  30 arc minute global WDMAM (3 min @ 157 km)
  20m      1080 x    540 g,p  763 KB  20 arc minute global WDMAM (3 min @ 105 km)
  15m      1440 x    720 g,p  1.3 MB  15 arc minute global WDMAM (3 min @ 79 km)
  10m      2160 x   1080 g,p  2.9 MB  10 arc minute global WDMAM (3 min @ 52 km)
  06m      3600 x   1800 g,p  7.7 MB  6 arc minute global WDMAM (3 min @ 32 km)
  05m      4320 x   2160 g,p   11 MB  5 arc minute global WDMAM (3 min @ 26 km)
  04m      5400 x   2700 g,p   16 MB  4 arc minute global WDMAM (3 min @ 21 km)
  03m      7200 x   3600 g     29 MB  3 arc minute global WDMAM (3 min original)
  ==== ================= === =======  ==========================================

Note that resolutions 05m and higher are tiled.
See :gmt-docs:`Remote Datasets <datasets/remote-data.html>` for more information.

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the earth_wdmam files being placed in an ``earth/earth_wdmam`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*@earth_wdmam.cpt*) will be used.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible. For the WDMAM grid this means we chose 0.2
nTesla as the smallest data unit, which is well below the uncertainties in the model.
Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking. The data are reported in nT.

Data References
~~~~~~~~~~~~~~~

#. Choi, Y., Dyment, J., Lesur, V., Garcia Reyes, Catalan, M., Ishihara, T., Litvinova, T., Hamoudi, M.,
   the WDMAM Task Force*, and the WDMAM Data Providers**, World Digital Magnetic Anomaly Map version 2.1, map available at https://www.wdmam.org/.

  \* The WDMAM Task Force: J. Dyment (chair), M. Catalan (co-chair), A. de Santis, M. Hamoudi, T. Ishihara, J. Korhonen, V. Lesur, T. Litvinova, J. Luis, B. Meyer, P. Milligan, M. Nakanishi, S. Okuma, M. Pilkington, M. Purucker, D. Ravat, E. Thébault. (alphabetical order)

  \*\* The WDMAM Evaluators: C. Gaina, J. Luis, S. Maus, B. Meyer, M. Nakanishi, M. Purucker, Y. Quesnel, R. Saltus, P. Taylor. (alphabetical order)
