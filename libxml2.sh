summary  "GNOME XML library"
homepage "http://xmlsoft.org"
url      "ftp://xmlsoft.org/libxml2/libxml2-2.9.10.tar.gz"
sha256   "aafee193ffb8fe0c82d4afef6ef91972cbaf5feea100edc2f262750611b4be1f"
dependencies "libiconv"

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
