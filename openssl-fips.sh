summary="Cryptography and SSL/TLS Toolkit"
homepage="https://openssl.org"
url="https://www.openssl.org/source/openssl-fips-2.0.16.tar.gz"
sha256="a3cd13d0521d22dd939063d3b4a0d4ce24494374b91408a05bdaca8b681c63d4"

prepare() {
    export LC_COLLATE='C'
    export LC_CTYPE='C'
    sed_in_place 's/-mandroid//g' Configure &&
    sed_in_place 's|./fips_standalone_sha1$(EXE_EXT) fipscanister.o > fipscanister.o.sha1||g' fips/Makefile
}

build() {
    unset TARGET_ARCH
    perl Configure \
        shared \
        no-ssl2 \
        no-ssl3 \
        no-comp \
        no-hw \
        no-engine \
        no-asm \
        -D__ANDROID_API__="$TARGET_API" \
        --prefix="$DIR_INSTALL_PREFIX" \
        "$(get_os_compiler)" &&
    make clean &&
    make install
}

get_os_compiler() {
    case "$TARGET_ABI" in
        armeabi-v7a) msg "android-armv7";;
        arm64-v8a)   msg "android64-aarch64";;
        x86)         msg "android-x86";;
        *)           msg "android";;
    esac
}
