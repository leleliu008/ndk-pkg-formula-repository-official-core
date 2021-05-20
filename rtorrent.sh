package set summary "Ncurses BitTorrent client based on libtorrent-rakshasa"
package set src.git "https://github.com/rakshasa/rtorrent.git"
package set src.url "https://github.com/rakshasa/rtorrent/releases/download/v0.9.8/rtorrent-0.9.8.tar.gz"
package set src.sum "9edf0304bf142215d3bc85a0771446b6a72d0ad8218efbe184b41e4c9c7542af"
package set license "GPL-2.0"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "ncurses curl libtorrent-rakshasa"

build() {
    configure --enable-ipv6
}
