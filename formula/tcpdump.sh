package set summary "Command-line packet(TCP/IP) analyzer"
package set webpage "https://www.tcpdump.org"
package set git.url "https://github.com/the-tcpdump-group/tcpdump.git"
package set src.url "https://www.tcpdump.org/release/tcpdump-4.99.1.tar.gz"
package set src.sum "79b36985fb2703146618d87c4acde3e068b91c553fb93f021a337f175fd10ebe"
package set dep.pkg "libpcap"
package set bsystem "cmake"

build() {
    cat > "$SOURCE_DIR/cmake/Modules/FindPCAP.cmake" <<EOF
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
        -DENABLE_SMB=OFF \
        -DCRYPTO_INCLUDE_DIR="$openssl_INCLUDE_DIR" \
        -DCRYPTO_LIBRARY="$openssl_LIBRARY_DIR/libcrypto.a"
}
