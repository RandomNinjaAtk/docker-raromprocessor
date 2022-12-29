consoleName="PC-FX"
consoleFolder="pcfx"
consoleRomFileExt=".cue, .ccd, .toc, .chd, .zip, .7z"
raConsoleId="49"
uncompressRom="false"
compressRom="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/PCFXCHD_Arquivista/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.chd" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
