#!/usr/bin/env bash

APP=siteabidou

if [ "$1" == "build" ]; then
    docker build -t $APP .
elif [ "$1" == "run" ]; then
    docker run -e TZ=Africa/Casablanca -p 8080:80 $APP
elif [ "$1" == "debug" ]; then
    docker run -e TZ=Africa/Casablanca -p 8080:80 -v $(pwd)/html:/var/www/html $APP
fi;
