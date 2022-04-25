pkg_set summary "C++ network sniffing, packet parsing and crafting framework"
pkg_set webpage "https://pcapplusplus.github.io"
pkg_set git.url "https://github.com/seladb/PcapPlusPlus.git"
#pkg_set src.url "https://github.com/seladb/PcapPlusPlus/archive/v21.11.tar.gz"
#pkg_set src.sha "56b8566b14b2586b8afc358e7c98268bc1dd6192197b29a3917b9df2120c51b0"
pkg_set license "Unlicense"
pkg_set dep.pkg "libpcap"
pkg_set bsystem "make"
pkg_set binbstd "yes"

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
