summary="Library and utilities for processing GIFs"
homepage="https://giflib.sourceforge.io"
url="https://downloads.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz"
sha256="31da5562f44c5f15d63340a09a4fd62b48c45620cd302f77a6d9acf0077879bd"

prepare() {
    sed_in_place 's#$(MAKE) -C doc#@mkdir -p doc \&\& ([ -f doc/giflib.1 ] || touch doc/giflib.1)#' Makefile
    #sed_in_place 's#soname#install_name#g' Makefile
}

build() {
    $MAKE -C "$SOURCE_DIR" clean &&
    $MAKE -C "$SOURCE_DIR" install PREFIX="$ABI_INSTALL_DIR" CC="$CC" AR="$AR" CFLAGS="$CFLAGS"
}
