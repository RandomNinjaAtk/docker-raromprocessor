consoleName="Super Nintendo Entertainment System"
consoleFolder="snes"
consoleRomFileExt=".smc, .fig, .sfc, .gd3, .gd7, .dx2, .bsx, .swc, .zip, .7z"
raConsoleId="3"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
