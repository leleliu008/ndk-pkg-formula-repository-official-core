summary="QR Code generation"
homepage="https://fukuchi.org/works/qrencode"
url="https://fukuchi.org/works/qrencode/qrencode-4.0.2.tar.gz"
sha256="dbabe79c07614625d1f74d8c0ae2ee5358c4e27eab8fd8fe31f9365f821a3b1d"
dependencies="libpng"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DBUILD_SHARED_LIBS=ON \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -DPNG_PNG_INCLUDE_DIR="$libpng_DIR_INCLUDE" \
    -DPNG_LIBRARY_RELEASE="$libpng_DIR_LIB/libpng.so" \
    -DZLIB_LIBRARY_RELEASE="$FILE_PATH_LIBZ_SO" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" && \
    make --directory="$DIR_BUILD" -j$(nproc) && \
    make --directory="$DIR_BUILD" install
}

build2() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}

build3() {
    cat > Android.mk <<EOF
LOCAL_PATH      := \$(call my-dir)

include \$(CLEAR_VARS)

LOCAL_MODULE    := qrencode
LOCAL_SRC_FILES := \$(shell ls *.c | awk '{gsub("qrenc.c", "");print}')

LOCAL_LDFLAGS   += -L$libpng_DIR_INSTALL_PREFIX/\$(TARGET_ABI)/lib
LOCAL_LDLIBS    += -lpng

LOCAL_C_INCLUDES += $libpng_DIR_INSTALL_PREFIX/\$(TARGET_ABI)/include
LOCAL_CFLAGS     += -Os -v -DHAVE_CONFIG_H

include \$(BUILD_SHARED_LIBRARY)
EOF
    [ -f config.h ] || ./configure
    ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk APP_PLATFORM=android-21 APP_ABI=armeabi-v7a
}
