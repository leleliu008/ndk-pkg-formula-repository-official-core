pkg_set summary "GNU binary tools for native development"
pkg_set webpage "https://www.gnu.org/software/binutils/binutils.html"
pkg_set src.url "https://ftp.gnu.org/gnu/binutils/binutils-2.37.tar.xz"
pkg_set src.sha "820d9724f020a3e69cb337893a0b63c2db161dadcb0e06fc11dc29eb1e84a32c"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.pkg "isl gmp libmpc mpfr"
#pkg_set ldflags "-lm"

prepare() {
    sed_in_place '/rindex/d' ../include.h
    sed_in_place '/memcmp/d' ../include.h
}

build() {
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
