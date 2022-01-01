package set summary "Simple JPEG Encoder"
package set git.url "https://github.com/webmproject/sjpeg.git"
package set dep.pkg "libjpeg-turbo libpng"
package set bsystem "cmake"

build() {
    cmakew \
        -DSJPEG_ENABLE_SIMD=ON \
        -DSJPEG_BUILD_EXAMPLES=ON \
        -DSJPEG_ANDROID_NDK_PATH=$ANDROID_NDK_HOME \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
        -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
        -DPNG_LIBRARY="$libpng_LIBRARY_DIR/libpng.so" \
        -DJPEG_INCLUDE_DIR="$libjpeg_turbo_INCLUDE_DIR" \
        -DJPEG_LIBRARY="$libjpeg_turbo_LIBRARY_DIR/libjpeg.so"

}
