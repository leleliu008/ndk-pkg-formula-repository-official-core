summary "an efficient feature complete C++ bittorrent implementation focusing on efficiency and scalability."
webpage "http://libtorrent.org"
src_git "https://github.com/arvidn/libtorrent.git"
src_url "https://github.com/arvidn/libtorrent/releases/download/v2.0.3/libtorrent-rasterbar-2.0.3.tar.gz"
src_sum "59bfc7654bccaa2735353fb21e503ed6f66f1964150b70799150ed3f2403bcc5"
bsystem "cmake"
depends "openssl boost"

build() {
    cmake \
        -Dstatic_runtime=ON \
        -Dencryption=ON \
        -Dbuild_tools=ON \
        -Dbuild_tests=OFF \
        -Dbuild_examples=OFF \
        -Dpython-bindings=OFF \
        -DBoost_INCLUDE_DIR="$boost_INCLUDE_DIR"
}
