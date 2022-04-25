pkg_set summary "BitTorrent library with a focus on high performance"
pkg_set git.url "https://github.com/rakshasa/libtorrent.git"
pkg_set src.url "https://github.com/rakshasa/libtorrent/archive/v0.13.8.tar.gz"
pkg_set src.sha "0f6c2e7ffd3a1723ab47fdac785ec40f85c0a5b5a42c1d002272205b988be722"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "zlib openssl"
pkg_set dep.cmd "pkg-config glibtoolize:libtoolize"
pkg_set bsystem "autogen"

build() {
    configure \
        --disable-largefile \
        --enable-aligned=true \
        --without-fastcgi \
        --with-zlib="$zlib_INSTALL_DIR"
}
