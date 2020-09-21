summary="Not Too Bad TLS library"
homepage="https://gnupg.org/software/ntbtls/index.html"
url="https://gnupg.org/ftp/gcrypt/ntbtls/ntbtls-0.2.0.tar.bz2"
sha256="649fe74a311d13e43b16b26ebaa91665ddb632925b73902592eac3ed30519e17"
dependencies="libgpg-error libgcrypt libksba"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-static \
        --enable-shared \
        --with-zlib \
        --with-libgpg-error-prefix="$libgpg_error_DIR_INSTALL_PREFIX" \
        --with-libgcrypt-prefix="$libgcrypt_DIR_INSTALL_PREFIX" \
        --with-libksba-prefix="$libksba_DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        CC_FOR_BUILD=/usr/bin/cc &&
    make clean &&
    make install
}
