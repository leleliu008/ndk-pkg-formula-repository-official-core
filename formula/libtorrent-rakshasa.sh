package set summary "BitTorrent library with a focus on high performance"
package set git.url "https://github.com/rakshasa/libtorrent.git"
package set src.url "https://github.com/rakshasa/libtorrent/archive/v0.13.8.tar.gz"
package set src.sum "0f6c2e7ffd3a1723ab47fdac785ec40f85c0a5b5a42c1d002272205b988be722"
package set license "GPL-2.0"
package set dep.pkg "zlib openssl"
package set dep.cmd "pkg-config glibtoolize:libtoolize"
package set bsystem "autogen"

build() {
    configure \
        --disable-largefile \
        --enable-aligned=true \
        --without-fastcgi \
        --with-zlib="$zlib_INSTALL_DIR"
}
