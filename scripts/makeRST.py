# %%
import toml
import textwrap

with open("datasets.toml", "r") as f:
    config = toml.load(f)

# %%
for k, ds in config["dataset"].items():
    logo, image = "", ""

    if ds.get("logo"):
        logo = f"""
.. figure:: {ds["logo"]}
    :align: right"
    :scale: 20%"
"""

    if ds.get("image"):
        image = f"""
.. image:: {ds["image"]}
    :width: 710px
    :align: center
"""
        
    table = ""
    for res, reg in zip(ds["resolutions"], ds["registrations"]):
        unit = res[2]
        val = int(res[:2])
        print(val)

        dimx, dimy = 360, 180 # default for 1d       
        if unit == "d":
            pass
        elif unit == "m":
            dimx *= 60 / val
            dimy *= 60 / val
        elif unit == "s":
            dimx *= 3600 / val
            dimy *= 3600 / val
        table += f"{res} {int(dimx)} x {int(dimy)} {reg}\n"

    
    content = f"""
{ds["title"]}
{"-" * len(ds["title"])}
{logo}
{image}

{ds["description"]}

Usage
~~~~~

You access a global crustal age grid by specifying the special name

    @{ds["name"]}[_\ *rru*\ [_\ *reg*\ ]]

The following codes for *rr*\ *u* and the optional *reg* are supported (dimensions and sizes are listed
for pixel-registered grids; gridline-registered grids increment dimensions by one):


.. _tbl-{ds["name"]}:

.. table:: {ds["title"]}. An asterisk denotes tiled datasets.
==== ================= === =======  ==================================================
Code Dimensions        Reg Size     Description
==== ================= === =======  ==================================================
{table}


  01d       360 x    180 g,p   71 KB  1 arc degree global seafloor ages (1 min @ 111 km)
  30m       720 x    360 g,p  198 KB  30 arc minute global seafloor ages (1 min @ 55 km)
  20m      1080 x    540 g,p  391 KB  20 arc minute global seafloor ages (1 min @ 37 km)
  15m      1440 x    720 g,p  644 KB  15 arc minute global seafloor ages (1 min @ 28 km)
  10m      2160 x   1080 g,p  1.3 MB  10 arc minute global seafloor ages (1 min @ 18 km)
  06m      3600 x   1800 g,p  3.0 MB  6 arc minute global seafloor ages (1 min @ 10 km)
  05m*     4320 x   2160 g,p  4.6 MB  5 arc minute global seafloor ages (1 min @ 9 km)
  04m*     5400 x   2700 g,p  5.8 MB  4 arc minute global seafloor ages (1 min @ 7.5 km)
  03m*     7200 x   3600 g,p   12 MB  3 arc minute global seafloor ages (1 min @ 5.6 km)
  02m*    10800 x   5400 g,p   19 MB  2 arc minute global seafloor ages (1 min @ 3.7 km)
  01m*    21600 x  10800 g     51 MB  1 arc minute global seafloor ages (1 min original)
  ==== ================= === =======  ==================================================

See :gmt-docs:`GMT remote dataset usage <datasets/remote-data.html#usage>` for when resolution codes are optional or required.
All of these data will, when downloaded, be placed in your ~/.gmt/server directory, with
the {ds["name"]} files being placed in an ``earth/{ds["name"]}`` sub-directory. If you do not
specify a CPT, the default CPT for this dataset (*{ds["cpt"]}*) will be used.


Technical Information
~~~~~~~~~~~~~~~~~~~~~

We scale and reformat the original data to take up very little space so that downloads
from the servers are as fast as possible.  For the seafloor crustal age grid this means
we chose 0.01 Myr as the smallest data unit, which is well below the uncertainties in the
model.  Data are scaled and shifted to fit in a short integer grid that is highly compressed
by netCDF lossless compression and chunking.  The data are reported in Myr relative
to the 2012 Geological Time Scale.

Data References
~~~~~~~~~~~~~~~

#. Seton et al., 2020: [https://doi.org/10.1029/2020GC009214].
  
        """
    print(content)

# %%
