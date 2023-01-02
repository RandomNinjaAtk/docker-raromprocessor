consoleName="Atari 5200"
consoleFolder="atari5200"
consoleRomFileExt=".rom, .xfd, .atr, .atx, .cdm, .cas, .car, .bin, .a52, .xex, .zip, .7z"
raConsoleId="50"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="atari5200"
downloadAll="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.atari-5200/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
