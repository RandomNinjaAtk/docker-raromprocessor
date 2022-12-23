consoleName="Sony PlayStation Portable"
consoleFolder="psp"
consoleRomFileExt=".iso, .cso, .pbp"
raConsoleId="41"
uncompressRom="true"
compressRom="false"

# Create URL List

archiveContentsUrl="https://archive.org/download/non-redump_sony_playstation_portable/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.zip" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
