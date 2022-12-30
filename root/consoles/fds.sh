consoleName="Family Computer Disk System"
consoleFolder="fds"
consoleRomFileExt=".fds, .zip, .7z"
raConsoleId="7"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="fds"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.fds/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
