#!/bin/sh

set -e

COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_YELLOW='\033[0;33m'
COLOR_BLUE='\033[0;94m'
COLOR_PURPLE='\033[0;35m'
COLOR_OFF='\033[0m'

echo() {
    printf '%b\n' "$*"
}

run() {
    echo "${COLOR_PURPLE}==>${COLOR_OFF} ${COLOR_GREEN}$@${COLOR_OFF}"
    eval "$@"
}


addnew() {
    SRC_URL="$(sed -n '/^src-url: /p' "$1" | cut -c10-)"

    unset VERSION

    if [ -n "$SRC_URL" ] ; then
        VERSION="$(extract-version "$SRC_URL")"

        VERSION=" $VERSION"
    fi

    echo '\n=====================================================>\n'

    echo "addnew package ${1%.yml}$VERSION\n"

    bat --language=diff --paging=never --color=always --theme=Dracula --style=plain "$1"

    if [ "$DRYRUN" = 1 ] ; then
        return
    fi

    echo

    run git add "$1"
    run git commit -m "'addnew package ${1%.yml}$VERSION'"
    run git push origin master
}


update() {
    unset VERSION

    if  git diff -U0 "$1" | grep -q '^-src-url: ' &&
        git diff -U0 "$1" | grep -q '^+src-url: ' &&
        git diff -U0 "$1" | grep -q '^-src-sha: ' &&
        git diff -U0 "$1" | grep -q '^+src-sha: ' ; then

        SRC_URL_OLD="$(git diff -U0 "$1" | grep '^-src-url: ' | cut -c11-)"
        SRC_URL_NEW="$(git diff -U0 "$1" | grep '^+src-url: ' | cut -c11-)"

        VOLD="$(extract-version "$SRC_URL_OLD")"
        VNEW="$(extract-version "$SRC_URL_NEW")"

        if [ "$VOLD" != "$VNEW" ] ; then
            VERSION=" $VOLD -> $VNEW"
        fi
    fi

    echo '\n=====================================================>\n'

    echo "update package ${1%.yml}$VERSION\n"

    git diff -U0 "$1" | grep -E '^[+-]' | grep -vE '^(---|\+\+\+)' | bat --language=diff --paging=never --color=always --theme=Dracula --style=plain

    if [ "$DRYRUN" = 1 ] ; then
        return
    fi

    echo

    run git add "$1"
    run git commit -m "'update package ${1%.yml}$VERSION'"
    run git push origin master
}

###########################################################

unset DRYRUN

[ "$1" = '--dryrun' ] && DRYRUN=1

cd formula

for item in $(git status -s | sed -e 's|^ ||' -e 's| |:|g')
do
    case $item in
        M:*)
            f="${item#M:}"

            case $f in
                ../*)
                    continue
                    ;;
                *.yml)
                    update "$f"
            esac
            ;;
        A::*)
            f="${item#A::}"

            case $f in
                ../*)
                    continue
                    ;;
                *.yml)
                    addnew "$f"
            esac
            ;;
        \?\?:*)
            f="${item#??:}"

            case $f in
                ../*)
                    continue
                    ;;
                *.yml)
                    addnew "$f"
            esac
            ;;
    esac
done
