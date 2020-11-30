#!/bin/bash

gmt begin SondeLocations png
    gmt grdimage @earth_relief_01s -R-148/-146/64/65 -JM5i -Ctopo -I
    gmt grdcontour @earth_relief_01s -R-148/-146/64/65 -JM5i -C250 -A500
    gmt coast -R-148/-146/64/65 -JM5i \
        -W0.25,black -Ia/1p,darkblue \
        -Sblue -Df -Wthin -BWSne -Baf -Lg-146.2/64.1+c-146.2/64.1+w10+f+l
    gmt plot Edited_Locations.xy -Sc0.1 -Gred -l"Sondes"
    gmt plot Fairbanks.xy -Sc0.3 -Gblack -l"Fairbanks"
gmt end