summary "GNU binary tools for native development"
webpage "https://www.gnu.org/software/binutils/binutils.html"
src_url "https://ftp.gnu.org/gnu/binutils/binutils-2.35.tar.xz"
src_sum "1b11659fb49e20e18db460d44485f09442c8c56d5df165de9461eb09c8302f85"
license "GPL-2.0"
depends "isl gmp libmpc mpfr"

build() {
    export LDFLAGS="$LDFLAGS -lm"
    configure \
        --with-isl="$isl_INSTALL_DIR" \
        --with-gmp="$gmp_INSTALL_DIR" \
        --with-mpc="$libmpc_INSTALL_DIR" \
        --with-mpfr="$mpfr_INSTALL_DIR" \
        --with-system-zlib \
        --disable-werror \
        --enable-interwork \
        --enable-multilib \
        --enable-targets=all
}
