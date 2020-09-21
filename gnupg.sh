summary="GNU Pretty Good Privacy (PGP) package"
homepage="https://gnupg.org"
url="https://gnupg.org/ftp/gcrypt/gnupg/gnupg-2.2.23.tar.bz2"
sha256="10b55e49d78b3e49f1edb58d7541ecbdad92ddaeeb885b6f486ed23d1cd1da5c"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-threads=posix \
        --enable-largefile \
        --disable-nls \
        --disable-rpath \
        --disable-assert \
        --disable-gcc-warnings \
        --with-included-regex \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
