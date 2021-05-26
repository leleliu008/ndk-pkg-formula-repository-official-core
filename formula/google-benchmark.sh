package set summary "C++ microbenchmark support library"
package set src.git "https://github.com/google/benchmark.git"
package set src.url "https://github.com/google/benchmark/archive/v1.5.2.tar.gz"
package set src.sum "dccbdab796baa1043f04982147e67bb6e118fe610da2c65f88912d73987e700c"
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
