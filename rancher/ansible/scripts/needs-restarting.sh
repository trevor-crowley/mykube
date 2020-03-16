#!/bin/sh -e
#
# helper for update-motd

if [ -f /var/run/reboot-required ]; then
        cat /var/run/reboot-required
	exit 1
fi
echo no reboot required
