package set summary "Framework for layout and rendering of i18n text"
package set webpage "https://www.pango.org"
package set src.git "https://gitlab.gnome.org/GNOME/pango.git"
package set src.url "https://download.gnome.org/sources/pango/1.48/pango-1.48.10.tar.xz"
package set src.sum "21e1f5798bcdfda75eabc4280514b0896ab56f656d4e7e66030b9a2535ecdc98"
package set license "LGPL-2.0-or-later"
package set dep.cmd "pkg-config glib-mkenums"
package set dep.pkg "cairo fribidi harfbuzz"
package set bsystem "meson"

build() {
    mesonw \
        -Dgtk_doc=false \
        -Dinstall-tests=false \
        -Dcairo=enabled \
        -Dfreetype=enabled \
        -Dfontconfig=enabled
}
