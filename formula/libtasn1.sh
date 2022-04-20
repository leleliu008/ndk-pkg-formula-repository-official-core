package set summary "ASN.1 structure parser library"
package set webpage "https://www.gnu.org/software/libtasn1"
package set src.url "https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.18.0.tar.gz"
package set src.sum "4365c154953563d64c67a024b607d1ee75c6db76e0d0f65709ea80a334cd1898"
package set license "LGPL-2.1-or-later"
package set bsystem "configure"

build() {
    configure \
        --without-gcov \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-gtk-doc \
        --enable-gcc-warnings
}
