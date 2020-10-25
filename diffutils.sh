summary="File comparison utilities"
homepage="https://www.gnu.org/software/diffutils"
url="https://ftp.gnu.org/gnu/diffutils/diffutils-3.7.tar.xz"
sha256="b3a7a6221c3dc916085f0d205abf6b8e1ba443d4dd965118da364a1dc1cb3a26"
license="GPL-3.0"

build() {
    configure \
        --with-included-regex \
        --disable-gcc-warnings
}
