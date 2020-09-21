summary="GNU binary tools for native development"
homepage="https://www.gnu.org/software/binutils/binutils.html"
url="https://ftp.gnu.org/gnu/binutils/binutils-2.35.tar.xz"
sha256="1b11659fb49e20e18db460d44485f09442c8c56d5df165de9461eb09c8302f85"
license="GPL-2.0"
dependencies="isl gmp libmpc mpfr"

build() {
    [ -f Makefile ] && make distclean
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-isl="$isl_DIR_INSTALL_PREFIX" \
        --with-gmp="$gmp_DIR_INSTALL_PREFIX" \
        --with-mpc="$libmpc_DIR_INSTALL_PREFIX" \
        --with-mpfr="$mpfr_DIR_INSTALL_PREFIX" \
        --with-system-zlib \
        --disable-werror \
        --enable-static \
        --enable-shared \
        --enable-interwork \
        --enable-multilib \
        --enable-targets=all \
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
    make &&
    make install
}
