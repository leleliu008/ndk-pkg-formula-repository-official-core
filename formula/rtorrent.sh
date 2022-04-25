pkg_set summary "Ncurses BitTorrent client based on libtorrent-rakshasa"
pkg_set git.url "https://github.com/rakshasa/rtorrent.git"
pkg_set src.url "https://github.com/rakshasa/rtorrent/releases/download/v0.9.8/rtorrent-0.9.8.tar.gz"
pkg_set src.sha "9edf0304bf142215d3bc85a0771446b6a72d0ad8218efbe184b41e4c9c7542af"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.cmd "pkg-config"
pkg_set dep.pkg "ncurses curl libtorrent-rakshasa"

build() {
    configure --enable-ipv6
}
