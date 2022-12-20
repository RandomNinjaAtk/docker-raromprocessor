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
  axel -q -n $3 --output="$2" "$1"
}

DownloadFileVerification () {
  case "$1" in
    *.zip|*.ZIP)
      verify="$(unzip -t "$DownloadOutput" &>/dev/null; echo $?)"
      ;;
    *.rar|*.RAR)
      verify="$(unrar t "$DownloadOutput" &>/dev/null; echo $?)"
      ;;
    *.7z|*.7Z)
      verify="$(7z t "$DownloadOutput" &>/dev/null; echo $?)"
      ;;
    *.chd|*.CHD)
      verify="$(chdman verify -i "$DownloadOutput" &>/dev/null; echo $?)"
      ;;
    *.iso|*.ISO)
      verify="0"
      ;;
  esac
  
  if [ "$verify" != "0" ]; then
    log "$ConsoleName :: $currentsubprocessid of $DlCount :: $romFile :: Download Failed!"
    rm -rf "$1"
  fi
}

UncompressFile () {
  # $1 is input file
  # $2 is output folder
  Log "Uncompressing \"$1\" to \"$2\""
  case "$1" in
    *.zip|*.ZIP)
      unzip -o -d "$1" "$2" >/dev/null
      ;;
    *.rar|*.RAR)
      unrar x "$1" "$2" &>/dev/null
      ;;
    *.7z|*.7Z)
      7z x "$1" "$2" &>/dev/null
      ;;
  esac
  Log "Uncompressing Complete!"
}

######### PROCESS

exit
