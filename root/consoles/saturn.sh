consoleName="Sega Saturn"
consoleFolder="saturn"
consoleRomFileExt=".cue, .ccd, .m3u, .chd, .iso, .zip"
raConsoleId="39"
uncompressRom="false"
compressRom="false"
skyscraperPlatform="saturn"
downloadAll="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/chd_saturn/CHD-Saturn/USA/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.chd" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
