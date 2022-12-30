consoleName="SG-1000"
consoleFolder="sg1000"
consoleRomFileExt=".bin, .sg, .zip, .7z"
raConsoleId="33"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="sg-1000"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sega - SG-1000.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
