consoleName="Sega CD"
consoleFolder="segacd"
consoleRomFileExt=".cue, .iso, .chd, .m3u"
raConsoleId="9"
uncompressRom="false"
compressRom="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/SEGACD_CHD_PLUS/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
