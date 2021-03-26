summary "JPEG image codec that aids compression and decompression"
webpage "https://www.libjpeg-turbo.org"
src_git "https://github.com/libjpeg-turbo/libjpeg-turbo.git"
src_url "https://downloads.sourceforge.net/project/libjpeg-turbo/2.0.6/libjpeg-turbo-2.0.6.tar.gz"
src_sum "d74b92ac33b0e3657123ddcf6728788c90dc84dcb6a52013d758af3c4af481bb"
license "IJG"
bsystem "cmake"
require "nasm"

build() {
    cmake \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON \
        -DWITH_JAVA=OFF
}
