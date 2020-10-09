summary="Command-line packet(TCP/IP) analyzer"
homepage="https://www.tcpdump.org"
url="https://www.tcpdump.org/release/tcpdump-4.9.3.tar.gz"
sha256="2cd47cb3d460b6ff75f4a9940f594317ad456cfbf2bd2c8e5151e16559db6410"
dependencies="libpcap"

build() {
    configure \
        --without-gcc \
        --disable-smb \
        --disable-universal
}
