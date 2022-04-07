#!/usr/bin/with-contenv bash

if [ "$AutoStart" = "true" ]; then
	echo "Automatic Start Enabled, starting..."
	for (( ; ; )); do
		let i++
		bash /scripts/import.sh
		bash /scripts/scrape.sh
		sleep $ScriptInterval
	done
else
	echo "Automatic Start Disabled, manually run using this command:"
	echo "bash /scripts/import.sh"
	echo "bash /scripts/scrape.sh"
fi

exit $?
