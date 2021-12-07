package set summary "Library for reading RAW files from digital photo cameras"
package set webpage "https://www.libraw.org/"
package set src.url "https://www.libraw.org/data/LibRaw-0.20.2.tar.gz"
package set src.sum "dc1b486c2003435733043e4e05273477326e51c3ea554c6864a4eafaff1004a6"
package set license "LGPL-2.1-only"
package set dep.pkg "jasper lcms2"
package set dep.cmd "pkg-config glibtoolize:libtoolize"
package set bsystem "autotools"

build() {
    configure \
        --enable-zlib \
        --enable-jpeg \
        --enable-lcms \
        --enable-jasper \
        --enable-examples
}
