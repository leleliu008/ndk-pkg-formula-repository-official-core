summary="Asynchronous DNS library"
homepage="https://c-ares.haxx.se"
url="https://c-ares.haxx.se/download/c-ares-1.16.1.tar.gz"
sha256="d08312d0ecc3bd48eee0a4cc0d2137c9f194e0a28de2028928c0f6cae85f86ce"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --disable-debug \
        --disable-tests \
        --disable-code-coverage \
        --disable-werror \
        --disable-libgcc \
        --disable-static \
        --enable-shared \
        --enable-warnings \
        --enable-optimize=Os \
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
