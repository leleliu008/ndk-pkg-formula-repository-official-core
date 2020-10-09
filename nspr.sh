summary="Platform-neutral API for system-level and libc-like functions"
homepage="https://developer.mozilla.org/docs/Mozilla/Projects/NSPR"
url="https://archive.mozilla.org/pub/nspr/releases/v4.29/src/nspr-4.29.tar.gz"
sha256="22286bdb8059d74632cc7c2865c139e63953ecfb33bf4362ab58827e86e92582"
license="MPL-2.0"

build() {
    sed_in_place "/AS=\"\$android_toolchain\"/c AS=\"$AS\"" nspr/configure &&
    sed_in_place "/CC=\"\$android_toolchain\"/c CC=\"$CC\"" nspr/configure &&
    sed_in_place "/CXX=\"\$android_toolchain\"/c CXX=\"$CXX\"" nspr/configure &&
    sed_in_place "/CPP=\"\$android_toolchain\"/c CPP=\"$CPP\"" nspr/configure &&
    sed_in_place "/LD=\"\$android_toolchain\"/c LD=\"$LD\"" nspr/configure &&
    sed_in_place "/AR=\"\$android_toolchain\"/c AR=\"$AR\"" nspr/configure &&
    sed_in_place "/RANLIB=\"\$android_toolchain\"/c RANLIB=\"$RANLIB\"" nspr/configure &&
    sed_in_place "/STRIP=\"\$android_toolchain\"/c STRIP=\"$STRIP\"" nspr/configure &&
    sed_in_place "/CPPFLAGS=\"-I\$android_platform/c CPPFLAGS=\"$CPPFLAGS\"" nspr/configure &&
    sed_in_place "/CFLAGS=\"-mandroid/c CFLAGS=\"$CFLAGS\"" nspr/configure &&
    sed_in_place "/CXXFLAGS=\"-mandroid/c CXXFLAGS=\"$CXXFLAGS\"" nspr/configure &&
    sed_in_place "/LDFLAGS=\"-mandroid/c LDFLAGS=\"$LDFLAGS\"" nspr/configure &&
    sed_in_place '/os_Linux_x86.s/d' nspr/configure &&
    nspr/configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-strip \
        --enable-ipv6 \
        --disable-cplus \
        --with-pthreads \
        --with-android-ndk=xx \
        --with-android-toolchain=xx \
        --with-android-platform=xx \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        HOST_CC='/usr/bin/cc' \
        HOST_CXX='/usr/bin/c++' \
        HOST_CFLAGS='' \
        HOST_CXXFLAGS='' \
        HOST_LDFLAGS='' &&
    make clean &&
    make &&
    make install
}
