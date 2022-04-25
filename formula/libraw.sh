pkg_set summary "Library for reading RAW files from digital photo cameras"
pkg_set webpage "https://www.libraw.org/"
pkg_set src.url "https://www.libraw.org/data/LibRaw-0.20.2.tar.gz"
pkg_set src.sha "dc1b486c2003435733043e4e05273477326e51c3ea554c6864a4eafaff1004a6"
pkg_set license "LGPL-2.1-only"
pkg_set dep.pkg "jasper lcms2"
pkg_set dep.cmd "pkg-config glibtoolize:libtoolize"
pkg_set bsystem "autotools"

build() {
    configure \
        --enable-zlib \
        --enable-jpeg \
        --enable-lcms \
        --enable-jasper \
        --enable-examples
}
