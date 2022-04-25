pkg_set summary "Library and utilities for processing GIFs"
pkg_set webpage "https://giflib.sourceforge.io"
pkg_set src.url "https://downloads.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz"
pkg_set src.sha "31da5562f44c5f15d63340a09a4fd62b48c45620cd302f77a6d9acf0077879bd"
pkg_set license ";COPYING;https://sourceforge.net/p/giflib/code/ci/master/tree/COPYING"
pkg_set bsystem "make"
pkg_set binbstd "yes"
pkg_set build_in_parallel no

prepare() {
    sed_in_place 's#$(MAKE) -C doc#@mkdir -p doc \&\& ([ -f doc/giflib.1 ] || touch doc/giflib.1)#' Makefile
}

build() {
    makew clean &&
    makew install PREFIX="$TARGET_INSTALL_DIR" CC="$CC" AR="$AR" CFLAGS="'$CFLAGS'"
}
