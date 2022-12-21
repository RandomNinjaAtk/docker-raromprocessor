consoleName="GameBoy"
consoleFolder="gb"
consoleRomFileExt=".gb, .zip, .7z"
raConsoleId="4"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Game%20Boy.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
