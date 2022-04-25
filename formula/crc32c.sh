pkg_set summary "Implementation of CRC32C with CPU-specific acceleration"
pkg_set git.url "https://github.com/google/crc32c.git"
pkg_set src.url "https://github.com/google/crc32c/archive/1.1.2.tar.gz"
pkg_set src.sha "ac07840513072b7fcebda6e821068aa04889018f24e10e46181068fb214d7e56"
pkg_set license "BSD-3-Clause;LICENSE;https://raw.githubusercontent.com/google/crc32c/main/LICENSE"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DCRC32C_USE_GLOG=OFF \
        -DCRC32C_BUILD_TESTS=OFF \
        -DCRC32C_BUILD_BENCHMARKS=OFF
}
