pkg_set summary "OpenFabrics libfabric"
pkg_set webpage "https://ofiwg.github.io/libfabric/"
pkg_set git.url "https://github.com/ofiwg/libfabric.git"
pkg_set src.url "https://github.com/ofiwg/libfabric/releases/download/v1.13.0/libfabric-1.13.0.tar.bz2"
pkg_set src.sha "0c68264ae18de5c31857724c754023351614330bd61a50b40cef2b5e8f63ab28"
pkg_set license "BSD-2-Clause GPL-2.0-only"
pkg_set bsystem "configure"

prepare() {
    sed_in_place 's|-lpthread||g' configure
}
