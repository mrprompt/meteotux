#!/bin/bash

if [ ! $UID = 0 ] ; then echo "You need to be root"; fi

echo "Download meteotux_pi"
wget -O meteotux_pi -q "https://sites.google.com/site/meteotuxpi/download/meteotux_pi?attredirects=0&d=1"
chmod +x meteotux_pi
mv meteotux_pi /usr/bin/

echo "Configuring service"
cp ../init.d/meteotux /etc/init.d/
chmod +x /etc/init.d/meteotux
update-rc.d meteotux defaults

echo "Done"
