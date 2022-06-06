pkg_set summary "Frontend for libraries libburn and libisofs"
pkg_set webpage "https://www.libburnia-project.org"
pkg_set src.url "http://files.libburnia-project.org/releases/libisoburn-1.5.2.tar.gz"
pkg_set src.sha "cc720bc9511d8e0b09365e2c8b0e40817986be308cd96ca2705c807c955590ec"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "libisofs libburn"
pkg_set bsystem "configure"

prepare() {
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
    if [ "$TARGET_OS_VERS" -lt 26 ] ; then
        sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/lib_mgt.c &&
        sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/text_io.c
    fi
}

build() {
    configure \
        --enable-xattr \
        --enable-zlib \
        --disable-libcdio \
        --disable-libjte \
        --disable-libacl \
        --disable-libedit \
        --disable-libreadline
}
