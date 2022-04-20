package set summary "Zstandard is a real-time compression algorithm"
package set webpage "https://facebook.github.io/zstd"
package set git.url "https://github.com/facebook/zstd.git"
package set src.url "https://github.com/facebook/zstd/archive/v1.5.2.tar.gz"
package set src.sum "f7de13462f7a82c29ab865820149e778cbfe01087b3a55b5332707abf9db4a6e"
package set license "BSD-3-Clause"
package set dep.pkg "xz zlib"
package set bsystem "cmake"
package set bscript "build/cmake"

build() {
    cmakew \
        -DZSTD_MULTITHREAD_SUPPORT=ON \
        -DZSTD_BUILD_TESTS=OFF \
        -DZSTD_BUILD_CONTRIB=OFF \
        -DZSTD_BUILD_PROGRAMS=ON \
        -DZSTD_BUILD_STATIC=ON \
        -DZSTD_BUILD_SHARED=ON \
        -DZSTD_ZLIB_SUPPORT=ON \
        -DZSTD_LZMA_SUPPORT=ON \
        -DZSTD_LZ4_SUPPORT=OFF
}
