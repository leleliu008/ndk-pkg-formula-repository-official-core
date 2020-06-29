summary="Freely available high-quality data compressor"
homepage="https://sourceware.org/bzip2"
url="https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz"
sha256="ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269"
SHARED=1

build() {
    make clean > /dev/null 2>&1

    if [ "$SHARED" -eq 1 ] ; then
        MAKE='make -f Makefile-libbz2_so'
    else
        MAKE='make'
    fi
    
    "$MAKE" CC="$CC" CFLAGS='-v' AR="$AR" RANLIB="$RANLIB" &&
    mkdir -p "$DIR_INSTALL_PREFIX"/{bin,lib} &&
    cp libbz2.so.*.*.* "$DIR_INSTALL_PREFIX/lib" &&
    cp bzip2-shared "$DIR_INSTALL_PREFIX/bin/bzip2"
}
