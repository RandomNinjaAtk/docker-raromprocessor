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
	Rom="$LINE"
	ConsoleId=""
	ConsoleName=""
	if echo "$Rom" | grep "^/input/megadrive" | read; then
		ConsoleId=1
		ConsoleName="Sega Mega Drive"
		ConsoleDirectory="megadrive"
	fi

	if echo "$Rom" | grep "^/input/n64" | read; then
		ConsoleId=2
		ConsoleName="Nintendo 64"
		ConsoleDirectory="n64"
	fi

	if echo "$Rom" | grep "^/input/snes" | read; then
		ConsoleId=3
		ConsoleName="Super Nintendo Entertainment System"
		ConsoleDirectory="snes"
	fi

	if echo "$Rom" | grep "^/input/gb" | read; then
		ConsoleId=4
		ConsoleName="GameBoy"
		ConsoleDirectory="gb"
	fi

	if echo "$Rom" | grep "^/input/gba" | read; then
		ConsoleId=5
		ConsoleName="GameBoy Advance"
		ConsoleDirectory="gba"
	fi

	if echo "$Rom" | grep "^/input/gbc" | read; then
		ConsoleId=6
		ConsoleName="GameBoy Color"
		ConsoleDirectory="gbc"
	fi

	if echo "$Rom" | grep "^/input/nes" | read; then
		ConsoleId=7
		ConsoleName="Nintendo Entertainment System"
		ConsoleDirectory="nes"
	fi

	if echo "$Rom" | grep "^/input/pcengine" | read; then
		ConsoleId=8
		ConsoleName="PC Engine"
		ConsoleDirectory="pcengine"
	fi

	if echo "$Rom" | grep "^/input/segacd" | read; then
		ConsoleId=9
		ConsoleName="Sega CD"
		ConsoleDirectory="segacd"
	fi

	if echo "$Rom" | grep "^/input/sega32x" | read; then
		ConsoleId=10
		ConsoleName="Sega 32X"
		ConsoleDirectory="sega32x"
	fi

	if echo "$Rom" | grep "^/input/mastersystem" | read; then
		ConsoleId=11
		ConsoleName="Sega Master System"
		ConsoleDirectory="mastersystem"
	fi

	if echo "$Rom" | grep "^/input/psx" | read; then
		ConsoleId=12
		ConsoleName="PlayStation"
		ConsoleDirectory="psx"
	fi

	if echo "$Rom" | grep "^/input/atarilynx" | read; then
		ConsoleId=13
		ConsoleName="Atari Lynx"
		ConsoleDirectory="atarilynx"
	fi

	if echo "$Rom" | grep "^/input/ngp" | read; then
		ConsoleId=14
		ConsoleName="NeoGeo Pocket [Color]"
		ConsoleDirectory="ngp"
	fi

	if echo "$Rom" | grep "^/input/gamegear" | read; then
		ConsoleId=15
		ConsoleName="Game Gear"
		ConsoleDirectory="gamegear"
	fi

	if echo "$Rom" | grep "^/input/atarijaguar" | read; then
		ConsoleId=17
		ConsoleName="Atari Jaguar"
		ConsoleDirectory="atarijaguar"
	fi

	if echo "$Rom" | grep "^/input/nds" | read; then
		ConsoleId=18
		ConsoleName="Nintendo DS"
		ConsoleDirectory="nds"
	fi

	if echo "$Rom" | grep "^/input/pokemini" | read; then
		ConsoleId=24
		ConsoleName="Pokemon Mini"
		ConsoleDirectory="pokemini"
	fi

	if echo "$Rom" | grep "^/input/atari2600" | read; then
		ConsoleId=25
		ConsoleName="Atari 2600"
		ConsoleDirectory="atari2600"
	fi

	if echo "$Rom" | grep "^/input/arcade" | read; then
		ConsoleId=27
		ConsoleName="Arcade:fbneo"
		ConsoleDirectory="arcade"
	fi

	if echo "$Rom" | grep "^/input/virtualboy" | read; then
		ConsoleId=28
		ConsoleName="VirtualBoy"
		ConsoleDirectory="virtualboy"
	fi

	if echo "$Rom" | grep "^/input/sg-1000" | read; then
		ConsoleId=33
		ConsoleName="SG-1000"
		ConsoleDirectory="sg-1000"
	fi

	if echo "$Rom" | grep "^/input/coleco" | read; then
		ConsoleId=44
		ConsoleName="ColecoVision"
		ConsoleDirectory="coleco"
	fi

	if echo "$Rom" | grep "^/input/atari7800" | read; then
		ConsoleId=51
		ConsoleName="Atari 7800"
		ConsoleDirectory="atari7800"
	fi

	if echo "$Rom" | grep "^/input/wonderswan" | read; then
		ConsoleId=53
		ConsoleName="WonderSwan [Color]"
		ConsoleDirectory="wonderswan"
	fi


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
# Set permissions
find /output -type d -exec chmod 777 {} \;
find /output -type f -exec chmod 666 {} \;
find /backup -type d -exec chmod 777 {} \;
find /backup -type f -exec chmod 666 {} \;
# remove empty directories
find /input -mindepth 2 -type d -empty -exec rm -rf {} \; &>/dev/null
exit $?
