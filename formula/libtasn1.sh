pkg_set summary "ASN.1 structure parser library"
pkg_set webpage "https://www.gnu.org/software/libtasn1"
pkg_set src.url "https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.18.0.tar.gz"
pkg_set src.sha "4365c154953563d64c67a024b607d1ee75c6db76e0d0f65709ea80a334cd1898"
pkg_set license "LGPL-2.1-or-later"
pkg_set bsystem "configure"

build() {
    configure \
        --without-gcov \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-gtk-doc \
        --enable-gcc-warnings
}
