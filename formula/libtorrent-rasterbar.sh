pkg_set summary "an efficient feature complete C++ bittorrent implementation focusing on efficiency and scalability."
pkg_set webpage "http://libtorrent.org"
pkg_set git.url "https://github.com/arvidn/libtorrent.git"
pkg_set src.url "https://github.com/arvidn/libtorrent/releases/download/v2.0.6/libtorrent-rasterbar-2.0.6.tar.gz"
pkg_set src.sha "438e29272ff41ccc68ec7530f1b98d639f6d01ec8bf680766336ae202a065722"
pkg_set license "BSD-3-Clause|LICENSE|https://raw.githubusercontent.com/arvidn/libtorrent/RC_2_0/LICENSE"
pkg_set dep.pkg "openssl boost"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -Dstatic_runtime=ON \
        -Dencryption=ON \
        -Dbuild_tools=ON \
        -Dbuild_tests=OFF \
        -Dbuild_examples=OFF \
        -Dpython-bindings=OFF
}
