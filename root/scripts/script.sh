#!/usr/bin/env bash
version="1.0.0.0025"
echo "----------------------------------------------------------------"
echo "           |~) _ ._  _| _ ._ _ |\ |o._  o _ |~|_|_|"
echo "           |~\(_|| |(_|(_)| | || \||| |_|(_||~| | |<"
echo "            Presenets: RA ROM Processor ($version)"
echo "                May the cheevos be with you!"
echo "----------------------------------------------------------------"
echo "Donate: https://github.com/sponsors/RandomNinjaAtk"
echo "Project: https://github.com/RandomNinjaAtk/docker-raromprocessor"
echo "Support: https://discord.gg/JumQXDc"
echo "----------------------------------------------------------------"
sleep 5
echo ""
echo "Lift off in..."; sleep 0.5
echo "5"; sleep 1
echo "4"; sleep 1
echo "3"; sleep 1
echo "2"; sleep 1
echo "1"; sleep 1

log () {
    m_time=`date "+%F %T"`
    echo $m_time" :: "$1
}

CreateRomFolders () {
	# Create ROM folders
	if [ ! -d "/input/amiga" ]; then
		echo "Created: /input/amiga"
	
	fi
	
	if [ ! -d "/input/amstradcpc" ]; then
		echo "Created: /input/amstradcpc"
	
	fi
	
	if [ ! -d "/input/apple2" ]; then
		echo "Created: /input/apple2"
	
	fi
	
	if [ ! -d "/input/arcade" ]; then
		echo "Created: /input/arcade"
	
	fi
	
	if [ ! -d "/input/atari2600" ]; then
		echo "Created: /input/atari2600"
	
	fi
	
	if [ ! -d "/input/atari5200" ]; then
		echo "Created: /input/atari5200"
	
	fi
	
	if [ ! -d "/input/atari7800" ]; then
		echo "Created: /input/atari7800"
	
	fi
	
	if [ ! -d "/input/atarijaguar" ]; then
		echo "Created: /input/atarijaguar"
	
	fi
	
	if [ ! -d "/input/atarilynx" ]; then
		echo "Created: /input/atarilynx"
	
	fi
	
	if [ ! -d "/input/atarist" ]; then
		echo "Created: /input/atarist"
	
	fi
	
	if [ ! -d "/input/c64" ]; then
		echo "Created: /input/c64"
	
	fi
	
	if [ ! -d "/input/channelf" ]; then
		echo "Created: /input/channelf"
	
	fi
	
	if [ ! -d "/input/coleco" ]; then
		echo "Created: /input/coleco"
	
	fi
	
	if [ ! -d "/input/dreamcast" ]; then
		echo "Created: /input/dreamcast"
	
	fi
	
	if [ ! -d "/input/gamegear" ]; then
		echo "Created: /input/gamegear"
	
	fi
	
	if [ ! -d "/input/gb" ]; then
		echo "Created: /input/gb"
	
	fi
	
	if [ ! -d "/input/gba" ]; then
		echo "Created: /input/gba"
	
	fi
	
	if [ ! -d "/input/gbc" ]; then
		echo "Created: /input/gbc"
	
	fi
	
	if [ ! -d "/input/intellivision" ]; then
		echo "Created: /input/intellivision"
	
	fi
	
	if [ ! -d "/input/mastersystem" ]; then
		echo "Created: /input/mastersystem"
	
	fi
	
	if [ ! -d "/input/megadrive" ]; then
		echo "Created: /input/megadrive"
	
	fi
	
	if [ ! -d "/input/msx" ]; then
		echo "Created: /input/msx"
	
	fi
	
	if [ ! -d "/input/msx2" ]; then
		echo "Created: /input/msx2psp"
	
	fi
	
	if [ ! -d "/input/n64" ]; then
		echo "Created: /input/n64"
	
	fi
	
	if [ ! -d "/input/nds" ]; then
		echo "Created: /input/nds"
	
	fi
	
	if [ ! -d "/input/neogeocd" ]; then
		echo "Created: /input/neogeocd"
	
	fi
	
	if [ ! -d "/input/nes" ]; then
		echo "Created: /input/nes"
	
	fi
	
	if [ ! -d "/input/ngp" ]; then
		echo "Created: /input/ngp"
	
	fi
	
	if [ ! -d "/input/ngpc" ]; then
		echo "Created: /input/ngpc"
	
	fi
	
	if [ ! -d "/input/odyssey2" ]; then
		echo "Created: /input/odyssey2"
	
	fi
	
	if [ ! -d "/input/pcengine" ]; then
		echo "Created: /input/pcengine"
	
	fi
	
	if [ ! -d "/input/pokemini" ]; then
		echo "Created: /input/pokemini"
	
	fi
	
	if [ ! -d "/input/psp" ]; then
		echo "Created: /input/psp"
	
	fi
	
	if [ ! -d "/input/psx" ]; then
		echo "Created: /input/psx"
	
	fi
	
	if [ ! -d "/input/saturn" ]; then
		echo "Created: /input/saturn"
	
	fi
	
	if [ ! -d "/input/sega32x" ]; then
		echo "Created: /input/sega32x"
	
	fi
	
	if [ ! -d "/input/segacd" ]; then
		echo "Created: /input/segacd"
	
	fi
	
	if [ ! -d "/input/sg-1000" ]; then
		echo "Created: /input/sg-1000"
	
	fi
	
	if [ ! -d "/input/snes" ]; then
		echo "Created: /input/snes"
	
	fi
	
	if [ ! -d "/input/tg16" ]; then
		echo "Created: /input/tg16"
	
	fi
	
	if [ ! -d "/input/vectrex" ]; then
		echo "Created: /input/vectrex"
	
	fi
	
	
	if [ ! -d "/input/virtualboy" ]; then
		echo "Created: /input/virtualboy"
	
	fi
	
	if [ ! -d "/input/wonderswan" ]; then
		echo "Created: /input/wonderswan"
	
	fi
	
	if [ ! -d "/input/wonderswancolor" ]; then
		echo "Created: /input/wonderswancolor"
	
	fi
	
	if [ ! -d "/input/x68000" ]; then
		echo "Created: /input/x68000"
	
	fi
	
	if [ ! -d "/input/zxspectrum" ]; then
		echo "Created: /input/zxspectrum"
	
	fi
	
	mkdir -p /input/megadrive
	mkdir -p /input/n64
	mkdir -p /input/snes
	mkdir -p /input/gb
	mkdir -p /input/gba
	mkdir -p /input/gbc
	mkdir -p /input/nes
	mkdir -p /input/pcengine
	mkdir -p /input/segacd
	mkdir -p /input/sega32x
	mkdir -p /input/mastersystem
	mkdir -p /input/psx
	mkdir -p /input/atarilynx
	mkdir -p /input/ngpc
	mkdir -p /input/gamegear
	mkdir -p /input/atarijaguar
	mkdir -p /input/nds
	mkdir -p /input/pokemini
	mkdir -p /input/atari2600
	mkdir -p /input/arcade
	mkdir -p /input/virtualboy
	mkdir -p /input/sg-1000
	mkdir -p /input/coleco
	mkdir -p /input/atari7800
	mkdir -p /input/atari5200
	mkdir -p /input/wonderswancolor
	mkdir -p /input/intellivision
	mkdir -p /input/vectrex
	mkdir -p /input/apple2
	mkdir -p /input/saturn
	mkdir -p /input/dreamcast
	mkdir -p /input/psp
	mkdir -p /input/msx
	mkdir -p /input/odyssey2
	mkdir -p /input/ngp
	mkdir -p /input/amstradcpc
	mkdir -p /input/wonderswan
	mkdir -p /input/tg16
	mkdir -p /input/x68000
	mkdir -p /input/zxspectrum
	mkdir -p /input/c64
	mkdir -p /input/amiga
	mkdir -p /input/atarist
	mkdir -p /input/msx2
	mkdir -p /input/channelf
	mkdir -p /input/neogeocd
	chmod 777 /input/*
	chown abc:abc /input/*
}

Process_Roms () {
	Region="$1"
	RegionGrep="$1"
	# Process ROMs with RAHasher
	if [ "$Region" = "Other" ]; then
		RegionGrep="."
	fi
	find /input/$folder -type f | grep -i "$RegionGrep" | sort -r | while read LINE;
	do
		Rom="$LINE"
		if [ -d "/tmp/rom_storage" ]; then
			rm -rf "/tmp/rom_storage"
		fi
		TMP_DIR="/tmp/rom_storage"
		mkdir -p "$TMP_DIR"
		rom="$Rom"

		RomFilename="${rom##*/}"
		RomExtension="${filename##*.}"

		log "$ConsoleName :: $RomFilename :: $Region :: Processing..."
		RaHash=""
		if [ "$SkipUnpackForHash" = "false" ]; then
			case "$rom" in
				*.zip|*.ZIP)
					uncompressed_rom="$TMP_DIR/$(unzip -Z1 "$rom" | head -1)"
					unzip -o -d "$TMP_DIR" "$rom" >/dev/null
					if [ "$SkipRahasher" = "false" ]; then
						RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$uncompressed_rom") || ret=1
					fi
					;;
				*.7z|*.7Z)
					uncompressed_rom="$TMP_DIR/$(7z l -slt "$rom" | sed -n 's/^Path = //p' | sed '2q;d')"
					7z e -y -bd -o"$TMP_DIR" "$rom" >/dev/null
					if [ "$SkipRahasher" = "false" ]; then
						RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$uncompressed_rom") || ret=1
					fi
					;;
				*.chd|*.CHD)
					if [ "$SkipRahasher" = "false" ]; then
						if [ "$folder" = "dreamcast" ]; then
							ExtractedExtension=gdi
						elif [ "$folder" = "segacd" ]; then
							ExtractedExtension=gdi
						else
							ExtractedExtension=cue
						fi
						log "$ConsoleName :: $RomFilename :: CHD Detected"
						log "$ConsoleName :: $RomFilename :: Extracting CHD for Hashing"
						chdman extractcd -i "$rom" -o "$TMP_DIR/game.$ExtractedExtension"
						RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$TMP_DIR/game.$ExtractedExtension") || ret=1
					fi
					;;
				*)
					if [ "$SkipRahasher" = "false" ]; then
						RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$rom") || ret=1
					fi
					;;
			esac

		    if [[ $ret -ne 0 ]]; then
				rm -f "$uncompressed_rom"
		    fi
		else
			RaHash=$(/usr/local/RALibretro/bin64/RAHasher $ConsoleId "$rom")
		fi

		
		if [ "$SkipRahasher" = "false" ]; then
			log "$ConsoleName :: $RomFilename :: Hash Found :: $RaHash"
			log "$ConsoleName :: $RomFilename :: Matching To RetroAchievements.org DB"
			if cat "/config/ra_hash_libraries/${ConsoleDirectory}_hashes.json" | jq -r .[] | grep -i "\"$RaHash\"" | read; then
				GameId=$(cat "/config/ra_hash_libraries/${ConsoleDirectory}_hashes.json" | jq -r .[] | grep -i "\"$RaHash\"" | cut -d ":" -f 2 | sed "s/\ //g" | sed "s/,//g")
				log "$ConsoleName :: $RomFilename :: Match Found :: Game ID :: $GameId"
				Skip="false"
				if [ "$DeDupe" = "true" ]; then
					if [ -f "/output/$ConsoleDirectory/$RomFilename" ]; then
						log "$ConsoleName :: $RomFilename :: Previously Imported, skipping..."
						Skip="true"
					elif [ -f "/config/logs/matched_games/$ConsoleDirectory/$GameId" ]; then
						log "$ConsoleName :: $RomFilename :: Duplicate Found, skipping..."
						Skip="true"
					fi
				else
					log "$ConsoleName :: DeDuping process disabled..."
				fi
				if [ "$Skip" = "false" ]; then
					if [ ! -d /output/$ConsoleDirectory ]; then
						log "$ConsoleName :: $RomFilename :: Creating Console Directory \"/output/$ConsoleDirectory\""
						mkdir -p /output/$ConsoleDirectory
						chmod 777 /output/$ConsoleDirectory
						chown abc:abc /output/$ConsoleDirectory
					fi
					if [ ! -f "/output/$ConsoleDirectory/$RomFilename" ]; then
						log "$ConsoleName :: $RomFilename :: Copying ROM to \"/output/$ConsoleDirectory\""
						cp "$rom" "/output/$ConsoleDirectory"/
					else
						log "$ConsoleName :: $RomFilename :: Previously Imported, skipping..."
					fi
				fi
				if [ ! -d "/config/logs/matched_games/$ConsoleDirectory" ]; then 
					mkdir -p "/config/logs/matched_games/$ConsoleDirectory"
					chown abc:abc "/config/logs/matched_games/$ConsoleDirectory"
				fi
				touch "/config/logs/matched_games/$ConsoleDirectory/$GameId"
			else
				log "$ConsoleName :: $RomFilename :: ERROR :: Not Found on RetroAchievements.org DB"
			fi
		else
			if [ ! -d /output/$ConsoleDirectory ]; then
				log "$ConsoleName :: $RomFilename :: Creating Console Directory \"/output/$ConsoleDirectory\""
				mkdir -p /output/$ConsoleDirectory
				chmod 777 /output/$ConsoleDirectory
				chown abc:abc /output/$ConsoleDirectory
			fi
			if [ ! -f "/output/$ConsoleDirectory/$RomFilename" ]; then
				log "$ConsoleName :: $RomFilename :: Copying ROM to \"/output/$ConsoleDirectory\""
				cp "$rom" "/output/$ConsoleDirectory"/
			else
				log "$ConsoleName :: $RomFilename :: Previously Imported, skipping..."
			fi
		fi
		# backup processed ROM to /backup
		# create backup directories/path that matches input path
		if [ ! -d "/backup/$(dirname "${Rom:7}")" ]; then
			log "$ConsoleName :: $RomFilename :: Creating Missing Backup Folder :: /backup/$(dirname "${Rom:7}")"
			mkdir -p "/backup/$(dirname "${Rom:7}")"
			chmod 777 "/backup/$(dirname "${Rom:7}")"
			chown abc:abc "/backup/$(dirname "${Rom:7}")"
		fi
		# copy ROM from /input to /backup
		if [ ! -f "/backup/${Rom:7}" ]; then
			log "$ConsoleName :: $RomFilename :: Backing up ROM to: /backup/$(dirname "${Rom:7}")"
			cp "$Rom" "/backup/${Rom:7}"
			chmod 666 "/backup/${Rom:7}"
			chown abc:abc "/backup/${Rom:7}"
		fi
		# remove ROM from input
		log "$ConsoleName :: $RomFilename :: Removing ROM from /input"
		rm "$Rom"
		
	done
}

