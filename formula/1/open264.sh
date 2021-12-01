package set summary "Open Source H.264 Codec"
package set src.git "https://github.com/cisco/openh264.git"
package set src.url "https://github.com/cisco/openh264/archive/refs/tags/v2.1.1.tar.gz"
package set src.sum "af173e90fce65f80722fa894e1af0d6b07572292e76de7b65273df4c0a8be678"
package set dep.cmd "nasm"
package set dep.jdk "yes"
package set dep.sdk "yes"
package set bsystem "make"
package set binsrcd "yes"

build() {
    case $TARGET_OS_ARCH in
        armv7a)  TARGET_OS_ARCH=arm   ;;
        aarch64) TARGET_OS_ARCH=arm64 ;;
        i686)    TARGET_OS_ARCH=x86   ;;
        x86_64)  TARGET_OS_ARCH=x86_64;;
    esac
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" OS=android ARCH=$TARGET_OS_ARCH NDKROOT=$ANDROID_NDK_ROOT TARGET=android-30 NDKLEVEL=$TARGET_OS_VERS NDK_TOOLCHAIN_VERSION=clang
}
