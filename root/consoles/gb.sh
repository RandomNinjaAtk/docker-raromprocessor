consoleName="GameBoy"
consoleFolder="gb"
consoleRomFileExt=".gb, .zip, .7z"
raConsoleId="4"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="gb"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.gb/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
