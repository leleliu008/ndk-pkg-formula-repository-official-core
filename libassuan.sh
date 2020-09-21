summary="Assuan IPC Library"
homepage="https://www.gnupg.org/related_software/libassuan"
url="https://gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.3.tar.bz2"
sha256="91bcb0403866b4e7c4bc1cc52ed4c364a9b5414b3994f718c70303f7f765e702"
license="GPL-3.0"
dependencies="libgpg-error"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-libgpg-error-prefix="$libgpg_error_DIR_INSTALL_PREFIX" \
        --enable-static \
        --enable-shared \
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
