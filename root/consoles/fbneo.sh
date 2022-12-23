consoleName="FinalBurn Neo (Arcade)"
consoleFolder="fbneo"
consoleRomFileExt=".zip, .7z"
raConsoleId="27"
uncompressRom="false"
compressRom="false"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/retroachievements-rom-collection/FBNeo%20-%20Arcade%20Games.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.zip" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
