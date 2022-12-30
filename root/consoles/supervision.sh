consoleName="Watara Supervision"
consoleFolder="supervision"
consoleRomFileExt=".sv, .zip, .7z"
raConsoleId="63"
uncompressRom="false"
compressRom="false"
skyscraperPlatform="unsupported"
downloadAll="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/WataraSupervision_201809/ROMS.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
