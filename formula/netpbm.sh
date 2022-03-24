package set summary "Image manipulation"
package set webpage "http://netpbm.sourceforge.net/"
package set src.url "https://downloads.sourceforge.net/project/netpbm/super_stable/10.73.38/netpbm-10.73.38.tgz"
package set src.sum "0bbf8ef88413ed286e9b040685c44758857e86ccb266ccf9643ee29807e961de"
package set license "GPL-3.0-or-later"
package set dep.pkg "jasper libxml2 libtiff libpng libjpeg-turbo"
package set dep.cmd "flex"
package set bsystem "make"
package set binbstd "yes"
package set build_in_parallel no

prepare() {
    # https://stackoverflow.com/questions/9168150/implicit-declaration-using-std-c99
    sed_in_place 's|$(CFLAGS)|-D_DARWIN_C_SOURCE|' buildtools/Makefile &&
    sed_in_place '/^CFLAGS_SHLIB =/c CFLAGS_SHLIB = -fPIC' config.mk.in &&
    sed_in_place '/^STRIPFLAG =/c STRIPFLAG = ' config.mk.in &&
    sed_in_place '/^INSTALL =/c INSTALL = install' config.mk.in &&
    sed_in_place '/^LDSHLIB =/c LDSHLIB = --shared -o libnetpbm.so' config.mk.in &&
    run cp config.mk.in config.mk
}


build() {
    makew clean &&
    makew CC="$CC" AR="$AR" RANLIB="$RANLIB" CC_FOR_BUILD="$CC_FOR_BUILD" LD_FOR_BUILD="$CC_FOR_BUILD" CFLAGS_FOR_BUILD="'$CFLAGS_FOR_BUILD $CPPFLAGS_FOR_BUILD'" LDFLAGS_FOR_BUILD="'$LDFLAGS_FOR_BUILD'" TIFFLIB=-ltiff JPEGLIB=-ljpeg PNGLIB=-lpng ZLIB=-lz JASPERLIB=-ljasper JASPERHDR_DIR="$jasper_INCLUDE_DIR/jasper" &&
    makew package pkgdir=$TARGET_INSTALL_DIR SONAME=libnetpbm.so &&
    run mv "$TARGET_INSTALL_DIR/link/libnetpbm.a" "$TARGET_INSTALL_DIR/lib" &&
    run rm -rf "$TARGET_INSTALL_DIR/link" &&
    sed_in_place "s|@VERSION@|$PACKAGE_VERSION|"               "$TARGET_INSTALL_DIR/pkgconfig_template" &&
    sed_in_place "s|@LINKDIR@|$TARGET_INSTALL_DIR/lib|"        "$TARGET_INSTALL_DIR/pkgconfig_template" &&
    sed_in_place "s|@INCLUDEDIR@|$TARGET_INSTALL_DIR/include|" "$TARGET_INSTALL_DIR/pkgconfig_template" &&
    run install -d "$TARGET_INSTALL_DIR/lib/pkgconfig" &&
    run mv "$TARGET_INSTALL_DIR/pkgconfig_template"    "$TARGET_INSTALL_DIR/lib/pkgconfig/netpbm.pc" &&
    run rm "$TARGET_INSTALL_DIR/README" &&
    run rm "$TARGET_INSTALL_DIR/VERSION" &&
    run rm "$TARGET_INSTALL_DIR/pkginfo" &&
    run rm "$TARGET_INSTALL_DIR/config_template" &&
    run mv "$TARGET_INSTALL_DIR/man" "$TARGET_INSTALL_DIR/share"
}
