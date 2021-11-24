package set summary "Command-driven, interactive function plotting"
package set webpage "http://www.gnuplot.info/"
package set src.url "https://downloads.sourceforge.net/project/gnuplot/gnuplot/5.4.2/gnuplot-5.4.2.tar.gz"
package set src.sum "e57c75e1318133951d32a83bcdc4aff17fed28722c4e71f2305cfc2ae1cae7ba"
package set license "gnuplot"
package set dep.pkg "gd libcerf lua pango readline"
package set dep.cmd "pkg-config lua"
package set bsystem "autotools"

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
