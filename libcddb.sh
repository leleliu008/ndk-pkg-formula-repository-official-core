summary="CDDB server access library"
homepage="https://libcddb.sourceforge.io"
url="https://downloads.sourceforge.net/project/libcddb/libcddb/1.3.2/libcddb-1.3.2.tar.bz2"
sha256="35ce0ee1741ea38def304ddfe84a958901413aa829698357f0bee5bb8f0a223b"
dependencies="libiconv"

prepare() {
    fetch_config_sub &&
    fetch_config_guess
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-libiconv-prefix="$libiconv_DIR_INSTALL_PREFIX" \
        --enable-static \
        --enable-shared \
        --disable-rpath \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    sed_in_place '/#define malloc rpl_malloc/d'   config.h &&
    sed_in_place '/#define realloc rpl_realloc/d' config.h &&
    make clean &&
    make install
}
