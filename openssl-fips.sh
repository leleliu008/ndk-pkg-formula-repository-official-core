summary "Cryptography and SSL/TLS Toolkit"
webpage "https://openssl.org"
src_url "https://www.openssl.org/source/openssl-fips-2.0.16.tar.gz"
src_sum "a3cd13d0521d22dd939063d3b4a0d4ce24494374b91408a05bdaca8b681c63d4"
bsystem "make"
require "perl"

prepare() {
    export LC_COLLATE='C'
    export LC_CTYPE='C'
    sed_in_place 's/-mandroid//g' Configure &&
    sed_in_place 's|./fips_standalone_sha1$(EXE_EXT) fipscanister.o > fipscanister.o.sha1||g' fips/Makefile
}

build_in_sourced

build() {
    run perl Configure \
        shared \
        no-ssl2 \
        no-ssl3 \
        no-comp \
        no-hw \
        no-engine \
        no-asm \
        -D__ANDROID_API__="$TARGET_OS_VERS" \
        --prefix="$ABI_INSTALL_DIR" \
        "$(get_os_compiler)" &&
    make clean &&
    make install
}

get_os_compiler() {
    case $TARGET_OS_ARCH in
        armv7a)  echo "android-armv7"     ;;
        aarch64) echo "android64-aarch64" ;;
        i686)    echo "android-x86"       ;;
        *)       echo "android"           ;;
    esac
}
