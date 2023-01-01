consoleName="Sega Mega Drive"
consoleFolder="megadrive"
consoleRomFileExt=".bin, .gen, .md, .sg, .smd, .zip, .7z"
raConsoleId="1"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="megadrive"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/sega-mega-drive-genesis-no-intro/Sega%20Mega%20Drive%20%28No-Intro%29.rar/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
