package set summary "Library and utilities for processing GIFs"
package set webpage "https://giflib.sourceforge.io"
package set src.url "https://downloads.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz"
package set src.sum "31da5562f44c5f15d63340a09a4fd62b48c45620cd302f77a6d9acf0077879bd"
package set bsystem "make"
package set binbstd "yes"
package set build_in_parallel no

prepare() {
    sed_in_place 's#$(MAKE) -C doc#@mkdir -p doc \&\& ([ -f doc/giflib.1 ] || touch doc/giflib.1)#' Makefile
}

build() {
    makew clean &&
    makew install PREFIX="$TARGET_INSTALL_DIR" CC="$CC" AR="$AR" CFLAGS="'$CFLAGS'"
}
