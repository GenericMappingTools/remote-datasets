.. _earth_mask:

GSHHG Earth Mask
----------------

.. figure:: /_static/GMT_earth_mask.jpg
   :height: 888 px
   :width: 1774 px
   :align: center
   :scale: 40 %

Many users need ocean/land mask grids to isolate features that should only be
set over the ocean or on land. While you can prevent such areas from being plotted
via the clipping in :gmt-docs:`coast`, you may still want to perform calculations on
gridded data and apply masks via :gmt-docs:`grdmath`. Such mask grids can be computed
via :gmt-docs:`grdlandmask` but they can take a long time to compute for large regions,
the full GSHHG resolution, and small grid spacings. For these reasons we offer
precalculated mask grids via the remote server mechanism.

Usage
~~~~~

You access a global mask grid by specifying the special name

    @earth_mask[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):

.. _tbl-earth_masks:

.. table:: GSHHG Earth Mask

  ==== ================= === =======  =====================================================
  Code Dimensions        Reg Size     Description
  ==== ================= === =======  =====================================================
  01d       360 x    180 g,p   20 KB  1 arc degree global mask (skip features < 12364 km^2)
  30m       720 x    360 g,p   24 KB  30 arc minute global mask (skip features < 3091 km^2)
  20m      1080 x    540 g,p   30 KB  20 arc minute global mask (skip features < 1374 km^2)
  15m      1440 x    720 g,p   35 KB  15 arc minute global mask (skip features < 773 km^2)
  10m      2160 x   1080 g,p   57 KB  10 arc minute global mask (skip features < 343 km^2)
  06m      3600 x   1800 g,p  106 KB  6 arc minute global mask (skip features < 124 km^2)
  05m      4320 x   2160 g,p  117 KB  5 arc minute global mask (skip features < 86 km^2)
  04m      5400 x   2700 g,p  149 KB  4 arc minute global mask (skip features < 55 km^2)
  03m      7200 x   3600 g,p  209 KB  3 arc minute global mask (skip features < 31 km^2)
  02m     10800 x   5400 g,p  393 KB  2 arc minute global mask (skip features < 14 km^2)
  01m     21600 x  10800 g,p  998 KB  1 arc minute global mask (skip features < 3 km^2)
  30s     43200 x  21600 g,p  2.6 MB  30 arc second global mask (skip features < 1 km^2)
  15s     86400 x  43200 g,p  7.5 MB  15 arc second global mask (all features)
  ==== ================= === =======  =====================================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the Earth mask files being placed in an ``earth/earth_mask`` sub-directory.

Technical Information
~~~~~~~~~~~~~~~~~~~~~

Given that GSHHG contains 5 levels (ocean, land, lake, island-in-lake, pond-in-island-in-lake)
corresponding to levels 0-4, the mask grids were computed to reflect those 5 levels. Thus, the
node values in the mask grids are all in the 0-4 range and have these meanings:

    0. Oceanic areas beyond the shoreline
    1. Land areas inside the shoreline
    2. Lakes inside the land areas
    3. Islands in lakes in the land areas
    4. Smaller lakes in islands that are found within lakes inside the land area

This means that if you only want a mask for the ocean or one for wet versus dry, you will need to
run a simple :gmt-docs:`grdmath` command to adjust the mask for your use. We give some common
examples here. To create a gridline-registered mask that is 0 in the ocean and 1 everywhere
else (even in lakes, etc.), try::

    gmt grdmath @earth_mask_01m_g 0 GT = ocean_land.grd

To make a pixel-registered mask that has NaNs on land and 1 in the oceans, use::

    gmt grdmath @earth_mask_01m_p 0 LE 0 NAN = land_NaN.grd

Finally, to make a pixel-registered mask that is 1 for lakes and NaN elsewhere, try::

    gmt grdmath @earth_mask_01m 2 EQ 0 NAN = lakes_and_NaN.grd
