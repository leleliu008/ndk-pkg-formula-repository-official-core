summary="Compact Disc Input and Control Library"
homepage="https://www.gnu.org/software/libcdio"
url="https://ftp.gnu.org/gnu/libcdio/libcdio-2.1.0.tar.bz2"
sha256="8550e9589dbd594bfac93b81ecf129b1dc9d0d51e90f9696f1b2f9b2af32712b"
license="GPL-3.0"
dependencies="libiconv"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --enable-static \
        --enable-shared \
        --enable-largefile \
        --disable-rpath \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    sed_in_place '/HAVE_GLOB_H/d' config.h &&
    make clean &&
    make install
}
