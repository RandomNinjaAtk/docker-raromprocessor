#!/usr/bin/with-contenv bash

# Check for new files to skip scrape when nothing has changed...
if find /input -type f | read; then
	echo "New Files to Import and Process"
	if [ -f /scripts/no_files_to_process ]; then
		rm /scripts/no_files_to_process
	fi
else
	echo "No files to process in /input ... skipping..."
	touch /scripts/no_files_to_process
	exit
fi

# Process ROMs with hascheevos
find /input -type f | while read LINE;
do
	sudo -u abc bash /usr/local/hascheevos/bin/hascheevos.sh --copy-roms-to /output  "$LINE"
	# backup processed ROM to /backup
	# create backup directories/path that matches input path
	if [ ! -d "/backup/$(dirname "${LINE:7}")" ]; then
		mkdir -p "/backup/$(dirname "${LINE:7}")"
	fi
	# copy ROM from /input to /backup
	if [ ! -f "/backup/${LINE:7}" ]; then
		cp "$LINE" "/backup/${LINE:7}"
	fi
	# remove ROM from input
	rm "$LINE"
done
# Set permissions
find /output -type d -exec chmod 777 {} \;
find /output -type f -exec chmod 666 {} \;
find /backup -type d -exec chmod 777 {} \;
find /backup -type f -exec chmod 666 {} \;
# remove empty directories
find /input -mindepth 1 -type d -empty -exec rm -rf {} \; &>/dev/null
exit $?
