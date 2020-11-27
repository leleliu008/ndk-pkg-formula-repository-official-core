summary  "Compression/decompression library aiming for high speed"
homepage "https://google.github.io/snappy"
repo     "https://github.com/google/snappy.git"
url      "https://github.com/google/snappy/archive/1.1.8.tar.gz"
sha256   "16b677f07832a612b0836178db7f374e414f94657c138e6993cbfc5dcc58651f"
license  "BSD-3-Clause"

build() {
    cmake \
        -DSNAPPY_BUILD_TESTS=OFF \
        -DSNAPPY_FUZZING_BUILD=OFF \
        -DSNAPPY_INSTALL=ON
}
