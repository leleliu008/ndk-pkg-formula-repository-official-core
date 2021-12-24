package set summary "Image manipulation"
package set webpage "http://netpbm.sourceforge.net/"
package set src.url "https://downloads.sourceforge.net/project/netpbm/super_stable/10.73.37/netpbm-10.73.37.tgz"
package set src.sum "e8826b5bc9a283220a60e8a24c6f5a854f5825c15e4f5171e77b6884f191fafd"
package set license "GPL-3.0-or-later"
package set dep.pkg "jasper libxml2 libtiff libpng libjpeg-turbo"
package set dep.cmd "flex"
package set bsystem "make"

prepare() {
    # https://stackoverflow.com/questions/9168150/implicit-declaration-using-std-c99
    sed_in_place 's|$(CFLAGS)|-D_XOPEN_SOURCE=500|' buildtools/Makefile &&
    sed_in_place '/^CFLAGS_SHLIB =/c CFLAGS_SHLIB = -fPIC' config.mk.in &&
    sed_in_place '/^STRIPFLAG =/c STRIPFLAG = ' config.mk.in &&
    sed_in_place '/^INSTALL =/c INSTALL = install' config.mk.in &&
    sed_in_place '/^LDSHLIB =/c LDSHLIB = --shared -o libnetpbm.so' config.mk.in &&
    run cp config.mk.in config.mk
}


build() {
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" CC="$CC" AR="$AR" RANLIB="$RANLIB" CC_FOR_BUILD="$CC_FOR_BUILD" LD_FOR_BUILD="$CC_FOR_BUILD" CFLAGS_FOR_BUILD="'$CFLAGS_FOR_BUILD $CPPFLAGS_FOR_BUILD'" LDFLAGS_FOR_BUILD="'$LDFLAGS_FOR_BUILD'" TIFFLIB=-ltiff JPEGLIB=-ljpeg PNGLIB=-lpng ZLIB=-lz JASPERLIB=-ljasper JASPERHDR_DIR="$jasper_INCLUDE_DIR/jasper" &&
    makew -C "$SOURCE_DIR" package pkgdir=$ABI_INSTALL_DIR SONAME=libnetpbm.so &&
    run mv "$ABI_INSTALL_DIR/link/libnetpbm.a" "$ABI_LIBRARY_DIR" &&
    run rm -rf "$ABI_INSTALL_DIR/link" &&
    sed_in_place "s|@VERSION@|$PACKAGE_VERSION|"    "$ABI_INSTALL_DIR/pkgconfig_template" &&
    sed_in_place "s|@LINKDIR@|$ABI_LIBRARY_DIR|"    "$ABI_INSTALL_DIR/pkgconfig_template" &&
    sed_in_place "s|@INCLUDEDIR@|$ABI_INCLUDE_DIR|" "$ABI_INSTALL_DIR/pkgconfig_template" &&
    run install -d "$ABI_LIBRARY_DIR/pkgconfig" &&
    run mv "$ABI_INSTALL_DIR/pkgconfig_template"    "$ABI_LIBRARY_DIR/pkgconfig/netpbm.pc" &&
    run rm "$ABI_INSTALL_DIR/README" &&
    run rm "$ABI_INSTALL_DIR/VERSION" &&
    run rm "$ABI_INSTALL_DIR/pkginfo" &&
    run rm "$ABI_INSTALL_DIR/config_template" &&
    run mv "$ABI_INSTALL_DIR/man" "$ABI_INSTALL_DIR/share"
}
