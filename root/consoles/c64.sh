consoleName="Commodore 64"
consoleFolder="c64"
consoleRomFileExt=".d64, .d81, .crt, .prg, .tap, .t64, .m3u, .zip, .7z"
raConsoleId="30"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Commodore%20-%2064.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
