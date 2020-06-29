summary="Image format providing lossless and lossy compression for web images"
homepage="https://developers.google.com/speed/webp"
url="http://downloads.webmproject.org/releases/webp/libwebp-1.1.0.tar.gz"
sha256="98a052268cc4d5ece27f76572a7f50293f439c17a98e67c4ea0c7ed6f50ef043"
dependencies="libpng libtiff libjpeg-turbo giflib"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DCMAKE_C_FLAGS="$CFLAGS" \
    -DCMAKE_CXX_FLAGS="$CFLAGS" \
    -DENABLE_PIC=ON \
    -DENABLE_CLI=ON \
    -DENABLE_SHARED=ON \
    -DENABLE_ASSEMBLY=OFF \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" && \
    make --directory="$DIR_BUILD" -j$(nproc) && \
    make --directory="$DIR_BUILD" install
}

build2() {
    eval test -z "$"build$TIMESTAP && {
        eval build$TIMESTAP='true'
        ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT="Android.mk" APP_PLATFORM=android-21 ENABLE_SHARED=1 V=1
    }
    mkdir -p "$DIR_INSTALL_PREFIX" &&
    cp -r "libs/$TARGET_ABI" "$DIR_INSTALL_PREFIX/lib"
}
