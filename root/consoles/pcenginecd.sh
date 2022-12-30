consoleName="PC Engine CD"
consoleFolder="pcenginecd"
consoleRomFileExt=".pce, .cue, .ccd, .iso, .img, .chd"
raConsoleId="76"
uncompressRom="false"
compressRom="false"
skyscraperPlatform="pcenginecd"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/redump-nec-pc-engine-cd-turbografx-cd-2021-06-06/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.chd" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
