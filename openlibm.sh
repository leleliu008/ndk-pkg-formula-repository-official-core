summary "High quality, portable, open source libm implementation"
webpage "https://openlibm.org"
src_url "https://github.com/JuliaMath/openlibm/archive/v0.7.3.tar.gz"
src_sum "d3bcc4ef21c033a0cc408a30186bb3dbe21219e0c52d328ca70eb688cf867354"

prepare() {
    sed_in_place 's|-mhard-float||g' Make.inc
}

build() {
    if [ "$BUILD_FOR_ABI" = 'x86_64' ] ; then
        LONG_DOUBLE_NOT_DOUBLE=1
    else
        LONG_DOUBLE_NOT_DOUBLE=0
    fi
    $MAKE -C "$SOURCE_DIR" clean &&
    $MAKE -C "$SOURCE_DIR" install \
        prefix="$ABI_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        OS=Linux \
        ARCH="$BUILD_FOR_ARCH" \
        LONG_DOUBLE_NOT_DOUBLE="$LONG_DOUBLE_NOT_DOUBLE"
}
