package set summary "TIFF library and utilities"
package set webpage "https://libtiff.gitlab.io/libtiff"
package set git.url "https://gitlab.com/libtiff/libtiff.git"
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
        -Djpeg=OFF
}
