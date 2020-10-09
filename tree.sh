summary="Display directories as trees (with optional color/HTML output)"
homepage="http://mama.indstate.edu/users/ice/tree"
url="https://deb.debian.org/debian/pool/main/t/tree/tree_1.8.0.orig.tar.gz"
sha256="715d5d4b434321ce74706d0dd067505bb60c5ea83b5f0b3655dae40aa6f9b7c2"
license="GPL-2.0"
version="1.8.0"

# char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
prepare() {
    sed_in_place '/OBJS=/a OBJS+=strverscmp.o' Makefile && {
        if [ "$TARGET_API" -lt 26 ] ; then
            sed_in_place 's/&& strcmp(nl_langinfo(CODESET), "UTF-8") == 0//' tree.c
        fi
    }
}

build() {
    make clean &&
    make install \
        prefix="$DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS -DLINUX -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64" \
        LDFLAGS="$LDFLAGS"
}
