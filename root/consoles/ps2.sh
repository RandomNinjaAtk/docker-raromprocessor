consoleName="PlayStation 2"
consoleFolder="ps2"
consoleRomFileExt=".iso, .mdf, .nrg, .bin, .img, .dump, .gz, .cso, .chd"
raConsoleId="21"
uncompressRom="false"
compressRom="false"

# Create URL List
archiveUrl="$(curl -s "https://archive.org/download/ps2-redump-usa-chd-part-A/" | grep ".chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_psx/CHD-PSX-USA/|')"
echo "$archiveUrl" >> templist
archiveUrl=$(cat templist)
rm templist
