#!/bin/sh

set -e

for x in web git src fix res
do
    for f in formula/*.yml
    do
        [ -L "$f" ] && continue

        URL="$(yq ".$x-url | select(. != null)" "$f")"
        URI="$(yq ".$x-uri | select(. != null)" "$f")"

        if [ -z "$URL" ] && [ -n "$URI" ] ; then
            echo "$x : $f"
        fi
    done
done
