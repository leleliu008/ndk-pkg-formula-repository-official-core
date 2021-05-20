package set summary "TIFF library and utilities"
package set webpage "https://libtiff.gitlab.io/libtiff"
package set src.url "https://download.osgeo.org/libtiff/tiff-4.1.0.tar.gz"
package set src.sum "5d29f32517dadb6dbcd1255ea5bbc93a2b54b94fbf83653b4d65c7d6775b8634"
package set bsystem "cmake"
package set dep.pkg "zlib zstd xz"

build() {
    cmakew \
    -Dzlib=ON \
    -Dzstd=ON \
    -Dlzma=ON \
    -Dlzw=ON \
    -Dwebp=OFF \
    -Djpeg=OFF \
    -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
    -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
    -DZSTD_INCLUDE_DIR="$zstd_INCLUDE_DIR" \
    -DZSTD_LIBRARY="$zstd_LIBRARY_DIR/libzstd.so" \
    -DLIBLZMA_INCLUDE_DIR="$xz_INCLUDE_DIR" \
    -DLIBLZMA_LIBRARY_RELEASE="$xz_LIBRARY_DIR/liblzma.so"
}
