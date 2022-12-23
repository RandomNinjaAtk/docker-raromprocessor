consoleName="3DO Interactive Multiplayer"
consoleFolder="3do"
consoleRomFileExt=".iso, .chd, .cue"
raConsoleId="43"
uncompressRom="false"
compressRom="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/chd_3do/CHD-3DO/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.chd" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
