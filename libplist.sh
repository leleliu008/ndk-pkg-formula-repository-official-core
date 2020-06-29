summary="Library for Apple Binary- and XML-Property Lists"
homepage="https://www.libimobiledevice.org"
url="https://github.com/libimobiledevice/libplist/releases/download/2.2.0/libplist-2.2.0.tar.bz2"
sha256="4a5517e5377ec421df84c586ba85bb4e1d26f11ad203d7d450a907c0156fbd9a"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-option-checking \
        --enable-debug \
        --enable-static \
        --enable-shared \
        --without-cython \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG="" &&
    make clean &&
    make install
}

build2() {
    cat > Android.mk <<EOF
LOCAL_PATH      := \$(call my-dir)

include \$(CLEAR_VARS)

LOCAL_MODULE    := plist
LOCAL_SRC_FILES := \$(shell ls src/*.c src/*.cpp libcnary/*.c)
LOCAL_C_INCLUDES += src include libcnary/include
LOCAL_CFLAGS     += -Os -v

include \$(BUILD_SHARED_LIBRARY)
EOF

    ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk APP_PLATFORM=android-21 V=1
}
