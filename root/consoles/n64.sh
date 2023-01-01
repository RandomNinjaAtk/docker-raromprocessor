consoleName="Nintendo 64"
consoleFolder="n64"
consoleRomFileExt=".z64, .n64, .v64, .zip, .7z"
raConsoleId="2"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="n64"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/no-intro-nintendo-nintendo64-20170110/No-Intro%20-%20Nintendo%20-%20Nintendo%2064%20%282017-01-10%29.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
