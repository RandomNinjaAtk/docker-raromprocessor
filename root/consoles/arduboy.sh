consoleName="Arduboy"
consoleFolder="arduboy"
consoleRomFileExt=".hex, .zip, .7z"
raConsoleId="71"
uncompressRom="false"
compressRom="true"
skyscraperPlatform="unsupported"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/ArduboyRoms/Arduboy/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.hex" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
