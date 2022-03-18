package set summary "GNOME XML library"
package set webpage "http://xmlsoft.org"
package set git.url "https://gitlab.gnome.org/GNOME/libxml2.git"
package set src.url "https://download.gnome.org/sources/libxml2/2.9/libxml2-2.9.13.tar.xz"
package set src.sum "276130602d12fe484ecc03447ee5e759d0465558fbc9d6bd144e3745306ebf0e"
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
