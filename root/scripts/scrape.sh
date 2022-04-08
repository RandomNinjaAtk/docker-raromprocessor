#!/usr/bin/with-contenv bash
for folder in $(ls /output);
do
	# Scrape from screenscraper
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets
	# Save scraped data to output folder
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
	# Remove skipped roms
	cat /root/.skyscraper/skipped-$folder-cache.txt | while read LINE;
	do 
		rm "$LINE"
	done
	# Rebuild gamelist to clean
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
	# remove empty directories
	find /input -mindepth 1 -type d -empty -exec rm -rf {} \; &>/dev/null
done
# set permissions
find /output -type d -exec chmod 777 {} \;
find /output -type f -exec chmod 666 {} \;
exit $?
