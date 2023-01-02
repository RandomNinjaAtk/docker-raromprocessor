consoleName="Pokemon Mini"
consoleFolder="pokemini"
consoleRomFileExt=".min, .zip, .7z"
raConsoleId="24"
uncompressRom="true"
compressRom="false"
skyscraperPlatform="pokemini"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.poke-mini/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
