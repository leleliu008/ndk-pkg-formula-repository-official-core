summary="Library for manipulating PNG images"
homepage="http://www.libpng.org/pub/png/libpng.html"
url="https://downloads.sourceforge.net/libpng/libpng-1.6.37.tar.xz"
sha256="505e70834d35383537b6491e7ae8641f1a4bed1876dbfe361201fc80868d88ca"

build() {
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

LOCAL_MODULE    := png
LOCAL_SRC_FILES := \$(shell ls png*.c arm/*.c arm/*.S | awk '{gsub("pnglibconf.c","");print}')
LOCAL_LDLIBS    += -lz
LOCAL_CFLAGS    += -Os -v -DHAVE_CONFIG_H

include \$(BUILD_SHARED_LIBRARY)
EOF
    [ -f config.h ] || ./configure
    [ -f pnglibconf.h ] || make pnglibconf.h
    ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk APP_PLATFORM=android-21 V=1
}
