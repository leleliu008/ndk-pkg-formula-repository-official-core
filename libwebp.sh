summary="Image format providing lossless and lossy compression for web images"
homepage="https://developers.google.com/speed/webp"
url="http://downloads.webmproject.org/releases/webp/libwebp-1.1.0.tar.gz"
sha256="98a052268cc4d5ece27f76572a7f50293f439c17a98e67c4ea0c7ed6f50ef043"
dependencies="libpng libtiff libjpeg-turbo giflib"

build() {
    build_with_cmake
}

build_with_cmake() {
    cmake \
    -DZLIB_LIBRARY="$SYSTEM_LIBRARY_DIR/libz.so" \
    -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
    -DPNG_LIBRARY="$libpng_LIBRARY_DIR/libpng.so" \
    -DJPEG_INCLUDE_DIR="$libjpeg_turbo_INCLUDE_DIR" \
    -DJPEG_LIBRARY="$libjpeg_turbo_LIBRARY_DIR/libjpeg.so"\
    -DTIFF_INCLUDE_DIR="$libtiff_INCLUDE_DIR" \
    -DTIFF_LIBRARY="$libtiff_LIBRARY_DIR/libtiff.a" \
    -DGIF_INCLUDE_DIR="$giflib_INCLUDE_DIR" \
    -DGIF_LIBRARY="$giflib_LIBRARY_DIR/libgif.so"
}

build_with_ndk_build() {
    if [ "$BUILD_ROUND_NUM" -eq 1 ] ; then
        ndk-build NDK_PROJECT_PATH="$SOURCE_DIR" APP_BUILD_SCRIPT="Android.mk" APP_PLATFORM=android-21 ENABLE_SHARED=1 V=1
    fi 
    mkdir -p "$ABI_INSTALL_DIR" &&
    cp -r "$SOURCE_DIR/libs/$BUILD_FOR_ABI" "$ABI_INSTALL_DIR/lib"
}
