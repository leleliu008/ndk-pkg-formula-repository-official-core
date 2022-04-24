package set summary "JPEG image codec that aids compression and decompression"
package set webpage "https://www.libjpeg-turbo.org"
package set git.url "https://github.com/libjpeg-turbo/libjpeg-turbo.git"
package set src.url "https://downloads.sourceforge.net/project/libjpeg-turbo/2.1.3/libjpeg-turbo-2.1.3.tar.gz"
package set src.sum "467b310903832b033fe56cd37720d1b73a6a3bd0171dbf6ff0b620385f4f76d0"
package set license "IJG;LICENSE.md;https://raw.githubusercontent.com/libjpeg-turbo/libjpeg-turbo/main/LICENSE.md"
package set dep.cmd "nasm"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON \
        -DWITH_JAVA=OFF
}
