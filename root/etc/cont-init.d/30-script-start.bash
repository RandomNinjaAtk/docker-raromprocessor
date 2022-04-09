#!/usr/bin/with-contenv bash
echo "Setting Up ROM /ipnut directories"
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
echo "Created: /input/ngp"
echo "Created: /input/gamegear"
echo "Created: /input/atarijaguar"
echo "Created: /input/nds"
echo "Created: /input/pokemini"
echo "Created: /input/atari2600"
echo "Created: /input/arcade"
echo "Created: /input/virtualboy"
echo "Created: /input/sg-1000"
echo "Created: /input/coleco"
echo "Created: /input/atari7800"
echo "Created: /input/wonderswan"
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
mkdir -p /input/ngp
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
mkdir -p /input/wonderswan
chmod 777 /input/*


if [ "$AutoStart" = "true" ]; then
	echo "Automatic Start Enabled, starting..."
	for (( ; ; )); do
		let i++
		bash /scripts/import.sh
		bash /scripts/scrape.sh
		echo "Now sleeping for $ScriptInterval..."
		sleep $ScriptInterval
	done
else
	echo "Automatic Start Disabled, manually run using this command:"
	echo "bash /scripts/import.sh"
	echo "bash /scripts/scrape.sh"
fi

exit $?
