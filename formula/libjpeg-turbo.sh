package set summary "JPEG image codec that aids compression and decompression"
package set webpage "https://www.libjpeg-turbo.org"
package set src.git "https://github.com/libjpeg-turbo/libjpeg-turbo.git"
package set src.url "https://downloads.sourceforge.net/project/libjpeg-turbo/2.0.6/libjpeg-turbo-2.0.6.tar.gz"
package set src.sum "d74b92ac33b0e3657123ddcf6728788c90dc84dcb6a52013d758af3c4af481bb"
package set license "IJG"
package set bsystem "cmake"
package set dep.cmd "nasm"

build() {
    cmakew \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON \
        -DWITH_JAVA=OFF
}
