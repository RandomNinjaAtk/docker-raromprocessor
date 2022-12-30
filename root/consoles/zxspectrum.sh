consoleName="ZXSpectrum"
consoleFolder="zxspectrum"
consoleRomFileExt=".tzx, .tap, .z80, .rzx, .scl, .trd, .zip, .7"
raConsoleId="59"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="zxspectrum"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Sinclair%20-%20ZX%20Spectrum.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
