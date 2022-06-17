pkg_set summary "GNU binary tools for native development"
pkg_set webpage "https://www.gnu.org/software/binutils/binutils.html"
pkg_set src.url "https://ftp.gnu.org/gnu/binutils/binutils-2.38.tar.xz"
pkg_set src.sha "e316477a914f567eccc34d5d29785b8b0f5a10208d36bbacedcc39048ecfe024"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "isl gmp libmpc mpfr"
pkg_set bsystem "configure"

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
