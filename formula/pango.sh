package set summary "Framework for layout and rendering of i18n text"
package set webpage "https://www.pango.org"
package set git.url "https://gitlab.gnome.org/GNOME/pango.git"
package set src.url "https://download.gnome.org/sources/pango/1.50/pango-1.50.6.tar.xz"
package set src.sum "a998bcf36881c3ac20495d40bceb304f4eaa9175bd2967c85656434cbdafe86a"
package set license "LGPL-2.0-or-later;COPYING;https://gitlab.gnome.org/GNOME/pango/-/raw/main/COPYING"
package set dep.pkg "cairo fribidi harfbuzz"
package set dep.cmd "pkg-config glib-mkenums"
package set bsystem "meson"

build() {
    mesonw \
        -Dgtk_doc=false \
        -Dinstall-tests=false \
        -Dcairo=enabled \
        -Dfreetype=enabled \
        -Dfontconfig=enabled
}
