package set summary "C++ network sniffing, packet parsing and crafting framework"
package set webpage "https://pcapplusplus.github.io"
package set git.url "https://github.com/seladb/PcapPlusPlus.git"
package set src.url "https://github.com/seladb/PcapPlusPlus/archive/v21.11.tar.gz"
package set src.url "dir:///home/leleliu008/PcapPlusPlus"
package set src.sum "56b8566b14b2586b8afc358e7c98268bc1dd6192197b29a3917b9df2120c51b0"
package set license "Unlicense"
package set dep.pkg "libpcap"
package set bsystem "make"
package set binsrcd "yes"

build() {
    run ./configure-android.sh \
        --ndk-path "$ANDROID_NDK_ROOT" \
        --target "$TARGET_OS_ABI" \
        --api "$TARGET_OS_VERS" \
        --libpcap-include-dir "$libpcap_INCLUDE_DIR" \
        --libpcap-lib-dir "$libpcap_LIBRARY_DIR" &&
    makew clean &&
    makew all &&
    run install_libs Dist/*.a &&
    run install_incs Dist/header/*.h:pcapplusplus &&
    run install_bins Dist/examples/*
}
