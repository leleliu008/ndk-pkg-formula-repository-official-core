summary "Command-line packet(TCP/IP) analyzer"
webpage "https://www.tcpdump.org"
src_url "https://www.tcpdump.org/release/tcpdump-4.9.3.tar.gz"
src_sum "2cd47cb3d460b6ff75f4a9940f594317ad456cfbf2bd2c8e5151e16559db6410"
depends "libpcap"

build() {
    configure \
        --without-gcc \
        --disable-smb \
        --disable-universal
}
