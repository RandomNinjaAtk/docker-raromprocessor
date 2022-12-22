consoleName="Nintendo DS"
consoleFolder="nds"
consoleRomFileExt=".nds, .bin, .zip, .7z"
raConsoleId="18"
uncompressRom="true"
compressRom="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/noIntroNintendoDsDecrypted2020Jan20/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep ".zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
