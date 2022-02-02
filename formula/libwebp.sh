package set summary "Image format providing lossless and lossy compression for web images"
package set webpage "https://developers.google.com/speed/webp"
package set git.url "https://chromium.googlesource.com/webm/libwebp.git"
package set src.url "http://downloads.webmproject.org/releases/webp/libwebp-1.2.2.tar.gz"
package set src.sum "7656532f837af5f4cec3ff6bafe552c044dc39bf453587bd5b77450802f4aee6"
package set dep.pkg "libpng libtiff libjpeg-turbo giflib"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

build() {
    cmakew \
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
