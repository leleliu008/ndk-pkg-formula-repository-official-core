pkg_set summary "C access to FITS data files with optional Fortran wrappers"
pkg_set webpage "https://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html"
pkg_set src.url "https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio-4.1.0.tar.gz"
pkg_set src.sha "b367c695d2831958e7166921c3b356d5dfa51b1ecee505b97416ba39d1b6c17a"
pkg_set license "Unlicense"
pkg_set dep.pkg "zlib"
pkg_set bsystem "configure"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|-lpthread|-lc|' configure
}

build() {
    configure --enable-reentrant
}
