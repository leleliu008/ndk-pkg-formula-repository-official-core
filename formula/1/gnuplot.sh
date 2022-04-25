pkg_set summary "Command-driven, interactive function plotting"
pkg_set webpage "http://www.gnuplot.info/"
pkg_set src.url "https://downloads.sourceforge.net/project/gnuplot/gnuplot/5.4.2/gnuplot-5.4.2.tar.gz"
pkg_set src.sha "e57c75e1318133951d32a83bcdc4aff17fed28722c4e71f2305cfc2ae1cae7ba"
pkg_set license "gnuplot"
pkg_set dep.pkg "gd libcerf lua pango readline"
pkg_set dep.cmd "pkg-config lua"
pkg_set bsystem "autotools"

prepare() {
    sed_in_place 's|docs||g' Makefile.am &&
    run autoreconf -ivf
}

build() {
    configure \
        --without-x \
        --without-qt \
        --disable-wxwidgets
}
