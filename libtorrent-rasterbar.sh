summary "an efficient feature complete C++ bittorrent implementation focusing on efficiency and scalability."
webpage "http://libtorrent.org"
src_git "https://github.com/arvidn/libtorrent.git"
src_url "https://github.com/arvidn/libtorrent/releases/download/v2.0.2/libtorrent-rasterbar-2.0.2.tar.gz"
src_sum "3af22ea1b60e04a7cf357a3d770470ea5df15e968501782bd1414634a2b42cb7"
require "cmake"
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
