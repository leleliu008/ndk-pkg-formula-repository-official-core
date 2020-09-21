summary="Reimplementation of pkg-config"
homepage="http://pkgconf.org"
url="https://distfiles.dereferenced.org/pkgconf/pkgconf-1.7.3.tar.xz"
sha256="b846aea51cf696c3392a0ae58bef93e2e72f8e7073ca6ad1ed8b01c85871f9c0"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --enable-largefile \
        --enable-static \
        --enable-shared \
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
    make install
}
