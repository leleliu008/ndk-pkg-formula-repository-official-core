package set summary "ASN.1 structure parser library"
package set webpage "https://www.gnu.org/software/libtasn1"
package set src.url "https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.17.0.tar.gz"
package set src.sum "ece7551cea7922b8e10d7ebc70bc2248d1fdd73351646a2d6a8d68a9421c45a5"
package set bsystem "configure"

build() {
    configure \
        --without-gcov \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-gtk-doc \
        --enable-gcc-warnings
}
