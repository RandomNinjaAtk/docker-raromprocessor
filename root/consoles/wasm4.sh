consoleName="WASM-4"
consoleFolder="wasm4"
consoleRomFileExt=".wasm"
raConsoleId="72"
uncompressRom="false"
compressRom="false"

# Create URL List
archiveContentsUrl="https://archive.org/download/wasm-4-complete-archive-emulator/WASM-4%20Complete%20Archive%20%2B%20Emulator.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -i "\.wasm" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
