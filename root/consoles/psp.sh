consoleName="Sony PlayStation Portable"
consoleFolder="psp"
consoleRomFileExt=".iso, .cso, .pbp"
raConsoleId="41"
uncompressRom="false"
compressRom="false"

# Create URL List

archiveContentsUrl="https://archive.org/download/psp-redump-roms321.com/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.7z" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
