pkg_set summary "GNOME XML library"
pkg_set webpage "http://xmlsoft.org"
pkg_set git.url "https://gitlab.gnome.org/GNOME/libxml2.git"
pkg_set src.url "https://download.gnome.org/sources/libxml2/2.9/libxml2-2.9.13.tar.xz"
pkg_set src.sha "276130602d12fe484ecc03447ee5e759d0465558fbc9d6bd144e3745306ebf0e"
pkg_set license "MIT"
pkg_set dep.pkg "libiconv zlib"
pkg_set bsystem "configure"

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
