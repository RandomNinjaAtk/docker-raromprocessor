consoleName="GameBoy Advance"
consoleFolder="gba"
consoleRomFileExt=".gba, .zip, .7z"
raConsoleId="5"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="gba"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.gba/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
