package set summary "ANSI C compiler for Intel 8051, Maxim 80DS390, and Zilog Z80"
package set webpage "https://sdcc.sourceforge.io/"
package set src.url "https://downloads.sourceforge.net/project/sdcc/sdcc/4.1.0/sdcc-src-4.1.0.tar.bz2"
package set src.sum "81edf776d5a2dc61a4b5c3408929db7b25874d69c46e4a71b116be1322fd533f"
package set dep.pkg "boost readline"
package set dep.cmd "bison flex gpasm gplib gplink sdcc"
package set bsystem "configure"

prepare() {
    sed_in_place '/SDCC = /c SDCC = sdcc' support/regression/Makefile.in
}
