package set summary "GNOME XML library"
package set webpage "http://xmlsoft.org"
package set git.url "https://gitlab.gnome.org/GNOME/libxml2.git"
package set src.url "ftp://xmlsoft.org/libxml2/libxml2-2.9.12.tar.gz"
package set src.sum "c8d6681e38c56f172892c85ddc0852e1fd4b53b4209e7f4ebf17f7e2eae71d92"
package set dep.pkg "libiconv zlib"
package set bsystem "configure"

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
