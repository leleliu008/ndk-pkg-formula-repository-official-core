pkg_set summary "GNOME XML library"
pkg_set webpage "http://xmlsoft.org"
pkg_set git.url "https://gitlab.gnome.org/GNOME/libxml2.git"
pkg_set src.url "https://download.gnome.org/sources/libxml2/2.9/libxml2-2.9.14.tar.xz"
pkg_set src.sha "60d74a257d1ccec0475e749cba2f21559e48139efba6ff28224357c7c798dfee"
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
