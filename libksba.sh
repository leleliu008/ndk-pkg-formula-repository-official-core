summary="X.509 and CMS library"
homepage="https://www.gnupg.org/related_software/libksba"
url="https://gnupg.org/ftp/gcrypt/libksba/libksba-1.4.0.tar.bz2"
sha256="bfe6a8e91ff0f54d8a329514db406667000cb207238eded49b599761bfca41b6"
license="GPL-2.0"
dependencies="libgpg-error"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-libgpg-error-prefix="$libgpg_error_DIR_INSTALL_PREFIX" \
        --enable-static \
        --enable-shared \
        --enable-optimization \
        --disable-valgrind-tests \
        --disable-gcov \
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
