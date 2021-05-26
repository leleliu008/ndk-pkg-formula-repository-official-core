package set summary "Frontend for libraries libburn and libisofs"
package set webpage "https://www.libburnia-project.org"
package set src.url "http://files.libburnia-project.org/releases/libisoburn-1.5.2.tar.gz"
package set src.sum "cc720bc9511d8e0b09365e2c8b0e40817986be308cd96ca2705c807c955590ec"
package set license "LGPL-2.1-or-later"
package set bsystem "configure"
package set dep.pkg "libisofs libburn"

prepare() {
    {
        # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
        if [ "$TARGET_OS_VERS" -lt 26 ] ; then
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/lib_mgt.c &&
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/text_io.c
        fi
    } &&
    sed_in_place 's/-lpthread//g' configure
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
