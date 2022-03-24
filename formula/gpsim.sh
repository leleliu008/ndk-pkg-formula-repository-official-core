package set summary "Simulator for Microchip's PIC microcontrollers"
package set webpage "https://gpsim.sourceforge.io/"
package set src.url "https://downloads.sourceforge.net/project/gpsim/gpsim/0.31.0/gpsim-0.31.0.tar.gz"
package set src.sum "110ee6be3a5d02b32803a91e480cbfc9d423ef72e0830703fc0bc97b9569923f"
package set license "GPL-2.0"
package set dep.pkg "glib popt readline"
package set bsystem "configure"
package set binbstd "yes"

build() {
    configure --disable-gui
}
