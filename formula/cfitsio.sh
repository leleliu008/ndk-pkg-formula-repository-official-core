package set summary "C access to FITS data files with optional Fortran wrappers"
package set webpage "https://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html"
package set src.url "https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio-4.1.0.tar.gz"
package set src.sum "b367c695d2831958e7166921c3b356d5dfa51b1ecee505b97416ba39d1b6c17a"
package set license "Unlicense"
package set dep.pkg "zlib"
package set bsystem "configure"
package set binbstd "yes"

prepare() {
    sed_in_place 's|-lpthread|-lc|' configure
}

build() {
    configure --enable-reentrant
}
