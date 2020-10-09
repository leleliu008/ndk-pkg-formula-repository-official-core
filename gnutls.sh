summary="GNU Transport Layer Security (TLS) Library"
homepage="https://gnutls.org"
url="https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/gnutls-3.6.14.tar.xz"
sha256="5630751adec7025b8ef955af4d141d00d252a985769f51b4059e5affa3d39d63"
dependencies="gmp libunistring"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --without-gcov \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-gtk-doc \
        --enable-static \
        --enable-shared \
        --enable-gcc-warnings \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" && 
    make clean &&
    make -C lib install &&
    make -C src install
}
