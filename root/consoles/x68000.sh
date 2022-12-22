consoleName="Sharp X68000"
consoleFolder="x68000"
consoleRomFileExt=".dim, .img, .d88, .88d, .hdm, .dup, .2hd, .xdf, .hdf, .cmd, .m3u, .zip, .7z"
raConsoleId="52"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sharp%20-%20X68000.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
