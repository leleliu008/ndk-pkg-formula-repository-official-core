summary="Freely available high-quality data compressor"
homepage="https://sourceware.org/bzip2"
url="https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz"
sha256="ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269"

BUILD_SHARED=yes

build() {
    make clean || exit 1
    
    if [ "$BUILD_SHARED" = 'yes' ] ; then
        make -f Makefile-libbz2_so \
            CC="$CC" \
            CFLAGS="$CFLAGS -fpic -fPIC -Wall -Winline -D_FILE_OFFSET_BITS=64" &&
        mkdir -p "$DIR_INSTALL_PREFIX/bin" &&
        mkdir -p "$DIR_INSTALL_PREFIX/lib" &&
        mkdir -p "$DIR_INSTALL_PREFIX/include" &&
        cp -f libbz2.so.*.*.* "$DIR_INSTALL_PREFIX/lib/libbz2.so" &&
        cp -f bzip2-shared "$DIR_INSTALL_PREFIX/bin/bzip2" &&
        cp -f bzlib.h "$DIR_INSTALL_PREFIX/include/"
    else
        make install \
            PREFIX="$DIR_INSTALL_PREFIX" \
            CC="$CC" \
            CFLAGS="$CFLAGS -Wall -Winline -D_FILE_OFFSET_BITS=64" \
            LDFLAGS="$LDFLAGS" \
            AR="$AR" \
            RANLIB="$RANLIB"
    fi
}
