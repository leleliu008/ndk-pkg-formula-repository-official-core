summary "BitTorrent library with a focus on high performance"
webpage "https://github.com/rakshasa/libtorrent"
src_url "https://github.com/rakshasa/libtorrent/archive/v0.13.8.tar.gz"
src_sum "0f6c2e7ffd3a1723ab47fdac785ec40f85c0a5b5a42c1d002272205b988be722"
license "GPL-2.0"
require "automake autoconf pkg-config make"
depends "zlib openssl"

prepare() {
    ./autogen.sh
}

build() {
    configure \
        --disable-largefile \
        --enable-aligned=true \
        --without-fastcgi \
        --with-zlib="$zlib_INSTALL_DIR"
}
