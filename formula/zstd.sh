pkg_set summary "Zstandard is a real-time compression algorithm"
pkg_set webpage "https://facebook.github.io/zstd"
pkg_set git.url "https://github.com/facebook/zstd.git"
pkg_set src.url "https://github.com/facebook/zstd/archive/v1.5.2.tar.gz"
pkg_set src.sha "f7de13462f7a82c29ab865820149e778cbfe01087b3a55b5332707abf9db4a6e"
pkg_set dep.pkg "xz zlib"
pkg_set bsystem "cmake"
pkg_set bscript "build/cmake"
pkg_set license "BSD-3-Clause;LICENSE;https://raw.githubusercontent.com/facebook/zstd/master/LICENSE GPL-2.0-or-later;COPYING;https://raw.githubusercontent.com/facebook/zstd/dev/COPYING"
pkg_set developer ";;Facebook;https://github.com/facebook"

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
