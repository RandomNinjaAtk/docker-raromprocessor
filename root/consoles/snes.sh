consoleName="Super Nintendo Entertainment System"
consoleFolder="snes"
consoleRomFileExt=".smc, .fig, .sfc, .gd3, .gd7, .dx2, .bsx, .swc, .zip, .7z"
raConsoleId="3"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="snes"
downloadAll="true"

# Create URL List
if [ -f templist ]; then
    rm templist
fi

archiveContentsUrl="https://archive.org/download/nointro.snes/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
echo "$archiveUrl" >> templist
archiveContentsUrl="https://archive.org/download/retroachievements-rom-collection/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
echo "$archiveUrl" >> templist
archiveUrl=$(cat templist)

if [ -f templist ]; then
    rm templist
fi
