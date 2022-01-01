package set summary "an efficient feature complete C++ bittorrent implementation focusing on efficiency and scalability."
package set webpage "http://libtorrent.org"
package set git.url "https://github.com/arvidn/libtorrent.git"
package set src.url "https://github.com/arvidn/libtorrent/releases/download/v2.0.5/libtorrent-rasterbar-2.0.5.tar.gz"
package set src.sum "e965c2e53170c61c0db3a2d898a61769cb7acd541bbf157cbbef97a185930ea5"
package set dep.pkg "openssl boost"
package set bsystem "cmake"

build() {
    cmakew \
        -Dstatic_runtime=ON \
        -Dencryption=ON \
        -Dbuild_tools=ON \
        -Dbuild_tests=OFF \
        -Dbuild_examples=OFF \
        -Dpython-bindings=OFF \
        -DBoost_INCLUDE_DIR="$boost_INCLUDE_DIR"
}
