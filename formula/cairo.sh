pkg_set summary "Vector graphics library with cross-device output support"
pkg_set webpage "https://cairographics.org"
pkg_set git.url "https://gitlab.freedesktop.org/cairo/cairo.git"
pkg_set src.url "https://fossies.org/linux/misc/cairo-1.17.4.tar.xz"
pkg_set src.sha "74b24c1ed436bbe87499179a3b27c43f4143b8676d8ad237a6fa787401959705"
pkg_set dep.pkg "libxml2 libpng pixman lzo glib fontconfig"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "meson"
pkg_set license "LGPL-2.1-or-later||https://gitlab.freedesktop.org/cairo/cairo/-/raw/master/COPYING-LGPL-2.1 MPL-1.1||https://gitlab.freedesktop.org/cairo/cairo/-/raw/master/COPYING-MPL-1.1"

build() {
    mesonw \
        -Dtests=disabled \
        -Dpng=enabled \
        -Dzlib=enabled \
        -Dglib=enabled \
        -Dtee=disabled \
        -Dfreetype=enabled \
        -Dfontconfig=enabled
}
