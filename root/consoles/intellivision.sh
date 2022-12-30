consoleName="Intellivision"
consoleFolder="intellivision"
consoleRomFileExt=".int, .bin, .rom, .zip, .7z"
raConsoleId="45"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="intellivision"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Mattel - Intellivision.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
