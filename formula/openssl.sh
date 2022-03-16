package set summary "Cryptography and SSL/TLS Toolkit"
package set webpage "https://openssl.org"
package set git.url "https://github.com/openssl/openssl.git"
package set src.url "https://www.openssl.org/source/openssl-1.1.1m.tar.gz"
package set src.sum "f89199be8b23ca45fc7cb9f1d8d3ee67312318286ad030f5316aca6462db6c96"
package set license "OpenSSL"
package set dep.cmd "perl"
package set bsystem "make"
package set binsrcd 'yes'

prepare() {
    sed_in_place '/-mandroid/d'           Configurations/15-android.conf &&
    sed_in_place '/ndk is invalid/d'      Configurations/15-android.conf &&
    sed_in_place '/no NDK $triarch-gcc/d' Configurations/15-android.conf &&
    sed_in_place '/-target/d'             Configurations/15-android.conf &&
    sed_in_place '/-gcc-toolchain/d'      Configurations/15-android.conf &&
    sed_in_place '/tritools-4.9/d'        Configurations/15-android.conf
}

#注意：1.0.2以上的openssl不支持openssl-fips，从openssl3.0开始支持新设计的openssl-fips
#https://github.com/openssl/openssl/issues/7582
build() {
    export CROSS_SYSROOT=$SYSROOT
    
    run ./Configure \
        shared \
        no-makedepend \
        no-ssl2 \
        no-ssl3 \
        no-comp \
        no-hw \
        no-engine \
        no-asm \
        -D__ANDROID_API__="$TARGET_OS_VERS" \
        --prefix="$TARGET_INSTALL_DIR" \
        "$(os_compiler)" &&
    makew clean &&
    makew CROSS_COMPILE= &&
    makew CROSS_COMPILE= install
}

os_compiler() {
    # ./configure LIST | grep android
    case $TARGET_OS_ARCH in
        armv7a)  echo "android-arm"    ;;
        aarch64) echo "android-arm64"  ;;
        i686)    echo "android-x86"    ;;
        x86_64)  echo "android-x86_64" ;;
    esac
}
