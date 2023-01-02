consoleName="GameBoy Color"
consoleFolder="gbc"
consoleRomFileExt=".gbc, .zip, .7z"
raConsoleId="6"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="gbc"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.gbc/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
