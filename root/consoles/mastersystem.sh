consoleName="Sega Master System"
consoleFolder="mastersystem"
consoleRomFileExt=".bin, .sms, .zip, .7z"
raConsoleId="11"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="mastersystem"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.ms-mkiii/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
