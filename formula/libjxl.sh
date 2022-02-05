package set summary "New file format for still image compression"
package set webpage "https://jpeg.org/jpegxl/index.html"
package set git.url "https://github.com/libjxl/libjxl.git"
package set src.url "https://github.com/libjxl/libjxl/archive/v0.6.1.tar.gz"
package set src.sum "ccbd5a729d730152303be399f033b905e608309d5802d77a61a95faa092592c5"
package set license "BSD-3-Clause"
package set dep.pkg "brotli libwebp openexr"
package set dep.cmd "pkg-config realpath bash>=4.0"
package set bsystem "cmake"

prepare() {
    ./deps.sh
}

build() {
    cmakew \
        -DJPEGXL_ENABLE_JNI=OFF \
        -DJPEGXL_ENABLE_TOOLS=ON \
        -DJPEGXL_ENABLE_EXAMPLES=ON \
        -DJPEGXL_ENABLE_MANPAGES=ON \
        -DJPEGXL_ENABLE_BENCHMARK=OFF \
        -DJPEGXL_WARNINGS_AS_ERRORS=ON \
        -DJPEGXL_FORCE_SYSTEM_BROTLI=ON \
        -DJPEGXL_VERSION=$PACKAGE_VERSION
}
