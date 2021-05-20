package set summary "Platform-neutral API for system-level and libc-like functions"
package set webpage "https://developer.mozilla.org/docs/Mozilla/Projects/NSPR"
package set src.url "https://archive.mozilla.org/pub/nspr/releases/v4.29/src/nspr-4.29.tar.gz"
package set src.sum "22286bdb8059d74632cc7c2865c139e63953ecfb33bf4362ab58827e86e92582"
package set license "MPL-2.0"
package set sourced "nspr"

prepare() {
    sed_in_place '/AS="$android_toolchain"/d'       configure &&
    sed_in_place '/CC="$android_toolchain"/d'       configure &&
    sed_in_place '/CXX="$android_toolchain"/d'      configure &&
    sed_in_place '/CPP="$android_toolchain"/d'      configure &&
    sed_in_place '/LD="$android_toolchain"/d'       configure &&
    sed_in_place '/AR="$android_toolchain"/d'       configure &&
    sed_in_place '/RANLIB="$android_toolchain"/d'   configure &&
    sed_in_place '/STRIP="$android_toolchain"/d'    configure &&
    sed_in_place '/CPPFLAGS="-I$android_platform/d' configure &&
    sed_in_place '/CFLAGS="-mandroid/d'             configure &&
    sed_in_place '/CXXFLAGS="-mandroid/d'           configure &&
    sed_in_place '/LDFLAGS="-mandroid/d'            configure &&
    sed_in_place '/os_Linux_x86.s/d'                configure
}

build() {
    configure \
        --enable-strip \
        --enable-ipv6 \
        --disable-cplus \
        --with-pthreads \
        --with-android-ndk=xx \
        --with-android-toolchain=xx \
        --with-android-platform=xx \
        HOST_CC="$CC_FOR_BUILD" \
        HOST_CXX="$CXX_FOR_BUILD" \
        HOST_CFLAGS='' \
        HOST_CXXFLAGS='' \
        HOST_LDFLAGS=''
}
