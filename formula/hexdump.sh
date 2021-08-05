package set summary "hexdump library and cli"
package set webpage "https://www.25thandclement.com/~william/projects/hexdump.c.html"
package set src.git "https://github.com/wahern/hexdump.git"
package set src.url "https://github.com/wahern/hexdump/archive/refs/tags/rel-20181215.tar.gz"
package set src.sum "882975323317f595093125467d7b9604f78bded7ba1005f5fc17e33358cdb0fa"
package set bsystem "make"
package set binsrcd 'true'

prepare() {
    sed_in_place '/VENDOR_OS =/d' GNUmakefile
}

build() {
    makew distclean &&
    makew VENDOR_OS=android VENDOR_CC="$CC" CC="$CC" CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" SOFLAGS="'$LDFLAGS'" &&
    install_bins hexdump &&
    install_incs hexdump.h &&
    install_libs libhexdump.so
}
