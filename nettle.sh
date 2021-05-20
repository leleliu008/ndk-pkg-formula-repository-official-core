package set summary "Low-level cryptographic library"
package set webpage "https://www.lysator.liu.se/~nisse/nettle"
package set src.url "https://ftp.gnu.org/gnu/nettle/nettle-3.6.tar.gz"
package set src.sum "d24c0d0f2abffbc8f4f34dcf114b0f131ec3774895f3555922fe2f40f3d5e3f1"
package set license "GPL-2.0-or-later"
package set bsystem "configure"
package set dep.pkg "gmp"

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
        --enable-documentation
}
