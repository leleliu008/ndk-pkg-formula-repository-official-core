summary="Audio codec designed for speech"
homepage="https://speex.org"
url="https://downloads.xiph.org/releases/speex/speex-1.2.0.tar.gz"
sha256="eaae8af0ac742dc7d542c9439ac72f1f385ce838392dc849cae4536af9210094"
dependencies="libogg speexdsp"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS -lm" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        OGG_CFLAGS="-I$libogg_DIR_INCLUDE" \
        OGG_LIBS="-L$libogg_DIR_LIB -logg" \
        SPEEXDSP_CFLAGS="-I$speexdsp_DIR_INCLUDE" \
        SPEEXDSP_LIBS="-L$speexdsp_DIR_LIB -lspeexdsp" &&
    make clean &&
    make install
}
