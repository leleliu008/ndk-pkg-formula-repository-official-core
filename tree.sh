summary="Display directories as trees (with optional color/HTML output)"
homepage="http://mama.indstate.edu/users/ice/tree"
version="1.8.0"
url="https://deb.debian.org/debian/pool/main/t/tree/tree_$version.orig.tar.gz"
sha256="715d5d4b434321ce74706d0dd067505bb60c5ea83b5f0b3655dae40aa6f9b7c2"
license="GPL-2.0"

prepare() {
    sed_in_place '/OBJS=/a OBJS+=strverscmp.o' Makefile && {
        # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
        if [ "$MIN_SDK_API_LEVEL" -lt 26 ] ; then
            sed_in_place 's/&& strcmp(nl_langinfo(CODESET), "UTF-8") == 0//' tree.c
        fi
    }
}

build() {
    $MAKE -C "$SOURCE_DIR" clean &&
    $MAKE -C "$SOURCE_DIR" install \
        prefix="$ABI_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS -DLINUX -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64" \
        LDFLAGS="$LDFLAGS"
}
