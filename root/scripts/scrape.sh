#!/usr/bin/with-contenv bash
for folder in $(ls /output);
do 
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache -s screenscraper -i /output/$folder --flags relative
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache -i /output/$folder --flags relative
done
find /output -type d -exec chmod 777 {} \;
find /output -type f -exec chmod 666 {} \;
exit $?
