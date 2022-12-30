consoleName="Pokemon Mini"
consoleFolder="pokemini"
consoleRomFileExt=".min, .zip, .7z"
raConsoleId="24"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="pokemini"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo - Pokemon Mini.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
