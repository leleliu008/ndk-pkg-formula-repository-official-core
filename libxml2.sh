summary="GNOME XML library"
homepage="http://xmlsoft.org"
url="ftp://xmlsoft.org/libxml2/libxml2-2.9.10.tar.gz"
sha256="aafee193ffb8fe0c82d4afef6ef91972cbaf5feea100edc2f262750611b4be1f"
dependencies="libiconv"

prepare() {
    if grep 'Libs.private' libxml-2.0.pc.in > /dev/null ; then
        LIBS_PRIVATE_CONTENT=$(awk -F: '/Libs.private/{print $2}' libxml-2.0.pc.in | sed 's/@/\\@/g') &&
        sed_in_place "s/-lxml2/-lxml2$LIBS_PRIVATE_CONTENT/" libxml-2.0.pc.in &&
        sed_in_place '/Libs.private/d' libxml-2.0.pc.in
    fi
}

build() {
    configure \
        --with-iconv="$libiconv_INSTALL_DIR" \
        --with-zlib \
        --without-lzma \
        --without-python \
        --without-readline \
        --without-debug \
        --without-coverage \
        --enable-ipv6
}
