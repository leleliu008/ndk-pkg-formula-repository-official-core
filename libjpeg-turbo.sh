summary="JPEG image codec that aids compression and decompression"
homepage="https://www.libjpeg-turbo.org"
url="https://downloads.sourceforge.net/project/libjpeg-turbo/2.0.4/libjpeg-turbo-2.0.4.tar.gz"
sha256="33dd8547efd5543639e890efbf2ef52d5a21df81faf41bb940657af916a23406"

build() {
    cmake \
    -DENABLE_STATIC=ON \
    -DENABLE_SHARED=ON
}
