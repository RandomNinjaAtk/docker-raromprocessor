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
