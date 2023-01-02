consoleName="Atari 2600"
consoleFolder="atari2600"
consoleRomFileExt=".a26, .bin, .zip, .7z"
raConsoleId="25"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="atari2600"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.atari-2600/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
