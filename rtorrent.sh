summary "Ncurses BitTorrent client based on libtorrent-rakshasa"
webpage "https://github.com/rakshasa/rtorrent"
src_url "https://github.com/rakshasa/rtorrent/releases/download/v0.9.8/rtorrent-0.9.8.tar.gz"
src_sum "9edf0304bf142215d3bc85a0771446b6a72d0ad8218efbe184b41e4c9c7542af"
license "GPL-2.0"
require "make pkg-config"
depends "ncurses curl libtorrent-rakshasa"

build() {
    configure --enable-ipv6
}
