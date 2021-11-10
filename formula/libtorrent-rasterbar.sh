package set summary "an efficient feature complete C++ bittorrent implementation focusing on efficiency and scalability."
package set webpage "http://libtorrent.org"
package set src.git "https://github.com/arvidn/libtorrent.git"
package set src.url "https://github.com/arvidn/libtorrent/releases/download/v2.0.4/libtorrent-rasterbar-2.0.4.tar.gz"
package set src.sum "55bcce16c4b85b8cccd20e7ff4a9fde92db66333a25d6504a83c0bb0a5f7f529"
package set bsystem "cmake"
package set dep.pkg "openssl boost"

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
