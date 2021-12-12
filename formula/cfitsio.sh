package set summary "C access to FITS data files with optional Fortran wrappers"
package set webpage "https://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html"
package set src.url "https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio-4.0.0.tar.gz"
package set src.sum "b2a8efba0b9f86d3e1bd619f662a476ec18112b4f27cc441cc680a4e3777425e"
package set dep.pkg "zlib"
package set bsystem "configure"
package set binsrcd "yes"

prepare() {
    sed_in_place 's|-lpthread|-lc|' configure
}

build() {
    configure --enable-reentrant
}
