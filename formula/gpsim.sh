pkg_set summary "Simulator for Microchip PIC microcontrollers"
pkg_set webpage "https://gpsim.sourceforge.io/"
pkg_set src.url "https://downloads.sourceforge.net/project/gpsim/gpsim/0.31.0/gpsim-0.31.0.tar.gz"
pkg_set src.sha "110ee6be3a5d02b32803a91e480cbfc9d423ef72e0830703fc0bc97b9569923f"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "glib popt readline"
pkg_set bsystem "configure"
pkg_set binbstd "yes"

build() {
    configure --disable-gui
}
