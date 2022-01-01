package set summary "Optimized BLAS library"
package set webpage "https://www.openblas.net"
package set git.url "https://github.com/xianyi/OpenBLAS.git"
package set src.url "https://github.com/xianyi/OpenBLAS/archive/v0.3.19.tar.gz"
package set src.sum "947f51bfe50c2a0749304fbe373e00e7637600b0a47b78a51382aeb30ca08562"
package set license "BSD-3-Clause"
package set bsystem "make"
package set binsrcd 'yes'

build() {
    # https://github.com/xianyi/OpenBLAS/wiki/How-to-build-OpenBLAS-for-Android
    case $TARGET_OS_ARCH in
        armv7a)  ARCH=arm   ; TARGET='ARMV7' ; BINARY=32 ; ARM_SOFTFP_ABI=1 ;;
        aarch64) ARCH=arm64 ; TARGET='ARMV8' ; BINARY=64 ; ARM_SOFTFP_ABI=1 ;;
        i686)    ARCH=x86   ; TARGET='ATOM'  ; BINARY=32 ; ARM_SOFTFP_ABI=1 ;;
        x86_64)  ARCH=x86_64; TARGET='ATOM'  ; BINARY=64 ; ARM_SOFTFP_ABI=1 ;;
    esac
    makew clean OSNAME=Android ARCH=$ARCH TARGET=$TARGET HOSTCC="$CC_FOR_BUILD" &&
    makew       OSNAME=Android ARCH=$ARCH TARGET=$TARGET HOSTCC="$CC_FOR_BUILD" ONLY_CBLAS=1 ARM_SOFTFP_ABI=$ARM_SOFTFP_ABI CC="$CC" AS="$AS" AR="$AR" &&
    makew install PREFIX="$ABI_INSTALL_DIR"
}
