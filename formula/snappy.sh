pkg_set summary "Compression/decompression library aiming for high speed"
pkg_set webpage "https://google.github.io/snappy"
pkg_set git.url "https://github.com/google/snappy.git"
pkg_set src.url "https://github.com/google/snappy/archive/1.1.9.tar.gz"
pkg_set src.sha "75c1fbb3d618dd3a0483bff0e26d0a92b495bbe5059c8b4f1c962b478b6e06e7"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DSNAPPY_BUILD_BENCHMARKS=OFF \
        -DSNAPPY_BUILD_TESTS=OFF \
        -DSNAPPY_FUZZING_BUILD=OFF \
        -DSNAPPY_INSTALL=ON
}
