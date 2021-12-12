package set summary "TIFF library and utilities"
package set webpage "https://libtiff.gitlab.io/libtiff"
package set src.git "https://gitlab.com/libtiff/libtiff.git"
package set src.url "https://download.osgeo.org/libtiff/tiff-4.3.0.tar.gz"
package set src.sum "0e46e5acb087ce7d1ac53cf4f56a09b221537fc86dfc5daaad1c2e89e1b37ac8"
package set dep.pkg "zstd"
package set bsystem "cmake"

build() {
    cmakew \
        -Dzstd=ON \
        -Dzlib=ON \
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
