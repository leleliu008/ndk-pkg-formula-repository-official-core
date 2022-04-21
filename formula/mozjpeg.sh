package set summary "Improved JPEG encoder"
package set git.url "https://github.com/mozilla/mozjpeg.git"
package set src.url "https://github.com/mozilla/mozjpeg/archive/v4.0.3.tar.gz"
package set src.sum "4f22731db2afa14531a5bf2633d8af79ca5cb697a550f678bf43f24e5e409ef0"
package set license "BSD-3-Clause;LICENSE.md;https://raw.githubusercontent.com/mozilla/mozjpeg/master/LICENSE.md"
package set dep.pkg "libpng"
package set dep.cmd "nasm"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON \
        -DPNG_SUPPORTED=ON \
        -DWITH_JAVA=OFF \
        -DWITH_FUZZ=OFF
}
