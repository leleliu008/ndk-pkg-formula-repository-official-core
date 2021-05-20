package set summary "Command-line packet(TCP/IP) analyzer"
package set webpage "https://www.tcpdump.org"
package set src.url "https://www.tcpdump.org/release/tcpdump-4.9.3.tar.gz"
package set src.sum "2cd47cb3d460b6ff75f4a9940f594317ad456cfbf2bd2c8e5151e16559db6410"
package set bsystem "configure"
package set dep.pkg "libpcap"

build() {
    configure \
        --without-gcc \
        --disable-smb \
        --disable-universal
}
