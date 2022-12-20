#!/usr/bin/env bash
scriptVersion="2"

######### LOGGING

# auto-clean up log file to reduce space usage
if [ -f "/config/log.txt" ]; then
  find /config/logs -type f -name "/config/log.txt" -size +1024k -delete
fi

touch "/config/log.txt"
exec &> >(tee -a "/config/log.txt")

######### FUNCTIONS

Log () {
  m_time=`date "+%F %T"`
  echo $m_time" :: RA-Rom-Processor :: $scriptVersion :: "$1
}

DownloadFile () {
  # $1 = URL
  # $2 = Output Folder/file
  # #3 = Number of concurrent connections to use
  Log "Downloading :: $1"
  axel -q -n $3 --output="$2" "$1"
  chmod 666 "$2"
}

DownloadFileVerification () {
  case "$1" in
    *.zip|*.ZIP)
      verify="$(unzip -t "$1" &>/dev/null; echo $?)"
      ;;
    *.rar|*.RAR)
      verify="$(unrar t "$1" &>/dev/null; echo $?)"
      ;;
    *.7z|*.7Z)
      verify="$(7z t "$1" &>/dev/null; echo $?)"
      ;;
    *.chd|*.CHD)
      verify="$(chdman verify -i "$1" &>/dev/null; echo $?)"
      ;;
    *.iso|*.ISO)
      verify="0"
      ;;
  esac
  
  if [ "$verify" != "0" ]; then
    Log "$1 :: ERROR :: Failed Verification!"
    rm "$1"
  else
    Log "$1 :: Download Verified!"
  fi
}

UncompressFile () {
  # $1 is input file
  # $2 is output folder
  Log "Uncompressing \"$1\" to \"$2\""
  case "$1" in
    *.zip|*.ZIP)
      Log "Zip file detected!"
      unzip -o -d "$2" "$1" >/dev/null
      ;;
    *.rar|*.RAR)
      Log "Rar file detected!"
      unrar x "$1" "$2" &>/dev/null
      ;;
    *.7z|*.7Z)
      Log "7z file detected!"
      7z x "$1" "$2" &>/dev/null
      ;;
  esac
  Log "Uncompressing Complete!"
}

######### PROCESS

url="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/Nintendo%20-%20Nintendo%20Entertainment%20System.zip/Nintendo%20-%20Nintendo%20Entertainment%20System%2Fnes%2FLegend%20of%20Zelda%2C%20The%20%28USA%29%20%28Rev%201%29.zip"
rm "/config/temp.zip"
DownloadFile "$url" "/config/temp.zip" "10"
DownloadFileVerification "/config/temp.zip"
UncompressFile "/config/temp.zip" "/config"
exit
