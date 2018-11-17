#!/bin/bash

if [ -f ~/.cacti-template ]
then
	echo "Found preexisting cacti-template Install, proceeding to upgrade..."
	echo ""
  bash <(curl -s https://raw.githubusercontent.com/KnoAll/cacti-template/master/update-git.sh)
else
	echo "Cacti is not already installed, sorry cannot upgrade. Exiting..."
    sleep 5
    exit 1
fi
