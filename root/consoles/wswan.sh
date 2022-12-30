consoleName="WonderSwan"
consoleFolder="wswan"
consoleRomFileExt=".ws, .zip, .7z"
raConsoleId="53"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="wonderswan"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Bandai - WonderSwan.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
