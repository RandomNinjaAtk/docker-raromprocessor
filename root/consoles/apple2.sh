consoleName="Apple II"
consoleFolder="apple2"
consoleRomFileExt=".nib, .do, .po, .dsk, .mfi, .dfi, .rti, .edd, .woz, .wav, .zip, .7z"
raConsoleId="38"
uncompressRom="false"
compressRom="false"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/retroachievements-rom-collection/Apple%20-%20II.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
