consoleName="PlayStation"
consoleFolder="psx"
consoleRomFileExt=".bin .cue .img .mdf .pbp .toc .cbn .m3u .ccd .chd"
raConsoleId="12"
uncompressRom="false"
compressRom="false"

# Create URL List
if [ -f templist ]; then
    rm templist
fi
archiveUrl="$(curl -s "https://archive.org/download/chd_psx/CHD-PSX-USA/" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_psx/CHD-PSX-USA/|')"
echo "$archiveUrl" >> templist
archiveUrl="$(curl -s "https://archive.org/download/chd_psx_eur/CHD-PSX-EUR/" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_psx_eur/CHD-PSX-EUR/|')"
echo "$archiveUrl" >> templist
archiveUrl="$(curl -s "https://archive.org/download/chd_psx_jap/CHD-PSX-JAP/" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_psx_jap/CHD-PSX-JAP/|')"
echo "$archiveUrl" >> templist
archiveUrl="$(curl -s "https://archive.org/download/chd_psx_jap_p2/CHD-PSX-JAP/" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed 's|^|https://archive.org/download/chd_psx_jap_p2/CHD-PSX-JAP/|')"
echo "$archiveUrl" >> templist
archiveUrl=$(cat templist)
if [ -f templist ]; then
    rm templist
fi
