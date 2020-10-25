summary="C++ microbenchmark support library"
homepage="https://github.com/google/benchmark"
version="1.5.2"
url="https://github.com/google/benchmark/archive/v$version.tar.gz"
sha256="dccbdab796baa1043f04982147e67bb6e118fe610da2c65f88912d73987e700c"
license="Apache-2.0"

build() {
    cmake \
        -DBENCHMARK_ENABLE_TESTING=OFF \
        -DBENCHMARK_ENABLE_GTEST_TESTS=OFF \
        -DBENCHMARK_ENABLE_ASSEMBLY_TESTS=OFF \
        -DBENCHMARK_ENABLE_EXCEPTIONS=ON \
        -DBENCHMARK_ENABLE_INSTALL=ON \
        -DBENCHMARK_ENABLE_LTO=ON \
        -DBENCHMARK_USE_LIBCXX=ON \
        -DBENCHMARK_DOWNLOAD_DEPENDENCIES=OFF
}
