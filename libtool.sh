summary="Generic library support script"
homepage="https://www.gnu.org/software/libtool"
url="https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.xz"
sha256="7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f"
license="GPL-2.0"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --enable-shared \
        --enable-static \
        --enable-ltdl-install \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
