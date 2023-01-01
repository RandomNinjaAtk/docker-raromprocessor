consoleName="Game Gear"
consoleFolder="gamegear"
consoleRomFileExt=".bin, .gg, .zip, .7z"
raConsoleId="15"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="gamegear"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.gg/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
