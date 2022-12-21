consoleName="PlayStation 2"
consoleFolder="ps2"
consoleRomFileExt=".iso, .mdf, .nrg, .bin, .img, .dump, .gz, .cso, .chd"
raConsoleId="21"
uncompressRom="false"
compressRom="false"

# Create URL List
if [ -f templist ]; then
    rm templist
fi
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-A/"
archiveUrl="$(curl -s "$baseUrl" | grep ".chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist
archiveUrl=$(cat templist)

if [ -f templist ]; then
    rm templist
fi
