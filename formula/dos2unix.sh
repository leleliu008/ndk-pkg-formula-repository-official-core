pkg_set summary "Convert text between DOS, UNIX, and Mac formats"
pkg_set webpage "https://waterlan.home.xs4all.nl/dos2unix.html"
pkg_set src.url "https://waterlan.home.xs4all.nl/dos2unix/dos2unix-7.4.3.tar.gz"
pkg_set src.sha "b68db41956daf933828423aa30510e00c12d29ef5916e715e8d4e694fe66ca72"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

prepare() {
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
    if [ "$TARGET_OS_VERS" -lt 26 ] ; then
        sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' common.c || return
    fi
    sed_in_place '/ENABLE_NLS      = 1/d' Makefile
}

build() {
    gmakew clean
    gmakew CC=$CC CPP="'$CPP'" STRIP=$STRIP CFLAGS="'$CFLAGS'" D2U_OS=android
    gmakew install prefix="$TARGET_INSTALL_DIR"
}
