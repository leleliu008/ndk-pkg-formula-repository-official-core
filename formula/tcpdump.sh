pkg_set summary "Command-line packet(TCP/IP) analyzer"
pkg_set webpage "https://www.tcpdump.org"
pkg_set git.url "https://github.com/the-tcpdump-group/tcpdump.git"
pkg_set src.url "https://www.tcpdump.org/release/tcpdump-4.99.1.tar.gz"
pkg_set src.sha "79b36985fb2703146618d87c4acde3e068b91c553fb93f021a337f175fd10ebe"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "libpcap"
pkg_set bsystem "cmake"

build() {
    cat > "$PACKAGE_INSTALLING_BST_DIR/cmake/Modules/FindPCAP.cmake" <<EOF
set(PCAP_FOUND TRUE)
set(PCAP_INCLUDE_DIRS "$libpcap_INCLUDE_DIR")
set(PCAP_LIBRARIES "$libpcap_LIBRARY_DIR/libpcap.so")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(PCAP REQUIRED_VARS PCAP_LIBRARIES PCAP_INCLUDE_DIRS)

mark_as_advanced(PCAP_INCLUDE_DIRS PCAP_LIBRARIES)
EOF

    cmakew \
        -DWITH_SMI=OFF \
        -DWITH_CAP_NG=OFF \
        -DENABLE_SMB=OFF
}
