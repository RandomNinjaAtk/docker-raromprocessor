consoleName="Atari 5200"
consoleFolder="atari5200"
consoleRomFileExt=".rom, .xfd, .atr, .atx, .cdm, .cas, .car, .bin, .a52, .xex, .zip, .7z"
raConsoleId="50"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Atari%20-%205200.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
