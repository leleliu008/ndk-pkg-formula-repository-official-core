summary "GNOME XML library"
webpage "http://xmlsoft.org"
src_url "ftp://xmlsoft.org/libxml2/libxml2-2.9.10.tar.gz"
src_sum "aafee193ffb8fe0c82d4afef6ef91972cbaf5feea100edc2f262750611b4be1f"
bsystem "configure"
depends "libiconv zlib"

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
