summary="BSD-style licensed readline alternative"
homepage="https://thrysoee.dk/editline"
url="https://thrysoee.dk/editline/libedit-20191231-3.1.tar.gz"
sha256="dbb82cb7e116a5f8025d35ef5b4f7d4a3cdd0a3909a146a39112095a2d229071"
dependencies="ncurses"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --enable-static \
        --enable-shared \
        --disable-examples \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS -I$ncurses_DIR_INCLUDE/ncurses -D__STDC_ISO_10646__ -DNBBY=1" \
        LDFLAGS="$LDFLAGS -L$ncurses_DIR_LIB/ncurses" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
