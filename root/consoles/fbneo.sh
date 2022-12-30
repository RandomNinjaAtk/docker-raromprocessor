consoleName="FinalBurn Neo (Arcade)"
consoleFolder="fbneo"
consoleRomFileExt=".zip, .7z"
raConsoleId="27"
uncompressRom="false"
compressRom="false"
downloadAll="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/2020_01_06_fbn/roms/arcade.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
