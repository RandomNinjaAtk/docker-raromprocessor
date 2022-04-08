#!/usr/bin/with-contenv bash
for folder in $(ls /output);
do
	# Scrape from screenscraper
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets
	# Save scraped data to output folder
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
	# Remove skipped roms
	if [ -f /root/.skyscraper/skipped-$folder-cache.txt ]; then
		cat /root/.skyscraper/skipped-$folder-cache.txt | while read LINE;
		do 
			rm "$LINE"
		done
	fi
	# Rebuild gamelist to clean
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
	
	if [ "$DeDupe" = "true" ]; then
		GameListData="$(cat /output/$folder/gamelist.xml | xq .gameList[] | jq .[])"
		OLDIFS="$IFS"
		IFS=$'\n'
		GameNames=($(echo "$GameListData" | jq -r ".name" | sort -u))
		IFS="$OLDIFS"		
		for Name in ${!GameNames[@]}; do
			GameName="${GameNames[$Name]}"
			RomCount=""
			RomCount=$(echo $GameListData | jq -r .name | grep "^$GameName$" | wc -l)
			if [ $RomCount -gt 1 ]; then
				echo "Dupes found for: $GameName"
				Files=$(echo "$GameListData" | jq -r "select(.name==\"$GameName\") | .path")
				OLDIFS="$IFS"
				IFS=$'\n'
				FileNames=($(echo "$GameListData" | jq -r "select(.name==\"$GameName\") | .path"))
				IFS="$OLDIFS"
				echo "$Files"
				UsaRom=false
				EuropeRom=false
				JapanRom=false
				if echo "$Files" | grep "USA" | read; then
					echo "USA ROM Found"
					echo "Delete Non USA ROM"
					UsaRom=true
				elif echo "$Files" | grep "Europe" | read; then
					echo "Europe ROM Found"
					echo "Delete Non Europe ROM"
					EuropeRom=true
				elif  echo "$Files" | grep "Japan" | read; then
					echo "Japan ROM Found"
					echo "Delete Non Japan ROM"
					JapanRom=true			
				fi


				for File in ${!FileNames[@]}; do
					FileName="${FileNames[$File]}"
					FileName="${FileName:2}"
					if [ $UsaRom = true ]; then
						if echo "$FileName" | grep -v "USA" | read; then
							echo "Delete /output/$folder/$FileName"
							if [ -f "/output/$folder/$FileName" ]; then
								rm "/output/$folder/$FileName"
							fi
						fi
					fi
					if [ $EuropeRom = true ]; then
						if echo "$FileName" | grep -v "Europe" | read; then
							echo "Delete /output/$folder/$FileName"
							if [ -f "/output/$folder/$FileName" ]; then
								rm "/output/$folder/$FileName"
							fi
						fi
					fi
					if [ $JapanRom = true ]; then
						if echo "$FileName" | grep -v "Japan" | read; then
							echo "Delete /output/$folder/$FileName"
							if [ -f "/output/$folder/$FileName" ]; then
								rm "/output/$folder/$FileName"
							fi
						fi
					fi


				done

				for File in ${!FileNames[@]}; do
					FileName="${FileNames[$File]}"
					FileName="${FileName:2}"
					FileNameLength=$(echo $FileName | wc -m)
					if [ -f "/output/$folder/$FileName" ]; then
						echo "FileNameLength $FileNameLength :: $FileName"
						for ComparisonFile in ${!FileNames[@]}; do
							ComparisonFileName="${FileNames[$ComparisonFile]}"
							ComparisonFileName="${ComparisonFileName:2}"
							ComparisonFileNameLength=$(echo $ComparisonFileName | wc -m)
							echo "ComparisonFileNameLength $ComparisonFileNameLength :: $ComparisonFileName"
							if [ $FileNameLength -gt $ComparisonFileNameLength ]; then
								if [ -f "/output/$folder/$ComparisonFileName" ]; then
									echo "DELETE :: /output/$folder/$FileName"
									rm "/output/$folder/$FileName"
								fi
							fi
						done
					fi
				done	

			else
				echo "No dupes found for: $GameName"
			fi
		done
		# Rebuild gamelist to clean
		Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets
		Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
	else
		echo "DeDuping process disabled..."
	fi
done
# set permissions
find /output -type d -exec chmod 777 {} \;
find /output -type f -exec chmod 666 {} \;
exit $?
