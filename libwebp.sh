summary="Image format providing lossless and lossy compression for web images"
homepage="https://developers.google.com/speed/webp"
url="http://downloads.webmproject.org/releases/webp/libwebp-1.1.0.tar.gz"
sha256="98a052268cc4d5ece27f76572a7f50293f439c17a98e67c4ea0c7ed6f50ef043"
dependencies="libpng libtiff libjpeg-turbo giflib"

build() {
    cmake \
    -DZLIB_LIBRARY="$FILE_PATH_LIBZ_SO" \
    -DPNG_PNG_INCLUDE_DIR="$libpng_DIR_INCLUDE" \
    -DPNG_LIBRARY="$libpng_DIR_LIB/libpng.so" \
    -DJPEG_INCLUDE_DIR="$libjpeg_turbo_DIR_INCLUDE" \
    -DJPEG_LIBRARY="$libjpeg_turbo_DIR_LIB/libjpeg.so"\
    -DTIFF_INCLUDE_DIR="$libtiff_DIR_INCLUDE" \
    -DTIFF_LIBRARY="$libtiff_DIR_LIB/libtiff.so" \
    -DGIF_INCLUDE_DIR="$giflib_DIR_INCLUDE" \
    -DGIF_LIBRARY="$giflib_DIR_LIB/libgif.so"
}

build2() {
    eval test -z "$"build$TIMESTAP && {
        eval build$TIMESTAP='true'
        ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT="Android.mk" APP_PLATFORM=android-21 ENABLE_SHARED=1 V=1
    }
    mkdir -p "$DIR_INSTALL_PREFIX" &&
    cp -r "libs/$TARGET_ABI" "$DIR_INSTALL_PREFIX/lib"
}
