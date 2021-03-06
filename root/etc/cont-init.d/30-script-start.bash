#!/usr/bin/with-contenv bash
echo "Setting Up ROM /input directories"
echo "Created: /input/megadrive"
echo "Created: /input/n64"
echo "Created: /input/snes"
echo "Created: /input/gb"
echo "Created: /input/gba"
echo "Created: /input/gbc"
echo "Created: /input/nes"
echo "Created: /input/pcengine"
echo "Created: /input/segacd"
echo "Created: /input/sega32x"
echo "Created: /input/mastersystem"
echo "Created: /input/psx"
echo "Created: /input/atarilynx"
echo "Created: /input/ngpc"
echo "Created: /input/gamegear"
echo "Created: /input/atarijaguar"
echo "Created: /input/nds"
echo "Created: /input/pokemini"
echo "Created: /input/atari2600"
echo "Created: /input/atari5200"
echo "Created: /input/arcade"
echo "Created: /input/virtualboy"
echo "Created: /input/sg-1000"
echo "Created: /input/coleco"
echo "Created: /input/atari7800"
echo "Created: /input/wonderswancolor"
echo "Created: /input/intellivision"
echo "Created: /input/vectrex"
echo "Created: /input/apple2"
echo "Created: /input/saturn"
echo "Created: /input/dreamcast"
echo "Created: /input/psp"
echo "Created: /input/msx"
echo "Created: /input/odyssey2"
echo "Created: /input/ngp"
echo "Created: /input/amstradcpc"
echo "Created: /input/wonderswan"
echo "Created: /input/tg16"
echo "Created: /input/x68000"
echo "Created: /input/zxspectrum"
echo "Created: /input/c64"
echo "Created: /input/amiga"
echo "Created: /input/atarist"
echo "Created: /input/msx2"
echo "Created: input/channelf"
echo "Created: /input/neogeocd"
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

if [ "$AutoStart" = "true" ]; then
	echo "Automatic Start Enabled, starting..."
	for (( ; ; )); do
		let i++
		bash /scripts/script.sh
		# bash /scripts/scrape.sh
		echo "Now sleeping for $ScriptInterval..."
		sleep $ScriptInterval
	done
else
	echo "Automatic Start Disabled, manually run using this command:"
	echo "bash /scripts/script.sh"
fi

exit $?
