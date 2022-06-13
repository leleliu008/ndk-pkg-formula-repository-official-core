pkg_set summary "Low-level cryptographic library"
pkg_set webpage "https://www.lysator.liu.se/~nisse/nettle"
pkg_set src.url "https://ftp.gnu.org/gnu/nettle/nettle-3.8.tar.gz"
pkg_set src.sha "7576c68481c198f644b08c160d1a4850ba9449e308069455b5213319f234e8e6"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "gmp"
pkg_set bsystem "configure"

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
