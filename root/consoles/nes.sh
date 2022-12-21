consoleName="Nintendo Entertainment System"
consoleFolder="nes"
consoleRomFileExt=".nes, .unif, .unf, .zip, .7z"
raConsoleId="7"
uncompressRom="true"
compressRom="true"
raGameList="$(wget -qO- "https://retroachievements.org/API/API_GetGameList.php?z=${raUsername}&y=${raWebApiKey}&i=$raConsoleId")"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Nintendo%20Entertainment%20System.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
