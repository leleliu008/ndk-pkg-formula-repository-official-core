pkg_set summary "hexdump library and cli"
pkg_set webpage "https://www.25thandclement.com/~william/projects/hexdump.c.html"
pkg_set git.url "https://github.com/wahern/hexdump.git"
pkg_set src.url "https://github.com/wahern/hexdump/archive/refs/tags/rel-20181215.tar.gz"
pkg_set src.sha "882975323317f595093125467d7b9604f78bded7ba1005f5fc17e33358cdb0fa"
pkg_set license "|README.md|https://raw.githubusercontent.com/wahern/hexdump/master/README.md"
pkg_set bsystem "make"
pkg_set binbstd 'yes'

prepare() {
    sed_in_place '/VENDOR_OS =/d' GNUmakefile
}

build() {
    if [ "$TARGET_INDEX" -ne 1 ] ; then
        run cd
        run rm -rf  "$PACKAGE_SRC_TOP_DIR"
        run mkdir   "$PACKAGE_SRC_TOP_DIR"
        run tar vxf "$PACKAGE_SRC_PATH" -C "$PACKAGE_SRC_TOP_DIR" --strip-components=1
        run cd "$PACKAGE_SRC_TOP_DIR"
    fi

    makew distclean &&
    makew VENDOR_OS=android VENDOR_CC="$CC" CC="$CC" CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" SOFLAGS="'$LDFLAGS'" &&
    install_bins hexdump &&
    install_incs hexdump.h &&
    install_libs libhexdump.so
}
