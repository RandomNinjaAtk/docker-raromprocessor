#!/usr/bin/with-contenv bash

if [ "$AutoStart" = "true" ]; then
	echo "Automatic Start Enabled, starting..."
	bash /scripts/import.sh
else
	echo "Automatic Start Disabled, manually run using this command:"
	echo "bash /scripts/import.sh"
fi

exit $?
