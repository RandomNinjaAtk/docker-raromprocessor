consoleName="Nintendo DS"
consoleFolder="nds"
consoleRomFileExt=".nds, .bin, .zip, .7z"
raConsoleId="18"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/noIntroNintendoDsDecrypted2020Jan20/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.zip" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/noIntroNintendoDsDecrypted2020Jan20/|')"
