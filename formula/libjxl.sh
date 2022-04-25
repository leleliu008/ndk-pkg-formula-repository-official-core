pkg_set summary "New file format for still image compression"
pkg_set webpage "https://jpeg.org/jpegxl/index.html"
pkg_set git.url "https://github.com/libjxl/libjxl.git"
pkg_set src.url "https://github.com/libjxl/libjxl/archive/v0.6.1.tar.gz"
pkg_set src.sha "ccbd5a729d730152303be399f033b905e608309d5802d77a61a95faa092592c5"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "brotli libwebp openexr"
pkg_set dep.cmd "pkg-config realpath bash>=4.0"
pkg_set bsystem "cmake"

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