for folder in $(ls /input); do
	ConsoleId=""
	ConsoleName=""
	ArchiveUrl=""
	SkipUnpackForHash="false"
	if echo "$folder" | grep "^amstradcpc$" | read; then
		ConsoleId=37
		ConsoleName="Amstrad CPC"
		ConsoleDirectory="amstradcpc"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Amstrad%20-%20CPC.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi
	
	if echo "$folder" | grep "^megadrive$" | read; then
		ConsoleId=1
		ConsoleName="Sega Mega Drive"
		ConsoleDirectory="megadrive"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega - Mega Drive - Genesis.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^n64$" | read; then
		ConsoleId=2
		ConsoleName="Nintendo 64"
		ConsoleDirectory="n64"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Nintendo 64.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^snes$" | read; then
		ConsoleId=3
		ConsoleName="Super Nintendo Entertainment System"
		ConsoleDirectory="snes"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Super Nintendo Entertainment System.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^gb$" | read; then
		ConsoleId=4
		ConsoleName="GameBoy"
		ConsoleDirectory="gb"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Game Boy.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^gba$" | read; then
		ConsoleId=5
		ConsoleName="GameBoy Advance"
		ConsoleDirectory="gba"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Game Boy Advance.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^gbc$" | read; then
		ConsoleId=6
		ConsoleName="GameBoy Color"
		ConsoleDirectory="gbc"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Game Boy Color.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^nes$" | read; then
		ConsoleId=7
		ConsoleName="Nintendo Entertainment System"
		ConsoleDirectory="nes"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Nintendo Entertainment System.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^pcengine$" | read; then
		ConsoleId=8
		ConsoleName="PC Engine"
		ConsoleDirectory="pcengine"
	fi

	if echo "$folder" | grep "^segacd$" | read; then
		ConsoleId=9
		ConsoleName="Sega CD"
		ConsoleDirectory="segacd"
		ArchiveUrl="$(curl -s "https://archive.org/download/chd_segacd/CHD-SegaCD-NTSC/" | grep ".chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_segacd/CHD-SegaCD-NTSC/|')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^sega32x$" | read; then
		ConsoleId=10
		ConsoleName="Sega 32X"
		ConsoleDirectory="sega32x"
		rchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega - 32X.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^mastersystem$" | read; then
		ConsoleId=11
		ConsoleName="Sega Master System"
		ConsoleDirectory="mastersystem"
		rchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega - Master System - Mark III.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^psx$" | read; then
		ConsoleId=12
		ConsoleName="PlayStation"
		ConsoleDirectory="psx"
		ArchiveUrl="$(curl -s "https://archive.org/download/chd_psx/CHD-PSX-USA/" | grep ".chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_psx/CHD-PSX-USA/|')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^atarilynx$" | read; then
		ConsoleId=13
		ConsoleName="Atari Lynx"
		ConsoleDirectory="atarilynx"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari - Lynx.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^ngpc$" | read; then
		ConsoleId=14
		ConsoleName="SNK Neo Geo Pocket Color"
		ConsoleDirectory="ngpc"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/SNK - Neo Geo Pocket Color.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^gamegear$" | read; then
		ConsoleId=15
		ConsoleName="Game Gear"
		ConsoleDirectory="gamegear"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega - Game Gear.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^atarijaguar$" | read; then
		ConsoleId=17
		ConsoleName="Atari Jaguar"
		ConsoleDirectory="atarijaguar"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari - Jaguar.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^nds" | read; then
		ConsoleId=18
		ConsoleName="Nintendo DS"
		ConsoleDirectory="nds"
		ArchiveUrl="$(curl -s "https://archive.org/download/noIntroNintendoDsDecrypted2020Jan20" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/noIntroNintendoDsDecrypted2020Jan20/|')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^pokemini" | read; then
		ConsoleId=24
		ConsoleName="Pokemon Mini"
		ConsoleDirectory="pokemini"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Pokemon Mini.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^atari2600$" | read; then
		ConsoleId=25
		ConsoleName="Atari 2600"
		ConsoleDirectory="atari2600"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari - 2600.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^atari5200$" | read; then
		ConsoleId=50
		ConsoleName="Atari 5200"
		ConsoleDirectory="atari5200"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari%20-%205200.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^arcade$" | read; then
		ConsoleId=27
		ConsoleName="Arcade"
		ConsoleDirectory="arcade"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/2020_01_06_fbn/roms/arcade.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		SkipUnpackForHash="true"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^virtualboy$" | read; then
		ConsoleId=28
		ConsoleName="VirtualBoy"
		ConsoleDirectory="virtualboy"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Virtual Boy.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^sg-1000$" | read; then
		ConsoleId=33
		ConsoleName="SG-1000"
		ConsoleDirectory="sg-1000"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega - SG-1000.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^coleco$" | read; then
		ConsoleId=44
		ConsoleName="ColecoVision"
		ConsoleDirectory="coleco"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Coleco - ColecoVision.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^atari7800$" | read; then
		ConsoleId=51
		ConsoleName="Atari 7800"
		ConsoleDirectory="atari7800"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari - Jaguar.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		ArchiveUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari - 7800.zip"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^wonderswan$" | read; then
		ConsoleId=53
		ConsoleName="WonderSwan"
		ConsoleDirectory="wonderswan"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Bandai - WonderSwan.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi	
	
	if echo "$folder" | grep "^wonderswancolor$" | read; then
		ConsoleId=53
		ConsoleName="WonderSwan"
		ConsoleDirectory="wonderswancolor"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Bandai - WonderSwan Color.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^intellivision$" | read; then
		ConsoleId=45
		ConsoleName="Intellivision"
		ConsoleDirectory="intellivision"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Mattel - Intellivision.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^vectrex$" | read; then
		ConsoleId=46
		ConsoleName="Vectrex"
		ConsoleDirectory="vectrex"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/GCE - Vectrex.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^apple2$" | read; then
		ConsoleId=38
		ConsoleName="Apple II"
		ConsoleDirectory="apple2"
	fi

	if echo "$folder" | grep "^saturn$" | read; then
		ConsoleId=39
		ConsoleName="Sega Saturn"
		ConsoleDirectory="saturn"
		ArchiveUrl="$(curl -s "https://archive.org/download/chd_saturn/CHD-Saturn/USA/" | grep ".chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_saturn/CHD-Saturn/USA/|')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^dreamcast$" | read; then
		ConsoleId=40
		ConsoleName="Sega Dreamcast"
		ConsoleDirectory="dreamcast"
		ArchiveUrl="$(curl -s "https://archive.org/download/chd_dc/CHD-DC/" | grep ".chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_dc/CHD-DC/|')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^psp$" | read; then
		ConsoleId=41
		ConsoleName="PlayStation Portable"
		ConsoleDirectory="psp"
		ArchiveUrl="$(curl -s "https://archive.org/download/PSP_US_Arquivista" | grep ".chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/PSP_US_Arquivista|')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^msx$" | read; then
		ConsoleId=29
		ConsoleName="MSX"
		ConsoleDirectory="msx"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Microsoft - MSX.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^odyssey2$" | read; then
		ConsoleId=23
		ConsoleName="Magnavox Odyssey 2"
		ConsoleDirectory="odyssey2"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Magnavox - Odyssey2.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^ngp$" | read; then
		ConsoleId=14
		ConsoleName="SNK Neo Geo Pocket"
		ConsoleDirectory="ngp"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/SNK - Neo Geo Pocket.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi	
	
	if echo "$folder" | grep "^tg16$" | read; then
		ConsoleId=8
		ConsoleName="NEC TurboGrafx-16"
		ConsoleDirectory="tg16"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/NEC - PC Engine - TurboGrafx 16.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi
	
	if echo "$folder" | grep "^x68000$" | read; then
		ConsoleId=52
		ConsoleName="Sharp X68000"
		ConsoleDirectory="x68000"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sharp%20-%20X68000.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^zxspectrum$" | read; then
		ConsoleId=59
		ConsoleName="ZX Spectrum"
		ConsoleDirectory="zxspectrum"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sinclair%20-%20ZX%20Spectrum.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^c64$" | read; then
		ConsoleId=30
		ConsoleName="Commodore 64"
		ConsoleDirectory="c64"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Commodore%20-%2064.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^amiga$" | read; then
		ConsoleId=35
		ConsoleName="Amiga"
		ConsoleDirectory="amiga"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Commodore%20-%20Amiga.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi
	
	if echo "$folder" | grep "^atarist$" | read; then
		ConsoleId=36
		ConsoleName="Atari ST"
		ConsoleDirectory="atarist"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari%20-%20ST.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^msx2$" | read; then
		ConsoleId=29
		ConsoleName="MSX2"
		ConsoleDirectory="msx2"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Microsoft%20-%20MSX2.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^channelf$" | read; then
		ConsoleId=57
		ConsoleName="Fairchild Channel F"
		ConsoleDirectory="channelf"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Fairchild%20-%20Channel%20F.zip/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=true
	fi

	if echo "$folder" | grep "^neogeocd$" | read; then
		ConsoleId=56
		ConsoleName="Neo Geo CD"
		ConsoleDirectory="neogeocd"
		ArchiveUrl="$(wget -q -O - "https://archive.org/download/perfectromcollection/NEOGEO.rar/" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sort -u | sed 's%//archive.org%https://archive.org%g')"
		keepCompressed=false
	fi
	
	if [ "$AquireRomSets" = "true" ]; then
		log "$ConsoleName :: Getting ROMs"
		if [ ! -z "$ArchiveUrl" ]; then
			
			log "$ConsoleName :: Downloading ROMs :: Please wait..."
			
			DlCount="$(echo "$ArchiveUrl" | wc -l)"
			OLDIFS="$IFS"
			IFS=$'\n'
			ArchiveUrls=($(echo "$ArchiveUrl"))
			IFS="$OLDIFS"
			for Url in ${!ArchiveUrls[@]}; do
				currentsubprocessid=$(( $Url + 1 ))
				DlUrl="${ArchiveUrls[$Url]}"
				romFile="$(echo $(basename "$DlUrl") | sed -e "s/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g" | xargs -0 echo -e)"
				romFile="$(echo $(basename "$romFile"))"
				romFileNoExt="$(echo "${romFile%.*}")"
				DownloadOutput="/input/$folder/temp/$romFile"
				
				if [ -d "/input/$folder/temp/" ]; then
					rm -rf "/input/$folder/temp/"
				fi				
												
				if [ -f "/config/logs/downloaded/$folder/$romFileNoExt" ]; then
					log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: ROM previously downloaded (/config/logs/downloaded/$folder/$romFileNoExt) :: Skipping..."
					continue
				elif [ -f "/input/$folder/$romFile" ]; then
					log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: ROM previously downloaded (/input/$folder/$romFile) :: Skipping..."
					continue
				elif [ -f "/output/$folder/$romFile" ]; then
					log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: ROM previously downloaded (/output/$folder/$romFile) :: Skipping..."
					continue
				elif [ -f "/backup/$folder/$romFile" ]; then
					log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: ROM previously downloaded (/backup/$folder/$romFile) :: Skipping..."
					continue
				fi 
				
				case "$DlUrl" in
					*.zip|*.ZIP)
						Type=zip
						;;
					*.rar|*.RAR)
						Type=rar
						;;
					*.chd|*.CHD)
						Type=chd
						;;
				esac
				
				log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Downloading..."
			
				if [ -d /input/$folder/temp ]; then
					rm -rf /input/$folder/temp
				fi
				mkdir -p /input/$folder/temp
				axel -q -n $ConcurrentDownloadThreads --output="$DownloadOutput" "$DlUrl"
			
				if [ -f "$DownloadOutput" ]; then
					if [ "$Type" = "zip" ]; then
						DownloadVerification="$(unzip -t "$DownloadOutput" &>/dev/null; echo $?)"
					elif [ "$Type" = "rar" ]; then
						DownloadVerification="$(unrar t "$DownloadOutput" &>/dev/null; echo $?)"
					elif [ "$Type" = "chd" ]; then
						DownloadVerification="$(chdman verify -i "$DownloadOutput" &>/dev/null; echo $?)"
					fi
					if [ "$DownloadVerification" = "0" ]; then
						log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Download Complete!"
						if [ "$Type" = "zip" ]; then
							if [ $keepCompressed = false ]; then
								log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Unpacking to /input/$folder"
								unzip -o -d "/input/$folder" "$DownloadOutput" >/dev/null
							else
								log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Moving to /input/$folder"
								mv "$DownloadOutput" "/input/$folder"
							fi
						elif [ "$Type" = "rar" ]; then
							if [ $keepCompressed = false ]; then
								log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Unpacking to /input/$folder"
								unrar x "$DownloadOutput" "/input/$folder" &>/dev/null
							else
								log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Moving to /input/$folder"
								mv "$DownloadOutput" "/input/$folder"
							fi
						elif [ "$Type" = "chd" ]; then
							log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Moving to /input/$folder"
							mv "$DownloadOutput" "/input/$folder"
						fi
						log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Done!"
						if [ ! -d /config/logs/downloaded ]; then
							mkdir -p /config/logs/downloaded
							chown abc:abc /config/logs/downloaded
						fi
						if [ -f /config/logs/downloaded/$folder ]; then
							rm /config/logs/downloaded/$folder
						fi
						if [ ! -d /config/logs/downloaded/$folder ]; then
							mkdir /config/logs/downloaded/$folder
							chmod 777 /config/logs/downloaded/$folder
							chown abc:abc /config/logs/downloaded/$folder
						fi
						if [ -d /input/$folder/temp ]; then
							rm -rf /input/$folder/temp
						fi
						touch "/config/logs/downloaded/$folder/$romFileNoExt"
						chmod 666 "/config/logs/downloaded/$folder/$romFileNoExt"
						chown abc:abc "/config/logs/downloaded/$folder/$romFileNoExt"
					else
						log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Download Failed!"
						if [ -d /input/$folder/temp ]; then
							rm -rf /input/$folder/temp
						fi
						continue
					fi
				else
					log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Download Failed!"
					if [ -d /input/$folder/temp ]; then
						rm -rf /input/$folder/temp
					fi
					continue
				fi
			done
		fi
	else
		log "$ConsoleName :: ERROR :: No Archive.org URL found :: Skipping..."
	fi


	if find /input/$folder -type f | read; then
		log "$ConsoleName :: Checking For ROMS in /input/$folder :: ROMs found, processing..."

		# create hash library folder
		if [ ! -d /config/ra_hash_libraries ]; then
			mkdir -p /config/ra_hash_libraries
		fi	
		
		# delete existing console hash library
		if [ -f "/config/ra_hash_libraries/${ConsoleDirectory}_hashes.json" ]; then
			rm "/config/ra_hash_libraries/${ConsoleDirectory}_hashes.json"
		fi
		
		# aquire console hash library
		if [ ! -f "/config/ra_hash_libraries/${ConsoleDirectory}_hashes.json" ]; then
			log "$ConsoleName :: Getting the console hash library from RetroAchievements.org..."
			curl -s "https://retroachievements.org/dorequest.php?r=hashlibrary&c=$ConsoleId" | jq '.' > "/config/ra_hash_libraries/${ConsoleDirectory}_hashes.json"
		fi

		SkipRahasher=false
		if cat "/config/ra_hash_libraries/${ConsoleDirectory}_hashes.json" | grep -i '"MD5List": \[\]' | read; then
			log "$ConsoleName :: Unsupported RA platform detected"
			if [ "$EnableUnsupportedPlatforms" = "false" ]; then
				log "$ConsoleName :: Enable Unsupported RA platforms disalbed :: Skipping... "
				continue
			else
				log "$ConsoleName :: Begin Processing Unsupported RA platform..."
				SkipRahasher=true
			fi
		fi

		Process_Roms USA
		Process_Roms Europe
		Process_Roms World
		Process_Roms Japan
		Process_Roms Other
		
		# remove empty directories
		find /input/$folder -mindepth 1 -type d -empty -exec rm -rf {} \; &>/dev/null

	else
		log "$ConsoleName :: Checking For ROMS in /input/$folder :: No ROMs found, skipping..."
	fi

	
	if [ "$ScrapeMetadata" = "true" ]; then
		if Skyscraper | grep -w "$folder" | read; then
			log "$ConsoleName :: Begin Skyscraper Process..."
			if [ ! -d /output/$folder ]; then
				log "$ConsoleName :: Checking For ROMS in /output/$folder :: No ROMs found, skipping..."
				continue
			fi
			if find /output/$folder -type f | read; then
				log "$ConsoleName :: Checking For ROMS in /ouput/$folder :: ROMs found, processing..."
			else
				log "$ConsoleName :: Checking For ROMS in /output/$folder :: No ROMs found, skipping..."
				continue
			fi
			# Scrape from screenscraper
			if [ "$SkipUnpackForHash" = "false" ]; then
				Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper --lang $skyscraperLanguagePreference -i /output/$folder --flags relative,videos,unattend,nobrackets,unpack
			else
				Skyscraper -f emulationstation -u $ScreenscraperUsername:$ScreenscraperPassword -p $folder -d /cache/$folder -s screenscraper --lang $skyscraperLanguagePreference -i /output/$folder --flags relative,videos,unattend,nobrackets
			fi
			# Save scraped data to output folder
			Skyscraper -f emulationstation -p $folder -d /cache/$folder -i /output/$folder --flags relative,videos,unattend,nobrackets
			# Remove skipped roms
			if [ -f /root/.skyscraper/skipped-$folder-cache.txt ]; then
				cat /root/.skyscraper/skipped-$folder-cache.txt | while read LINE;
				do 
					rm "$LINE"
				done
			fi
		else 
			log "$ConsoleName :: Metadata Scraping :: ERROR :: Platform not supported, skipping..."
		fi 
	else
		log "$ConsoleName :: Metadata Scraping disabled..."
		log "$ConsoleName :: Enable by setting \"ScrapeMetadata=true\""
	fi
	
	# set permissions
	find /output/$folder -type d -exec chmod 777 {} \;
	find /output/$folder -type d -exec chown abc:abc {} \;
	find /output/$folder -type f -exec chmod 666 {} \;
	find /output/$folder -type f -exec chown abc:abc {} \;
	find /backup/$folder -type d -exec chmod 777 {} \;
	find /backup/$folder -type d -exec chown abc:abc {} \;
	find /backup/$folder -type f -exec chmod 666 {} \;
	find /backup/$folder -type f -exec chown abc:abc {} \;
done
exit $?
