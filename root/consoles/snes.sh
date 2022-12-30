consoleName="Super Nintendo Entertainment System"
consoleFolder="snes"
consoleRomFileExt=".smc, .fig, .sfc, .gd3, .gd7, .dx2, .bsx, .swc, .zip, .7z"
raConsoleId="3"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/nointro.snes/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
