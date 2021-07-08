package set summary "OpenFabrics libfabric"
package set webpage "https://ofiwg.github.io/libfabric/"
package set src.git "https://github.com/ofiwg/libfabric.git"
package set src.url "https://github.com/ofiwg/libfabric/releases/download/v1.13.0/libfabric-1.13.0.tar.bz2"
package set src.sum "0c68264ae18de5c31857724c754023351614330bd61a50b40cef2b5e8f63ab28"
package set license "BSD-2-Clause GPL-2.0-only"
package set bsystem "configure"

prepare() {
    sed_in_place 's|-lpthread||g' configure
}
