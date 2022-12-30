consoleName="GameBoy Advance"
consoleFolder="gba"
consoleRomFileExt=".gba, .zip, .7z"
raConsoleId="5"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="gba"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Game Boy Advance.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
