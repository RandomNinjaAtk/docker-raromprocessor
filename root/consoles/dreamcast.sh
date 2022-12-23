consoleName="Sega Dreamcast"
consoleFolder="dreamcast"
consoleRomFileExt=".cdi, .cue, .gdi, .chd, .m3u"
raConsoleId="40"
uncompressRom="false"
compressRom="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/chd_dc/CHD-Dreamcast/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.chd" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
