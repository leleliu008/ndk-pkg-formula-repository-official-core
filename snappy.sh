summary "Compression/decompression library aiming for high speed"
webpage "https://google.github.io/snappy"
src_git "https://github.com/google/snappy.git"
src_url "https://github.com/google/snappy/archive/1.1.8.tar.gz"
src_sum "16b677f07832a612b0836178db7f374e414f94657c138e6993cbfc5dcc58651f"
license "BSD-3-Clause"
bsystem "cmake"

build() {
    cmake \
        -DSNAPPY_BUILD_TESTS=OFF \
        -DSNAPPY_FUZZING_BUILD=OFF \
        -DSNAPPY_INSTALL=ON
}
