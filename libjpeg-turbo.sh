summary "JPEG image codec that aids compression and decompression"
webpage "https://www.libjpeg-turbo.org"
src_url "https://downloads.sourceforge.net/project/libjpeg-turbo/2.0.4/libjpeg-turbo-2.0.4.tar.gz"
src_sum "33dd8547efd5543639e890efbf2ef52d5a21df81faf41bb940657af916a23406"
require "cmake"

build() {
    cmake \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON \
        -DWITH_JAVA=OFF
}
