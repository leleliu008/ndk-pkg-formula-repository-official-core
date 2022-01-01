package set summary "Zstandard is a real-time compression algorithm"
package set webpage "https://facebook.github.io/zstd"
package set git.url "https://github.com/facebook/zstd.git"
package set src.url "https://github.com/facebook/zstd/archive/v1.5.1.tar.gz"
package set src.sum "dc05773342b28f11658604381afd22cb0a13e8ba17ff2bd7516df377060c18dd"
package set bsystem "cmake"
package set dep.pkg "xz zlib"
package set sourced "build/cmake"

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
        -DZSTD_LZ4_SUPPORT=OFF \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY="$zlib_LIBRARY_DIR/libz.a" \
        -DLIBLZMA_INCLUDE_DIR="$xz_INCLUDE_DIR" \
        -DLIBLZMA_LIBRARY="$xz_LIBRARY_DIR/liblzma.a"
}
