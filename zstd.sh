package set summary "Zstandard is a real-time compression algorithm"
package set webpage "https://facebook.github.io/zstd"
package set src.url "https://github.com/facebook/zstd/releases/download/v1.4.5/zstd-1.4.5.tar.gz"
package set src.sum "98e91c7c6bf162bf90e4e70fdbc41a8188b9fa8de5ad840c401198014406ce9e"
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
        -DZLIB_LIBRARY="$zlib_LIBRARY_DIR/libz.so" \
        -DLIBLZMA_INCLUDE_DIR="$xz_INCLUDE_DIR" \
        -DLIBLZMA_LIBRARY="$xz_LIBRARY_DIR/liblzma.so"
}
