#!/bin/bash

path="$(pwd)"
echo "starting composer install with docker ..."
read -p "Do you want install on $path [Y/n]?" check

if [ "$check" == "Y" ]; then
    read -p "pick what php version did you want [7.4|8.1|8.2]" phpversion
    if [ "$phpversion" == "7.4" ]; then
        phpversion="74"
    elif [ "$phpversion" == "8.1" ]; then
        phpversion="81"
    elif [ "$phpversion" == "8.2" ]; then
        phpversion="82"
    else
        echo "invalid php version"
        exit 1
    fi

    docker run --rm \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php$phpversion-composer:latest \
	composer install --ignore-platform-reqs
else
    echo "Done! nothing to do."
fi
