summary="Manage compile and link flags for libraries"
homepage="https://freedesktop.org/wiki/Software/pkg-config"
url="https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.2.tar.gz"
sha256="6fc69c01688c9458a57eb9a1664c9aba372ccda420a02bf4429fe610e7e7d591"
dependencies="libiconv glib"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --without-internal-glib \
        --enable-largefile \
        --enable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS -lpcre -lm" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
