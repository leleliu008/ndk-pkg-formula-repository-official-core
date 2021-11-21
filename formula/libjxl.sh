package set summary "New file format for still image compression"
package set webpage "https://jpeg.org/jpegxl/index.html"
package set src.git "https://github.com/libjxl/libjxl.git"
package set src.url "https://github.com/libjxl/libjxl/archive/v0.6.1.tar.gz"
package set src.sum "ccbd5a729d730152303be399f033b905e608309d5802d77a61a95faa092592c5"
package set license "BSD-3-Clause"
package set dep.cmd "pkg-config realpath"
package set dep.pkg "brotli libwebp openexr"
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
        -DJPEGXL_VERSION=$PACKAGE_VERSION \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
        -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
        -DPNG_LIBRARY="$libpng_LIBRARY_DIR/libpng.so" \
        -DJPEG_INCLUDE_DIR="$libjpeg_turbo_INCLUDE_DIR" \
        -DJPEG_LIBRARY="$libjpeg_turbo_LIBRARY_DIR/libjpeg.so"\
        -DTIFF_INCLUDE_DIR="$libtiff_INCLUDE_DIR" \
        -DTIFF_LIBRARY="$libtiff_LIBRARY_DIR/libtiff.so" \
        -DGIF_INCLUDE_DIR="$giflib_INCLUDE_DIR" \
        -DGIF_LIBRARY="$giflib_LIBRARY_DIR/libgif.so"
}
