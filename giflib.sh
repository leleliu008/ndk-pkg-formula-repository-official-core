summary "Library and utilities for processing GIFs"
webpage "https://giflib.sourceforge.io"
src_url "https://downloads.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz"
src_sum "31da5562f44c5f15d63340a09a4fd62b48c45620cd302f77a6d9acf0077879bd"
require "make"

prepare() {
    sed_in_place 's#$(MAKE) -C doc#@mkdir -p doc \&\& ([ -f doc/giflib.1 ] || touch doc/giflib.1)#' Makefile
}

build() {
    make $MAKEFLAGS -C "$SOURCE_DIR" clean &&
    make $MAKEFLAGS -C "$SOURCE_DIR" install PREFIX="$ABI_INSTALL_DIR" CC="$CC" AR="$AR" CFLAGS="$CFLAGS"
}
