consoleName="PC Engine/TurboGrafx-16"
consoleFolder="pcengine"
consoleRomFileExt=".pce, .bin, .zip, .7z"
raConsoleId="8"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="pcengine"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/NEC - PC Engine - TurboGrafx 16.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
