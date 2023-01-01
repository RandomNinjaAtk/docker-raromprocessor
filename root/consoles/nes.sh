consoleName="Nintendo Entertainment System"
consoleFolder="nes"
consoleRomFileExt=".nes, .unif, .unf, .zip, .7z"
raConsoleId="7"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="nes"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.nes-headered/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
