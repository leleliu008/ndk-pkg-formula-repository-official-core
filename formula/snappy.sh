package set summary "Compression/decompression library aiming for high speed"
package set webpage "https://google.github.io/snappy"
package set src.git "https://github.com/google/snappy.git"
package set src.url "https://github.com/google/snappy/archive/1.1.9.tar.gz"
package set src.sum "75c1fbb3d618dd3a0483bff0e26d0a92b495bbe5059c8b4f1c962b478b6e06e7"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DSNAPPY_BUILD_BENCHMARKS=OFF \
        -DSNAPPY_BUILD_TESTS=OFF \
        -DSNAPPY_FUZZING_BUILD=OFF \
        -DSNAPPY_INSTALL=ON
}
