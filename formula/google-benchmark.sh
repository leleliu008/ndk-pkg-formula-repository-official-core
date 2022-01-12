package set summary "C++ microbenchmark support library"
package set git.url "https://github.com/google/benchmark.git"
package set src.url "https://github.com/google/benchmark/archive/v1.6.1.tar.gz"
package set src.sum "6132883bc8c9b0df5375b16ab520fac1a85dc9e4cf5be59480448ece74b278d4"
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
