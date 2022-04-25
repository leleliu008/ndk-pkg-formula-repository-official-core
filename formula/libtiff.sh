pkg_set summary "TIFF library and utilities"
pkg_set webpage "https://libtiff.gitlab.io/libtiff"
pkg_set git.url "https://gitlab.com/libtiff/libtiff.git"
pkg_set src.url "https://download.osgeo.org/libtiff/tiff-4.3.0.tar.gz"
pkg_set src.sha "0e46e5acb087ce7d1ac53cf4f56a09b221537fc86dfc5daaad1c2e89e1b37ac8"
pkg_set license "libtiff;COPYRIGHT;https://gitlab.com/libtiff/libtiff/-/raw/master/COPYRIGHT"
pkg_set dep.pkg "zstd"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -Dzstd=ON \
        -Dzlib=ON \
        -Dlzma=ON \
        -Dlzw=ON \
        -Dwebp=OFF \
        -Djpeg=OFF
}
