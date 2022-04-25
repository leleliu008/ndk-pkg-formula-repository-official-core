pkg_set summary "Improved JPEG encoder"
pkg_set git.url "https://github.com/mozilla/mozjpeg.git"
pkg_set src.url "https://github.com/mozilla/mozjpeg/archive/v4.0.3.tar.gz"
pkg_set src.sha "4f22731db2afa14531a5bf2633d8af79ca5cb697a550f678bf43f24e5e409ef0"
pkg_set license "BSD-3-Clause;LICENSE.md;https://raw.githubusercontent.com/mozilla/mozjpeg/master/LICENSE.md"
pkg_set dep.pkg "libpng"
pkg_set dep.cmd "nasm"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON \
        -DPNG_SUPPORTED=ON \
        -DWITH_JAVA=OFF \
        -DWITH_FUZZ=OFF
}
