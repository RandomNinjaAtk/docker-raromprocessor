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
	#exit
fi

for folder in $(ls /input); do

# Check for new files to skip scrape when nothing has changed...
	
	ConsoleId=""
	ConsoleName=""
	if echo "$folder" | grep "^megadrive" | read; then
		ConsoleId=1
		ConsoleName="Sega Mega Drive"
		ConsoleDirectory="megadrive"
	fi

	if echo "$folder" | grep "^n64" | read; then
		ConsoleId=2
		ConsoleName="Nintendo 64"
		ConsoleDirectory="n64"
	fi

	if echo "$folder" | grep "^snes" | read; then
		ConsoleId=3
		ConsoleName="Super Nintendo Entertainment System"
		ConsoleDirectory="snes"
	fi

	if echo "$folder" | grep "^gb" | read; then
		ConsoleId=4
		ConsoleName="GameBoy"
		ConsoleDirectory="gb"
	fi

	if echo "$folder" | grep "^gba" | read; then
		ConsoleId=5
		ConsoleName="GameBoy Advance"
		ConsoleDirectory="gba"
	fi

	if echo "$folder" | grep "^gbc" | read; then
		ConsoleId=6
		ConsoleName="GameBoy Color"
		ConsoleDirectory="gbc"
	fi

	if echo "$folder" | grep "^nes" | read; then
		ConsoleId=7
		ConsoleName="Nintendo Entertainment System"
		ConsoleDirectory="nes"
	fi

	if echo "$folder" | grep "^pcengine" | read; then
		ConsoleId=8
		ConsoleName="PC Engine"
		ConsoleDirectory="pcengine"
	fi

	if echo "$folder" | grep "^segacd" | read; then
		ConsoleId=9
		ConsoleName="Sega CD"
		ConsoleDirectory="segacd"
	fi

	if echo "$folder" | grep "^sega32x" | read; then
		ConsoleId=10
		ConsoleName="Sega 32X"
		ConsoleDirectory="sega32x"
	fi

	if echo "$folder" | grep "^mastersystem" | read; then
		ConsoleId=11
		ConsoleName="Sega Master System"
		ConsoleDirectory="mastersystem"
	fi

	if echo "$folder" | grep "^psx" | read; then
		ConsoleId=12
		ConsoleName="PlayStation"
		ConsoleDirectory="psx"
	fi

	if echo "$folder" | grep "^atarilynx" | read; then
		ConsoleId=13
		ConsoleName="Atari Lynx"
		ConsoleDirectory="atarilynx"
	fi

	if echo "$folder" | grep "^ngp" | read; then
		ConsoleId=14
		ConsoleName="NeoGeo Pocket [Color]"
		ConsoleDirectory="ngp"
	fi

	if echo "$folder" | grep "^gamegear" | read; then
		ConsoleId=15
		ConsoleName="Game Gear"
		ConsoleDirectory="gamegear"
	fi

	if echo "$folder" | grep "^atarijaguar" | read; then
		ConsoleId=17
		ConsoleName="Atari Jaguar"
		ConsoleDirectory="atarijaguar"
	fi

	if echo "$folder" | grep "^nds" | read; then
		ConsoleId=18
		ConsoleName="Nintendo DS"
		ConsoleDirectory="nds"
	fi

	if echo "$folder" | grep "^pokemini" | read; then
		ConsoleId=24
		ConsoleName="Pokemon Mini"
		ConsoleDirectory="pokemini"
	fi

	if echo "$folder" | grep "^atari2600" | read; then
		ConsoleId=25
		ConsoleName="Atari 2600"
		ConsoleDirectory="atari2600"
	fi

	if echo "$folder" | grep "^arcade" | read; then
		ConsoleId=27
		ConsoleName="Arcade"
		ConsoleDirectory="arcade"
	fi

	if echo "$folder" | grep "^virtualboy" | read; then
		ConsoleId=28
		ConsoleName="VirtualBoy"
		ConsoleDirectory="virtualboy"
	fi

	if echo "$folder" | grep "^sg-1000" | read; then
		ConsoleId=33
		ConsoleName="SG-1000"
		ConsoleDirectory="sg-1000"
	fi

	if echo "$folder" | grep "^coleco" | read; then
		ConsoleId=44
		ConsoleName="ColecoVision"
		ConsoleDirectory="coleco"
	fi

	if echo "$folder" | grep "^atari7800" | read; then
		ConsoleId=51
		ConsoleName="Atari 7800"
		ConsoleDirectory="atari7800"
	fi

	if echo "$folder" | grep "^wonderswan" | read; then
		ConsoleId=53
		ConsoleName="WonderSwan [Color]"
		ConsoleDirectory="wonderswan"
	fi
	
	if find /input/$folder -type f | read; then
		echo "Searching For ROMS in /input/$folder :: $ConsoleName :: ROMs found for processing, processing..."
	else
		echo "Searching For ROMS in /input/$folder :: $ConsoleName :: No ROMs found skipping..."
		continue
	fi

	# Process ROMs with hascheevos
	find /input/$folder -type f | while read LINE;
	do
		Rom="$LINE"
		


		TMP_DIR="/tmp/rom_storage"
		mkdir -p "$TMP_DIR"
		rom="$Rom"

		RomFilename="${rom##*/}"
		RomExtension="${filename##*.}"

		if [ ! -f "console_${ConsoleId}_hashlibrary.json" ]; then
			echo "--- getting the console hash library for \"$ConsoleName\"..."
			curl -s "https://retroachievements.org/dorequest.php?r=hashlibrary&c=${ConsoleId}" | jq '.' > "console_${ConsoleId}_hashlibrary.json"
		fi



		echo "$ConsoleName :: $RomFilename :: Processing..."
		RaHash=""
		case "$rom" in
			*.zip|*.ZIP)
			    uncompressed_rom="$TMP_DIR/$(unzip -Z1 "$rom" | head -1)"
			    unzip -o -d "$TMP_DIR" "$rom" >/dev/null
			    RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$uncompressed_rom") || ret=1
			    ;;
			*.7z|*.7Z)
			    uncompressed_rom="$TMP_DIR/$(7z l -slt "$rom" | sed -n 's/^Path = //p' | sed '2q;d')"
			    7z e -y -bd -o"$TMP_DIR" "$rom" >/dev/null
			    RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$uncompressed_rom") || ret=1
			    ;;
			*)
			    RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$rom") || ret=1
			    ;;
		    esac

		    if [[ $ret -ne 0 ]]; then
			rm -f "$uncompressed_rom"
		    fi

		echo "$ConsoleName :: $RomFilename :: Hash Found :: $RaHash"
		echo "$ConsoleName :: $RomFilename :: Matching To RetroAchievements.org DB"
		if cat "console_${ConsoleId}_hashlibrary.json" | jq -r .[] | grep "$RaHash" | read; then
			echo "$ConsoleName :: $RomFilename :: Match Found!"

			if [ ! -d /output/$ConsoleDirectory ]; then
				echo "$ConsoleName :: $RomFilename :: Creating Console Directory \"/output/$ConsoleDirectory\""
				mkdir -p /output/$ConsoleDirectory
				chmod 777 /output/$ConsoleDirectory
			fi
			if [ ! -f "/output/$ConsoleDirectory/$RomFilename" ]; then
				echo "$ConsoleName :: $RomFilename :: Copying ROM to \"/output/$ConsoleDirectory\""
				cp "$rom" "/output/$ConsoleDirectory"/
			else
				echo "$ConsoleName :: $RomFilename :: ROM previously imported, skipping..."
			fi
		else
			echo "$ConsoleName :: $RomFilename :: ERROR :: Not Found on RetroAchievements.org DB"
		fi

		
		
		# backup processed ROM to /backup
		# create backup directories/path that matches input path
		if [ ! -d "/backup/$(dirname "${Rom:7}")" ]; then
			echo "$ConsoleName :: $RomFilename :: Creating Missing Backup Folder :: /backup/$(dirname "${Rom:7}")"
			mkdir -p "/backup/$(dirname "${Rom:7}")"
			chmod 777 "/backup/$(dirname "${Rom:7}")"
		fi
		# copy ROM from /input to /backup
		if [ ! -f "/backup/${Rom:7}" ]; then
			echo "$ConsoleName :: $RomFilename :: Backing up ROM to: /backup/$(dirname "${Rom:7}")"
			cp "$Rom" "/backup/${Rom:7}"
			chmod 666 "/backup/${Rom:7}"
		fi
		# remove ROM from input
		echo "$ConsoleName :: $RomFilename :: Removing ROM from /input"
		rm "$Rom"
		
	done
	
	# remove empty directories
	find /input/$folder -mindepth 1 -type d -empty -exec rm -rf {} \; &>/dev/null
	
	# Scrape from screenscraper
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets,unpack
	# Save scraped data to output folder
	Skyscraper -f emulationstation -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
	# Remove skipped roms
	if [ -f /root/.skyscraper/skipped-$folder-cache.txt ]; then
		cat /root/.skyscraper/skipped-$folder-cache.txt | while read LINE;
		do 
			rm "$LINE"
		done
	fi
	# Rebuild gamelist to clean
	if [ -d "/output/$folder/media" ]; then
		rm -rf "/output/$folder/media"
	fi
	if [ -f "/output/$folder/gamelist.xml" ]; then
		rm "/output/$folder/gamelist.xml"
	fi
	Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets
	Skyscraper -f emulationstation -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
	# clean cache from removed ROMs
	Skyscraper -f emulationstation -p $folder -d /cache/$folder -i /output/$folder --cache vacuum --flags relative,videos,unattend,nobrackets
	
	if [ "$DeDupe" = "true" ]; then
		# verify gamelist.xml exists
		if [ ! -f "/output/$folder/gamelist.xml" ]; then
			continue
		fi
		GameListData="$(cat "/output/$folder/gamelist.xml" | xq .gameList[] | jq .[])"
		OLDIFS="$IFS"
		IFS=$'\n'
		GameNames=($(echo "$GameListData" | jq -r ".name" | sort -u))
		IFS="$OLDIFS"
		# process each game name in the gamelist.xml
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
		if [ -d "/output/$folder/media" ]; then
			rm -rf "/output/$folder/media"
		fi
		if [ -f "/output/$folder/gamelist.xml" ]; then
			rm "/output/$folder/gamelist.xml"
		fi
		Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper -i /output/$folder --flags relative,videos,unattend,nobrackets
		Skyscraper -f emulationstation -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
		# clean cache from removed ROMs
		Skyscraper -f emulationstation -p $folder -d /cache/$folder -i /output/$folder --cache vacuum --flags relative,videos,unattend,nobrackets
	else
		echo "DeDuping process disabled..."
	fi
	
	# set permissions
	find /output/$folder -type d -exec chmod 777 {} \;
	find /output/$folder -type f -exec chmod 666 {} \;
done
exit


exit $?
