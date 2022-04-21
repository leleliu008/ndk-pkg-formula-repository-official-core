package set summary "Implementation of CRC32C with CPU-specific acceleration"
package set git.url "https://github.com/google/crc32c.git"
package set src.url "https://github.com/google/crc32c/archive/1.1.2.tar.gz"
package set src.sum "ac07840513072b7fcebda6e821068aa04889018f24e10e46181068fb214d7e56"
package set license "BSD-3-Clause;LICENSE;https://raw.githubusercontent.com/google/crc32c/main/LICENSE"
package set bsystem "cmake"

build() {
    cmakew \
        -DCRC32C_USE_GLOG=OFF \
        -DCRC32C_BUILD_TESTS=OFF \
        -DCRC32C_BUILD_BENCHMARKS=OFF
}
