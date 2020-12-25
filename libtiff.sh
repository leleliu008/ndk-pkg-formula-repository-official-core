summary "TIFF library and utilities"
webpage "https://libtiff.gitlab.io/libtiff"
src_url "https://download.osgeo.org/libtiff/tiff-4.1.0.tar.gz"
src_sum "5d29f32517dadb6dbcd1255ea5bbc93a2b54b94fbf83653b4d65c7d6775b8634"

build() {
    cmake \
    -Dzlib=ON \
    -Dzstd=OFF \
    -Dlzma=OFF \
    -Dlzw=OFF \
    -Dwebp=OFF \
    -Djpeg=OFF
}
