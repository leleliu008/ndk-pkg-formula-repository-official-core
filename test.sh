#!/bin/sh

set -e

cd formula

for f in *.yml
do
    [ -L "$f" ] && continue

    #xcpkg info "${f%.yml}"

    if grep -q '\-DBUILD_SHARED_LIBS=ON' "$f" && grep -q '\-DBUILD_SHARED_LIBS=OFF' "$f" ; then
        echo "$f"
        exit
    fi

    WEB_URL="$(gsed -n '/^web-url: /p' "$f" | cut -c10-)"

    [ -z "$WEB_URL" ] && continue

    SRC_URL="$(gsed -n '/^src-url: /p' "$f" | cut -c10-)"

    [ -z "$SRC_URL" ] && continue

    case $SRC_URL in
        "$WEB_URL"*)
            echo "$f"
            echo "$WEB_URL"
            echo "$SRC_URL"
            echo
    esac
done
