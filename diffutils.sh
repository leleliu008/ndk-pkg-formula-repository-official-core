summary "File comparison utilities"
webpage "https://www.gnu.org/software/diffutils"
src_url "https://ftp.gnu.org/gnu/diffutils/diffutils-3.7.tar.xz"
src_sum "b3a7a6221c3dc916085f0d205abf6b8e1ba443d4dd965118da364a1dc1cb3a26"
license "GPL-3.0"
bsystem "configure"

build() {
    configure \
        --with-included-regex \
        --disable-gcc-warnings
}
