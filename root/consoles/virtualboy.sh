consoleName="VirtualBoy"
consoleFolder="virtualboy"
consoleRomFileExt=".vb, .zip, .7z"
raConsoleId="28"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="virtualboy"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.vb/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
