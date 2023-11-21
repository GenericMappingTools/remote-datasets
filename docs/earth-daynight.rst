NASA Earth Day/Night Images
---------------------------
.. figure:: /_static/nasa-logo-web-rgb.png
   :align: right
   :scale: 20 %

.. figure:: /_static/GMT_earth_daynight.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

We serve two NASA image products: The Blue and Black marble mosaics.
We have filtered and down-ampled those as well at the same resolutions that are
available for the Earth DEMs. However, all images are pixel-registered only.
These images may be plotted with :gmt-docs:`grdimage` or :gmt-docs:`grdview` and manipulated
by :gmt-docs:`grdmix`. The above example mixes both images according to a day-night
mask and adds illumination from a corresponding Earth DEM.

Usage
~~~~~

You access a global daytime image by specifying the special names

   @earth_day[_\ *rru*]

Similarly for the nighttime view:

   @earth_night[_\ *rru*]

The following codes for *rr*\ *u* are supported. The sizes refers to the earth_day version
(the earth_night ranges from 33% smaller for the highest resolution up to 44% bigger for
the lowest resolution):

.. _tbl-earth_daynight:

.. table:: NASA Earth Day/Night Images.

  ==== ================= =======  ===========================================================
  Code Dimensions        Size     Description
  ==== ================= =======  ===========================================================
  01d       360 x    180   73 KB  1 arc degree image view (Blue|Black Marble mosaic @ 315 km)
  30m       720 x    360  263 KB  30 arc minute image view (Blue|Black Marble mosaic @ 157 km)
  20m      1080 x    540  568 KB  20 arc minute image view (Blue|Black Marble mosaic @ 105 km)
  15m      1440 x    720  1.0 MB  15 arc minute image view (Blue|Black Marble mosaic @ 79 km)
  10m      2160 x   1080  1.9 MB  10 arc minute image view (Blue|Black Marble mosaic @ 52 km)
  06m      3600 x   1800  5.1 MB  6 arc minute image view (Blue|Black Marble mosaic @ 32 km)
  05m      4320 x   2160  7.2 MB  5 arc minute image view (Blue|Black Marble mosaic @ 26 km)
  04m      5400 x   2700   11 MB  4 arc minute image view (Blue|Black Marble mosaic @ 21 km)
  03m      7200 x   3600   20 MB  3 arc minute image view (Blue|Black Marble mosaic @ 16 km)
  02m     10800 x   5400   44 MB  2 arc minute image view (Blue|Black Marble mosaic @ 11 km)
  01m     21600 x  10800  171 MB  1 arc minute image view (Blue|Black Marble mosaic @ 1.9 km)
  30s     43200 x  21600  622 MB  30 arc second image view (Blue|Black Marble mosaic original)
  ==== ================= =======  ===========================================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these images will, when downloaded, be placed in your ~/.gmt/server directory under
the ``earth/earth_day`` and ``earth/earth_night`` sub-directories.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

The 01m and lower resolution images are derivatives of NASA's Blue and Black marble image mosaics.
We have downsampled them via Cartesian Gaussian filtering to prevent aliasing while preserving
the latitude-dependent resolution in the original images. The full (6 sigma) filter-widths are
indicated in parenthesis.
The dimensions above reflect the number of nodes covered by the global images and the sizes refer
to the geotiff "day" files on the remote server. **Note**: This data set is experimental and the
format and delivery is likely to change in the future (e.g., via image tiles). To make the
files as small as possible we have also downgraded them from 24-bit to 8-bit indexed images.

Data References
~~~~~~~~~~~~~~~

#. Blue Marble: [https://visibleearth.nasa.gov/images/57752/blue-marble-land-surface-shallow-water-and-shaded-topography].
#. Black Marble: [https://earthobservatory.nasa.gov/features/NightLights/page3.php].
