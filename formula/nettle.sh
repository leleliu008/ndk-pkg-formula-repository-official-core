pkg_set summary "Low-level cryptographic library"
pkg_set webpage "https://www.lysator.liu.se/~nisse/nettle"
pkg_set src.url "https://ftp.gnu.org/gnu/nettle/nettle-3.7.3.tar.gz"
pkg_set src.sha "661f5eb03f048a3b924c3a8ad2515d4068e40f67e774e8a26827658007e3bcf0"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.pkg "gmp"

prepare() {
    sed_in_place '/cat >conftest.c <<EOF/a #include<stdlib.h>' configure
}

build() {
    configure \
        --with-include-path="$gmp_INCLUDE_DIR" \
        --with-lib-path="$gmp_LIBRARY_DIR" \
        --disable-fat \
        --disable-gcov \
        --disable-openssl \
        --disable-mini-gmp \
        --enable-assembler \
        --disable-documentation
}
