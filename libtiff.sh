summary  "TIFF library and utilities"
homepage "https://libtiff.gitlab.io/libtiff"
url      "https://download.osgeo.org/libtiff/tiff-4.1.0.tar.gz"
sha256   "5d29f32517dadb6dbcd1255ea5bbc93a2b54b94fbf83653b4d65c7d6775b8634"

build() {
    cmake \
    -Dzlib=ON \
    -Dzstd=OFF \
    -Dlzma=OFF \
    -Dlzw=OFF \
    -Dwebp=OFF \
    -Djpeg=OFF
}
