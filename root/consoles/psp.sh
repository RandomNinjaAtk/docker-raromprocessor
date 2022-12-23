consoleName="Sony PlayStation Portable"
consoleFolder="psp"
consoleRomFileExt=".iso, .cso, .pbp"
raConsoleId="41"
uncompressRom="false"
compressRom="false"

# Create URL List
if [ -f templist ]; then
    rm templist
fi
archiveContentsUrl="https://archive.org/download/psp_20220507/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.cso" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
echo "$archiveUrl" >> templist
archiveContentsUrl="https://archive.org/download/psp_20220507_2"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.cso" |  grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$archiveContentsUrl|")"
echo "$archiveUrl" >> templist
archiveUrl=$(cat templist)
if [ -f templist ]; then
    rm templist
fi
