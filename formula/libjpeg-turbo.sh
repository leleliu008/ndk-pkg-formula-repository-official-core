pkg_set summary "JPEG image codec that aids compression and decompression"
pkg_set webpage "https://www.libjpeg-turbo.org"
pkg_set git.url "https://github.com/libjpeg-turbo/libjpeg-turbo.git"
pkg_set src.url "https://downloads.sourceforge.net/project/libjpeg-turbo/2.1.3/libjpeg-turbo-2.1.3.tar.gz"
pkg_set src.sha "467b310903832b033fe56cd37720d1b73a6a3bd0171dbf6ff0b620385f4f76d0"
pkg_set dep.cmd "nasm"
pkg_set bsystem "cmake"
pkg_set license "|LICENSE.md|https://raw.githubusercontent.com/libjpeg-turbo/libjpeg-turbo/main/LICENSE.md"
pkg_set developer "|information@libjpeg-turbo.org"

build() {
    cmakew \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON \
        -DWITH_JAVA=OFF
}
