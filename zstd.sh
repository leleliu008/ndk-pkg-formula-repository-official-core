summary  "Zstandard is a real-time compression algorithm"
homepage "https://facebook.github.io/zstd"
url      "https://github.com/facebook/zstd/releases/download/v1.4.5/zstd-1.4.5.tar.gz"
sha256   "98e91c7c6bf162bf90e4e70fdbc41a8188b9fa8de5ad840c401198014406ce9e"
dependencies "xz"

prepare() {
    SOURCE_DIR="$WORKING_DIR/build/cmake"
}

#https://stackoverflow.com/questions/4610086/pthread-cancel-alternatives-in-android-ndk
build() {
    cmake \
    -DCMAKE_HAVE_LIBC_PTHREAD=OFF \
    -DZSTD_MULTITHREAD_SUPPORT=OFF \
    -DZSTD_BUILD_TESTS=OFF \
    -DZSTD_BUILD_CONTRIB=OFF \
    -DZSTD_BUILD_PROGRAMS=ON \
    -DZSTD_BUILD_STATIC=ON \
    -DZSTD_BUILD_SHARED=ON \
    -DZSTD_ZLIB_SUPPORT=ON \
    -DZSTD_LZMA_SUPPORT=ON \
    -DZSTD_LZ4_SUPPORT=OFF \
    -DZLIB_LIBRARY="$SYSTEM_LIBRARY_DIR/libz.a" \
    -DLIBLZMA_INCLUDE_DIR="$xz_INCLUDE_DIR" \
    -DLIBLZMA_LIBRARY="$xz_LIBRARY_DIR/liblzma.a"
}
