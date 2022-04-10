#!/usr/bin/with-contenv bash

# Script to download ROM sets from archive.org

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
		continue
	fi
done
exit $?
