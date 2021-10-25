package set summary "Convert text between DOS, UNIX, and Mac formats"
package set webpage "https://waterlan.home.xs4all.nl/dos2unix.html"
package set src.url "https://waterlan.home.xs4all.nl/dos2unix/dos2unix-7.4.2.tar.gz"
package set src.sum "6035c58df6ea2832e868b599dfa0d60ad41ca3ecc8aa27822c4b7a9789d3ae01"
package set license "BSD-2-Clause"
package set binsrcd 'yes'
package set bsystem 'make'

prepare() {
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
    if [ "$TARGET_OS_VERS" -lt 26 ] ; then
        sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' common.c || return
    fi
    sed_in_place '/ENABLE_NLS      = 1/d' Makefile
}

build() {
    makew clean
    makew CC=$CC CPP=$CPP STRIP=$STRIP CFLAGS="$CFLAGS" D2U_OS=android
    makew install prefix="$ABI_INSTALL_DIR"
}
