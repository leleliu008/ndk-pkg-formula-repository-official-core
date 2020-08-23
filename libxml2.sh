summary="GNOME XML library"
homepage="http://xmlsoft.org"
url="ftp://xmlsoft.org/libxml2/libxml2-2.9.10.tar.gz"
sha256="aafee193ffb8fe0c82d4afef6ef91972cbaf5feea100edc2f262750611b4be1f"
dependencies="libiconv"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-zlib \
        --with-iconv="$libiconv_DIR_INSTALL_PREFIX" \
        --without-lzma \
        --without-python \
        --without-readline \
        --disable-debug \
        --disable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
