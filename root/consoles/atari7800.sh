consoleName="Atari 7800"
consoleFolder="atari7800"
consoleRomFileExt=".a78, .bin, .zip, .7z"
raConsoleId="51"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="atari7800"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.atari-7800/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
