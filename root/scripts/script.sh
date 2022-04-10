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

for folder in $(ls /input); do
	ConsoleId=""
	ConsoleName=""
	ArchiveUrl=""
	if echo "$folder" | grep "^megadrive" | read; then
		ConsoleId=1
		ConsoleName="Sega Mega Drive"
		ConsoleDirectory="megadrive"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega%20-%20Mega%20Drive%20-%20Genesis.zip"
	fi

	if echo "$folder" | grep "^n64" | read; then
		ConsoleId=2
		ConsoleName="Nintendo 64"
		ConsoleDirectory="n64"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Nintendo%2064.zip"
		
	fi

	if echo "$folder" | grep "^snes" | read; then
		ConsoleId=3
		ConsoleName="Super Nintendo Entertainment System"
		ConsoleDirectory="snes"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.zip"
	fi

	if echo "$folder" | grep "^gb" | read; then
		ConsoleId=4
		ConsoleName="GameBoy"
		ConsoleDirectory="gb"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Game%20Boy.zip"
	fi

	if echo "$folder" | grep "^gba" | read; then
		ConsoleId=5
		ConsoleName="GameBoy Advance"
		ConsoleDirectory="gba"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Game%20Boy%20Advance.zip"
	fi

	if echo "$folder" | grep "^gbc" | read; then
		ConsoleId=6
		ConsoleName="GameBoy Color"
		ConsoleDirectory="gbc"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Game%20Boy%20Color.zip"
	fi

	if echo "$folder" | grep "^nes" | read; then
		ConsoleId=7
		ConsoleName="Nintendo Entertainment System"
		ConsoleDirectory="nes"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Nintendo%20Entertainment%20System.zip"
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
		ArchiveUrl="https://archive.org/compress/SEGACD_CHD_PLUS"
	fi

	if echo "$folder" | grep "^sega32x" | read; then
		ConsoleId=10
		ConsoleName="Sega 32X"
		ConsoleDirectory="sega32x"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega%20-%2032X.zip"
	fi

	if echo "$folder" | grep "^mastersystem" | read; then
		ConsoleId=11
		ConsoleName="Sega Master System"
		ConsoleDirectory="mastersystem"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega%20-%20Master%20System%20-%20Mark%20III.zip"
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
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari%20-%20Lynx.zip"
	fi

	if echo "$folder" | grep "^ngpc" | read; then
		ConsoleId=14
		ConsoleName="SNK Neo Geo Pocket Color"
		ConsoleDirectory="ngpc"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/SNK%20-%20Neo%20Geo%20Pocket%20Color.zip"
	fi

	if echo "$folder" | grep "^gamegear" | read; then
		ConsoleId=15
		ConsoleName="Game Gear"
		ConsoleDirectory="gamegear"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega%20-%20Game%20Gear.zip"
	fi

	if echo "$folder" | grep "^atarijaguar" | read; then
		ConsoleId=17
		ConsoleName="Atari Jaguar"
		ConsoleDirectory="atarijaguar"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari%20-%20Jaguar.zip"
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
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Pokemon%20Mini.zip"
	fi

	if echo "$folder" | grep "^atari2600" | read; then
		ConsoleId=25
		ConsoleName="Atari 2600"
		ConsoleDirectory="atari2600"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari%20-%202600.zip"
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
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Virtual%20Boy.zip"
	fi

	if echo "$folder" | grep "^sg-1000" | read; then
		ConsoleId=33
		ConsoleName="SG-1000"
		ConsoleDirectory="sg-1000"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega%20-%20SG-1000.zip"
	fi

	if echo "$folder" | grep "^coleco" | read; then
		ConsoleId=44
		ConsoleName="ColecoVision"
		ConsoleDirectory="coleco"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Coleco%20-%20ColecoVision.zip"
	fi

	if echo "$folder" | grep "^atari7800" | read; then
		ConsoleId=51
		ConsoleName="Atari 7800"
		ConsoleDirectory="atari7800"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari%20-%207800.zip"
	fi

	if echo "$folder" | grep "^wonderswancolor" | read; then
		ConsoleId=53
		ConsoleName="WonderSwan [Color]"
		ConsoleDirectory="wonderswancolor"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Bandai%20-%20WonderSwan%20Color.zip"
	fi

	if echo "$folder" | grep "^intellivision" | read; then
		ConsoleId=45
		ConsoleName="Intellivision"
		ConsoleDirectory="intellivision"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Mattel%20-%20Intellivision.zip"
	fi

	if echo "$folder" | grep "^vectrex" | read; then
		ConsoleId=46
		ConsoleName="Vectrex"
		ConsoleDirectory="vectrex"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/GCE%20-%20Vectrex.zip"
	fi

	if echo "$folder" | grep "^apple2" | read; then
		ConsoleId=38
		ConsoleName="Apple II"
		ConsoleDirectory="apple2"
	fi

	if echo "$folder" | grep "^saturn" | read; then
		ConsoleId=39
		ConsoleName="Sega Saturn"
		ConsoleDirectory="saturn"
	fi

	if echo "$folder" | grep "^dreamcast" | read; then
		ConsoleId=40
		ConsoleName="Sega Dreamcast"
		ConsoleDirectory="dreamcast"
	fi

	if echo "$folder" | grep "^psp" | read; then
		ConsoleId=41
		ConsoleName="PlayStation Portable"
		ConsoleDirectory="psp"
	fi

	if echo "$folder" | grep "^msx" | read; then
		ConsoleId=29
		ConsoleName="MSX"
		ConsoleDirectory="msx"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Microsoft%20-%20MSX.zip"
	fi

	if echo "$folder" | grep "^odyssey2" | read; then
		ConsoleId=23
		ConsoleName="Magnavox Odyssey 2"
		ConsoleDirectory="odyssey2"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Magnavox%20-%20Odyssey2.zip"
	fi

	if echo "$folder" | grep "^ngp" | read; then
		ConsoleId=14
		ConsoleName="SNK Neo Geo Pocket"
		ConsoleDirectory="ngp"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/SNK%20-%20Neo%20Geo%20Pocket.zip"
	fi
	
	if [ "$AquireRomSets" = "true" ]; then
		echo "$ConsoleName :: Getting ROMs"
		if [ ! -z "$ArchiveUrl" ]; then
		if [ -f /config/logs/downloaded/$folder ]; then
			echo "$ConsoleName :: ROMs previously downloaded :: Skipping..."
		else
			if [ -d /input/temp ]; then
				rm -rf /input/temp
			fi
			mkdir -p /input/temp
			echo "$ConsoleName :: Downloading ROMs :: Please wait..."
			wget -q --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 "$ArchiveUrl" -O /input/temp/roms.zip
			if [ -f /input/temp/roms.zip ]; then
				echo "$ConsoleName :: Download Complete!"
				echo "$ConsoleName :: Unpacking to /input/$folder"
				unzip -o -d "/input/$folder" /input/temp/roms.zip >/dev/null
				echo "$ConsoleName :: Done!"
			else
				echo "$ConsoleName :: Download Failed!"
			fi
			if [ -d /input/temp ]; then
				rm -rf /input/temp
			fi
			if [ ! -d /config/logs/downloaded ]; then
				mkdir -p /config/logs/downloaded
			fi
			if [ ! -f /config/logs/downloaded/$folder ]; then
				touch /config/logs/downloaded/$folder
			fi
		fi
		else
			echo "$ConsoleName :: ERROR :: No Archive.org URL found :: Skipping..."
		fi
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
				echo "$ConsoleName :: $GameName :: Dupes found!"
				Files=$(echo "$GameListData" | jq -r "select(.name==\"$GameName\") | .path")
				OLDIFS="$IFS"
				IFS=$'\n'
				FileNames=($(echo "$GameListData" | jq -r "select(.name==\"$GameName\") | .path"))
				IFS="$OLDIFS"
				UsaRom=false
				EuropeRom=false
				WorldRom=false
				JapanRom=false
				if echo "$Files" | grep "USA" | read; then
					echo "$ConsoleName :: $GameName :: USA ROM Found"
					echo "$ConsoleName :: $GameName :: Delete Non USA ROM"
					UsaRom=true
				elif echo "$Files" | grep "Europe" | read; then
					echo "$ConsoleName :: $GameName :: Europe ROM Found"
					echo "$ConsoleName :: $GameName :: Delete Non Europe ROM"
					EuropeRom=true
				elif echo "$Files" | grep "World" | read; then
					echo "$ConsoleName :: $GameName :: World ROM Found"
					echo "$ConsoleName :: $GameName :: Delete Non World ROM"
					WorldRom=true			
				elif echo "$Files" | grep "Japan" | read; then
					echo "$ConsoleName :: $GameName :: Japan ROM Found"
					echo "$ConsoleName :: $GameName :: Delete Non Japan ROM"
					JapanRom=true			
				fi

				for File in ${!FileNames[@]}; do
					FileName="${FileNames[$File]}"
					FileName="${FileName:2}"
					if [ $UsaRom = true ]; then
						if echo "$FileName" | grep -v "USA" | read; then
							echo "$ConsoleName :: $GameName :: Delete /output/$folder/$FileName"
							if [ -f "/output/$folder/$FileName" ]; then
								rm "/output/$folder/$FileName"
							fi
						fi
					fi
					if [ $EuropeRom = true ]; then
						if echo "$FileName" | grep -v "Europe" | read; then
							echo "$ConsoleName :: $GameName :: Delete /output/$folder/$FileName"
							if [ -f "/output/$folder/$FileName" ]; then
								rm "/output/$folder/$FileName"
							fi
						fi
					fi
					if [ $WorldRom = true ]; then
						if echo "$FileName" | grep -v "World" | read; then
							echo "$ConsoleName :: $GameName :: Delete /output/$folder/$FileName"
							if [ -f "/output/$folder/$FileName" ]; then
								rm "/output/$folder/$FileName"
							fi
						fi
					fi
					if [ $JapanRom = true ]; then
						if echo "$FileName" | grep -v "Japan" | read; then
							echo "$ConsoleName :: $GameName :: Delete /output/$folder/$FileName"
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
						echo "$ConsoleName :: $GameName :: FileNameLength $FileNameLength :: $FileName"
						for ComparisonFile in ${!FileNames[@]}; do
							ComparisonFileName="${FileNames[$ComparisonFile]}"
							ComparisonFileName="${ComparisonFileName:2}"
							ComparisonFileNameLength=$(echo $ComparisonFileName | wc -m)
							echo "$ConsoleName :: $GameName :: ComparisonFileNameLength $ComparisonFileNameLength :: $ComparisonFileName"
							if [ $FileNameLength -gt $ComparisonFileNameLength ]; then
								if [ -f "/output/$folder/$ComparisonFileName" ]; then
									echo "$ConsoleName :: $GameName :: DELETE :: /output/$folder/$FileName"
									rm "/output/$folder/$FileName"
								fi
							fi
						done
					fi
				done	

			else
				echo "$ConsoleName :: $GameName :: No dupes found!"
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
exit $?
