consoleName="Amstrad CPC"
consoleFolder="amstradcpc"
consoleRomFileExt=".dsk, .sna, .tap, .cdt, .voc, .m3u, .zip, .7z"
raConsoleId="37"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Amstrad - CPC.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
