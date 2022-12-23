consoleName="NEC PC-8800"
consoleFolder="pc88"
consoleRomFileExt=".d88, .u88, .m3u"
raConsoleId="47"
uncompressRom="true"
compressRom="false"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/retroachievements-rom-collection/NEC%20-%20PC-FX.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
