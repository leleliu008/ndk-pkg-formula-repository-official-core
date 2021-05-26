package set summary "Display directories as trees (with optional color/HTML output)"
package set webpage "http://mama.indstate.edu/users/ice/tree"
package set version "1.8.0"
package set src.url "https://deb.debian.org/debian/pool/main/t/tree/tree_${PACKAGE_VERSION}.orig.tar.gz"
package set src.sum "715d5d4b434321ce74706d0dd067505bb60c5ea83b5f0b3655dae40aa6f9b7c2"
package set license "GPL-2.0"
package set bsystem "make"

prepare() {
    sed_in_place '/OBJS=/a OBJS+=strverscmp.o' Makefile && {
        # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
        if [ "$TARGET_OS_VERS" -lt 26 ] ; then
            sed_in_place 's/&& strcmp(nl_langinfo(CODESET), "UTF-8") == 0//' tree.c
        fi
    }
}

build() {
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" install \
        prefix="$ABI_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="'$CFLAGS $CPPFLAGS -DLINUX -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64'" \
        LDFLAGS="'$LDFLAGS'"
}
