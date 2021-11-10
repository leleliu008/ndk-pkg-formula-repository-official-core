package set summary "C++ microbenchmark support library"
package set src.git "https://github.com/google/benchmark.git"
package set src.url "https://github.com/google/benchmark/archive/v1.6.0.tar.gz"
package set src.sum "1f71c72ce08d2c1310011ea6436b31e39ccab8c2db94186d26657d41747c85d6"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew \
        -DBENCHMARK_ENABLE_TESTING=OFF \
        -DBENCHMARK_ENABLE_GTEST_TESTS=OFF \
        -DBENCHMARK_ENABLE_ASSEMBLY_TESTS=OFF \
        -DBENCHMARK_ENABLE_EXCEPTIONS=ON \
        -DBENCHMARK_ENABLE_INSTALL=ON \
        -DBENCHMARK_ENABLE_LTO=ON \
        -DBENCHMARK_USE_LIBCXX=ON \
        -DBENCHMARK_DOWNLOAD_DEPENDENCIES=OFF
}
