#!/usr/bin/with-contenv bash
find /import -type f | while read LINE;
do
	sudo -u abc bash /usr/local/hascheevos/bin/hascheevos.sh --copy-roms-to /output  "$LINE"
done
find /output -type d -exec chmod 777 {} \;
find /output -type f -exec chmod 666 {} \;
exit $?
