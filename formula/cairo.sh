package set summary "Vector graphics library with cross-device output support"
package set webpage "https://cairographics.org"
package set src.git "https://gitlab.freedesktop.org/cairo/cairo.git"
package set src.url "https://fossies.org/linux/misc/cairo-1.17.4.tar.xz"
package set src.sum "74b24c1ed436bbe87499179a3b27c43f4143b8676d8ad237a6fa787401959705"
package set license "LGPL-2.1"
package set dep.cmd "pkg-config"
package set dep.pkg "libxml2 libpng pixman lzo glib fontconfig"
package set bsystem "meson"

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
